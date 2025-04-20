import {fetchJson,fetchText} from '../src/fetch.js'

export default class FormExamen {
    constructor(dialog,params={}) {
        this.dialog = dialog;
        this.form = null;
        this.params = {
            codeExamen: null,
            codeMatiere: null,
            codeClasse: null,
            ...params
        };
        this.init();
    }

  async  init() {
        await this.formHtml().then(html => {
            this.dialog.querySelector('.dialog-body').innerHTML = html;
            this.form = this.dialog.querySelector('form')
            this.form?.addEventListener('submit', (e) => this.onSubmit(e));
         })
    }

    async formHtml() {
        let url = `?p=api/examen/form`;
        if (this.params.codeExamen) url += `/${this.params.codeExamen}`;
        if (this.params.codeMatiere) url += `&matiere=${this.params.codeMatiere}`;
        if (this.params.codeClasse) url += `&classe=${this.params.codeClasse}`;
        return await fetchText(url).then(html => html);
    }

    onSubmit(e) {
        e.preventDefault();
        const data = new FormData(e.target);
        const dataString = (new URLSearchParams(data)).toString();
        let url = e.target.edit.value ? `?p=api/examen/update/${this.params.codeExamen}&${dataString}` : `?p=api/examen/insert&${dataString}`;
        fetchJson(url).then(data => {
            this.dialog.close();
            if (data?.status) {
                alert(data?.message ?? 'Enregistrement effectué');
                window.location.reload();
            } else {
                alert(data?.message ?? 'Erreur lors de l\'enregistrement');
            }
        }); 
    
    }
   static onDelete(id) {
        if (confirm('Voulez-vous vraiment supprimer cet examen ?')) {
            fetchJson(`?p=api/examen/delete/${id}`).then(data => {
                if (data?.status) {
                    alert(data?.message ?? 'Examen supprimée');
                    window.location.reload();
                } else {
                    alert(data?.message ?? 'Erreur lors de la suppression');
                }
            });
        }
    }
}


