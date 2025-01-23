import { fetchJson, fetchText } from '../src/fetch.js';

export default class FormModule {
    constructor(parent, button, params = {}) {
        this.params = {
            idInscrit: null,
            matricule: null,
            classe: null,
            ...params
        }
        this.parent = parent;
        this.form = parent.querySelector('form');
        this.button = button;
        this.dialog = null;
        this.button?.addEventListener('click',async (e) =>{
           await this.create();
            this.show();
        });
       
    }
    async formHtml() {
        let url = `?p=api/inscrit/form`;
        if (this.params.idInscrit) url += `/${this.params.idInscrit}`;
        if (this.params.matricule) url += `&matricule=${this.params.matricule}`
        if (this.params.classe) url += `&classe=${this.params.classe}`
        let form = await fetchText(url);
        return `
      <dialog id="dialog" class="dialog">
      <div class="dialod-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
      <div class="dialog-body">${form}</div>
      <div class="dialog-foot">
          <button class="btn btn-danger" id="close">Fermer</button>
      </div>
      </dialog>
    `;
    }

    show() {
        this.dialog?.showModal();
    }
    close() {
        this.dialog?.close();
    }

  async  create() {

       await this.formHtml().then(html => {
            this.parent.innerHTML = html;
            this.dialog = this.parent.querySelector('dialog');
            this.form = this.dialog.querySelector('form')
            this.form.addEventListener('submit', (e) => this.onSubmit(e));
            this.form.querySelector('#codeSalleClasse').addEventListener('change', (e) => this.onChangeClasses(e));
            this.form.querySelector('#codeSalleClasse').dispatchEvent(new Event('change'));
            this.dialog.querySelector('#close').addEventListener('click', () => this.dialog.close());

        })
    }
    async onChangeClasses(e) {
        //if (this.form.edit.value) return;
        this.params.classe = e.target.value;
        fetchJson('?p=api/inscrit/last/' + e.target.value).then(data => {
            if (data?.idInscrit ?? false) this.form.querySelector('#numeroInscrit').value = (data.numeroInscrit ?? 0) + 1;
            else this.form.querySelector('#numeroInscrit').value = 1;
        }).catch(e => console.log(e))

    }

    onSubmit(e) {
        e.preventDefault();
        const data = new FormData(e.target);
        const dataString = (new URLSearchParams(data)).toString();
        console.log(dataString)
        let url = e.target.edit.value ? `?p=api/inscrit/update&${dataString}` : `?p=api/inscrit/insert&${dataString}`;
        fetchJson(url).then(data => {
            this.close();
            if (data?.status) {
                alert(data?.message ?? 'Enregistrement effectué');
                window.location.reload();
            } else {
                alert(data?.message ?? 'Erreur lors de l\'enregistrement');
            }
        });
    }

    static delete(id) {
        if (confirm('Voulez-vous vraiment supprimer cette inscription ?')) {
            fetchJson(`?p=api/inscrit/delete/${id}`).then(data => {
                if (data?.status) {
                    alert(data?.message ?? 'inscription supprimée');
                    window.location.reload();
                } else {
                    alert(data?.message ?? 'Erreur lors de la suppression');
                }
            });
        }
    }
}
export class FormModuleArray extends FormModule {
    constructor(parent, listButton, params = {}) {
        super(parent, null, params);
        this.listButton = listButton;
        this.dialog = null;
        for (let button of this.listButton) {
            button.addEventListener('click', (e) => {
                let matricule = button.dataset.matricule;
                this.creates(matricule);
            });
        }

    }

    async creates(matricule) {
        let url = `?p=api/inscrit/form`;
        if (this.params.idInscrit) url += `/${this.params.idInscrit}`;
        if (matricule) url += `&matricule=${matricule}`
        if (this.params.classe) url += `&classe=${this.params.classe}`
        let form = await fetchText(url);
        let html = `
      <dialog id="dialog" class="dialog">
      <div class="dialod-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
      <div class="dialog-body">${form}</div>
      <div class="dialog-foot">
          <button class="btn btn-danger" id="close">Fermer</button>
      </div>
      </dialog>
    `;
            this.parent.innerHTML = html;
            this.dialog = this.parent.querySelector('dialog');
            this.form = this.dialog.querySelector('form')
            this.form.addEventListener('submit', (e) => this.onSubmit(e));
            this.form.querySelector('#codeSalleClasse').addEventListener('change', (e) => this.onChangeClasses(e));
            this.form.querySelector('#codeSalleClasse').dispatchEvent(new Event('change'));
            this.dialog.querySelector('#close').addEventListener('click', () => this.dialog.close());
       this.show();
        
    }
    

   
}