import {fetchJson,fetchText} from '../src/fetch.js'
export class NoteFormDialog {
    constructor(dialog,params={}) {
        this.dialog = dialog;
        this.form = null;
        this.params = {
            idNote: null,
            codeExamen: null,
            ...params
        };
        this.init();
    }

  async  init() {
        await this.formHtml().then(html => {
            this.dialog.querySelector('.dialog-body').innerHTML = html;
            this.form = this.dialog.querySelector('form')
            this.form.addEventListener('submit', (e) => this.onSubmit(e));
         })
    }

    async formHtml() {
        let url = `?p=api/note/form`;
        if (this.params.idNote) url += `/${this.params.idNote}`;
        return await fetchText(url).then(html => html);
    }

    onSubmit(e) {
        e.preventDefault();
        const data = new FormData(e.target);
        const dataString = (new URLSearchParams(data)).toString();
        let url = e.target.edit.value ? `?p=api/note/update/${this.params.codeExamen}&${dataString}` : `?p=api/note/insert&${dataString}`;
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