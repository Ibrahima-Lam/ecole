
import { fetchJson } from "../src/fetch.js";

const add=document.getElementById('add');
const dialog=document.getElementById('dialog');

add?.addEventListener('click',function () {
   let dlg = new ProfesseurMatiereDialog(dialog);
   dlg.show();
})

const edit=document.querySelectorAll('.edit');
edit.forEach(function (element) {
    element?.addEventListener('click', function (e) {
        let matriculeProfesseur = element.dataset.matricule;
        let codeMatiere = element.dataset.code;
        let dlg = new ProfesseurMatiereDialog(dialog,{
            matriculeProfesseur:matriculeProfesseur,
            codeMatiere:codeMatiere
        });
        dlg.show();
    });
})

const deleteBtn=document.querySelectorAll('.delete');
deleteBtn.forEach(function (element) {
    element?.addEventListener('click', function (e) {
        let matriculeProfesseur = element.dataset.matricule;
        let codeMatiere = element.dataset.code;
        ProfesseurMatiereDialog.onDelete(matriculeProfesseur,codeMatiere);
    });
})



class ProfesseurMatiereDialog{
    constructor(dialog,params={}){
        this.dialog=dialog;
        this.edit=false;
        this.form=this.dialog.querySelector('form');
        this.params={
            matriculeProfesseur:null,
            codeMatiere:null,
            ...params
        }
        if(this.params.matriculeProfesseur && this.params.codeMatiere){
            this.edit=true;
        }
        if(!this.edit){
            this.form?.reset();
        }
        this.form?.addEventListener('submit', (e) => this.onSubmit(e));
        this.dialog.querySelector('#close')?.addEventListener('click', () => this.close());
    }
    get url(){
        return this.edit ? `?p=api/professeurMatiere/update/${this.params.matriculeProfesseur}/${this.params.codeMatiere}` : '?p=api/professeurMatiere/insert';
    }

    show(){
        if(this.edit){
            this.form.querySelector('#matricule').value=this.params.matriculeProfesseur;
            this.form.querySelector('#codeMatiere').value=this.params.codeMatiere;
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
    static onDelete(matriculeProfesseur,codeMatiere){
        if(!confirm('Voulez-vous vraiment supprimer ce professeur matiere ?')) return;
        fetchJson(`?p=api/professeurMatiere/delete/${matriculeProfesseur}/${codeMatiere}`)
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
