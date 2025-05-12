
import { fetchJson } from "../src/fetch.js";

const add=document.getElementById('add');
const dialog=document.getElementById('dialog');

add?.addEventListener('click',function () {
   let dlg = new EnseignantDialog(dialog);
   dlg.show();
})

const edit=document.querySelectorAll('.edit');
edit.forEach(function (element) {
    element?.addEventListener('click', function (e) {
        let idEnseigner = element.dataset.id;
        let dlg = new EnseignantDialog(dialog,{
            idEnseigner:idEnseigner
        });
        dlg.show();
    });
})

const deleteBtn=document.querySelectorAll('.delete');
deleteBtn.forEach(function (element) {
    element?.addEventListener('click', function (e) {
        let idEnseigner = element.dataset.id;
        EnseignantDialog.onDelete(idEnseigner);
    });
})



class EnseignantDialog{
    constructor(dialog,params={}){
        this.dialog=dialog;
        this.edit=false;
        this.form=this.dialog.querySelector('form');
        this.params={
            idEnseigner:null,
           
            ...params
        }
        if(this.params.idEnseigner){
            this.edit=true;
        }
        if(!this.edit){
            this.form?.reset();
        }
        this.form?.addEventListener('submit', (e) => this.onSubmit(e));
        this.dialog.querySelector('#close')?.addEventListener('click', () => this.close());
    }
    get url(){
        return this.edit ? `?p=api/enseigner/update/${this.params.idEnseigner}` : '?p=api/enseigner/insert';
    }

   async show(){
        if(this.edit){
        await   fetchJson(`?p=api/enseigner/one/${this.params.idEnseigner}`).then(res => {
            if(res?.idEnseigner??false){
                this.form.querySelector('#matricule').value=res?.matriculeProfesseur;
                this.form.querySelector('#codeMatiere').value=res?.codeMatiere;
                this.form.querySelector('#codeSalleClasse').value=res?.codeSalleClasse;
            }
           })
        }
        this.dialog.showModal();
    }
    close(){
        this.dialog.close();
    }
    async onSubmit(e){
        e.preventDefault();
        const data = new FormData(this.form);
        const params = Object.fromEntries(data.entries());
        const dataString = (new URLSearchParams(params)).toString();
        const res = await fetchJson(this.url + '&' + dataString);
        if(res?.status){
            alert(res?.message ?? 'Enregistrement effectué');
            this.close();
            window.location.reload();
        }else{
            alert(res?.message ?? 'Erreur lors de l\'enregistrement');
        }
    }
    static onDelete(idEnseigner){
        if(!confirm('Voulez-vous vraiment supprimer ce professeur matiere ?')) return;
        fetchJson(`?p=api/enseigner/delete/${idEnseigner}`)
            .then(res => {
                if(res?.status){
                    alert(res?.message ?? 'Suppression effectuée');
                    window.location.reload();
                }else{
                    alert(res?.message ?? 'Erreur lors de la suppression');
                }
            })
            .catch(err => {
                alert(err?.message ?? 'Erreur lors de la suppression');
            })
    }
}
