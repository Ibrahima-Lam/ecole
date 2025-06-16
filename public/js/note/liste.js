
import {fetchJson,fetchText} from '../src/fetch.js'
import {NoteFormDialog} from './note_module.js'
let data = [];
const dialog=document.getElementById('dialog');
const add=document.getElementById('add');
const classe=document.getElementById('classe');
const noteTable = document.getElementById('note-table');
const tbody = noteTable.querySelector('tbody');
const matiere=document.getElementById('matiere');
const evaluation=document.getElementById('evaluation');
const matricule=document.getElementById('matricule');
const statut=document.getElementById('statut');
const params={
    classe:classe.value,
    matiere:matiere.value,
    evaluation:evaluation.value,
    matricule:matricule.value,
    statut:statut.value
}

window?.addEventListener('load',async function () {
    await getData()
    renderTable()
})

classe?.addEventListener('change',function () {
    params.classe=this.value
    renderTable()
})
matiere?.addEventListener('change',function () {
    params.matiere=this.value
    renderTable()
})
evaluation?.addEventListener('change',function () {
    params.evaluation=this.value
    renderTable()
})
matricule?.addEventListener('change',function () {
    params.matricule=this.value
    renderTable()
})

statut?.addEventListener('change',function () {
    params.statut=this.value
    renderTable()
})

matiere?.addEventListener('change',function () {
    params.matiere=this.value
    renderTable()
})

evaluation?.addEventListener('change',function () {
    params.evaluation=this.value
    renderTable()
})

matricule?.addEventListener('input',function () {
    params.matricule=this.value
    renderTable()
})

async function getData() {
    return await fetchJson(`?p=api/note/liste/true`).then(res => data = res);
}

async function renderTable(){
   /*  let elements = data;
  
   if(params.classe)elements=elements.filter(note=>note.codeSalleClasse===params.classe)
   if(params.matiere)elements=elements.filter(note=>note.codeMatiere===params.matiere)
   if(params.evaluation)elements=elements.filter(note=>note.codeEvaluation===params.evaluation)
   if(params.matricule)elements=elements.filter(note=>note.matricule.toLowerCase().includes(params.matricule.toLowerCase())||
   note.nni.toLowerCase().includes(params.matricule.toLowerCase())||
   note.codeExamen.toLowerCase().includes(params.matricule.toLowerCase()))
   tbody.innerHTML = elements.map(note => `
        <tr>
            <td>${note.matricule}</td>
            <td>${note.nom}</td>
            <td>${note.codeExamen}</td>
            <td>${note.note}</td>
            <td>${note.dateExamen}</td>
            <td>${note.createdAt}</td>
            <td>${note.updatedAt}</td>
            <td>
                
                ${_admin ? `<div class="center">
                 <div class="edit" data-id="${note.idNote}">
                     <i class="fa fa-edit text-primary"></i>
                 </div>
                 <div class="delete" data-id="${note.idNote}">
                     <i class="fa fa-trash text-danger"></i>
                 </div>
               </div>` : ''}
            </td>
        </tr>
    `).join(''); */
    let url=`?p=api/note/htmlListe/true`;
    if(params.classe)url+=`&classe=${params.classe}`;
    if(params.matiere)url+=`&matiere=${params.matiere}`;
    if(params.evaluation)url+=`&evaluation=${params.evaluation}`;
    if(params.matricule)url+=`&search=${params.matricule}`;
    if(params.statut)url+=`&statut=${params.statut}`;
   await fetchText(url).then(res => tbody.innerHTML = res);

    tbody.querySelectorAll(".edit").forEach(function (element) {
       
        element?.addEventListener("click", function (e) {
            let idNote = element.dataset.id;
            new NoteFormDialog(dialog,{
                idNote:idNote
            });
            dialog.showModal();
        });
    })
    tbody.querySelectorAll(".delete").forEach(function (element) {
        element?.addEventListener("click", function (e) {
            let idNote = element.dataset.id;
            NoteFormDialog.onDelete(idNote);
        });
    })
}

add?.addEventListener('click',function (e) {
    new NoteFormDialog(dialog);
    dialog.showModal();
});

const close=document.getElementById('close');
close?.addEventListener('click',function () {
    dialog.close();
})

document.querySelectorAll(".edit").forEach(function (element) {
    element?.addEventListener("click", function (e) {
        let idNote = element.dataset.id;
        new NoteFormDialog(dialog,{
            idNote:idNote
        });
        dialog.showModal();
    });
});

document.querySelectorAll(".delete").forEach(function (element) {
    element?.addEventListener("click", function (e) {
        let idNote = element.dataset.id;
        NoteFormDialog.onDelete(idNote);
    });
});
