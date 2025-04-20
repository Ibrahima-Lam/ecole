import {fetchJson,fetchText} from '../src/fetch.js'
export class NoteFormDialog {
    constructor(dialog,params={}) {
        this.dialog = dialog;
        this.form = null;
        this.params = {
            idNote: null,
            codeExamen: null,
            matricule: null,
            idInscrit: null,
            codeSalleClasse: null,
            codeMatiere: null,
            ...params
        };
        this.init();
    }

    show() {
        this.dialog.showModal();
    }

    close() {
        this.dialog.close();
    }

  async  init() {
        await this.formHtml().then(html => {
            this.dialog.querySelector('.dialog-body').innerHTML = html;
            this.form = this.dialog.querySelector('form')
            this.form?.addEventListener('submit', (e) => this.onSubmit(e));
         })
    }

    async formHtml() {
        let url = `?p=api/note/form`;
        if (this.params.idNote) url += `/${this.params.idNote}`;
        if (this.params.idInscrit) url += `&idInscrit=${this.params.idInscrit}`;
        if (this.params.matricule) url += `&matricule=${this.params.matricule}`;
        if (this.params.codeSalleClasse) url += `&codeSalleClasse=${this.params.codeSalleClasse}`;
        if (this.params.codeMatiere) url += `&codeMatiere=${this.params.codeMatiere}`;
        if (this.params.codeExamen) url += `&codeExamen=${this.params.codeExamen}`;
        return await fetchText(url).then(html => html);
    }

    onSubmit(e) {
        e.preventDefault();
        const data = new FormData(e.target);
        const dataString = (new URLSearchParams(data)).toString();
        let url = e.target.edit.value ? `?p=api/note/update/${this.params.idNote}&${dataString}` : `?p=api/note/insert&${dataString}`;
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
        if (confirm('Voulez-vous vraiment supprimer cette note ?')) {
            fetchJson(`?p=api/note/delete/${id}`).then(data => {
                if (data?.status) {
                    alert(data?.message ?? 'Note supprimée');
                    window.location.reload();
                } else {
                    alert(data?.message ?? 'Erreur lors de la suppression');
                }
            });
        }
    }
}