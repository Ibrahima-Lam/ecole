
import {fetchJson,fetchText} from '../src/fetch.js'
import FormExamen from './form_examen_module.js'
import {NoteFormDialog} from '../note/note_module.js'
let data=[]
const dialog=document.getElementById('dialog')
const noteDialog=document.getElementById('noteDialog')

let params={
    codeClasse: null,
    codeMatiere: null,
    codeEvaluation: null,
    date: null,
    statut: null,
    codeExamen: null
}

const table=document.getElementById('table')
const tbody=table.querySelector('tbody')

async function getData() {
    await fetchJson('?p=api/examen/liste').then(res => {
        data=res
    })
   
}

window?.addEventListener('load',async function () {
    await getData()
    renderTable()
})

const close=document.getElementById('close');
close?.addEventListener('click',function () {
    dialog.close();
})

const classe=document.getElementById('classe');
const matiere=document.getElementById('matiere');
const evaluation=document.getElementById('evaluation');
const date=document.getElementById('date');
const statut=document.getElementById('statut');
const codeExamen=document.getElementById('examen');

classe?.addEventListener('change',async function () {
    params.codeClasse=this.value
    await getData()
    renderTable()
})

matiere?.addEventListener('change',async function () {
    params.codeMatiere=this.value
    await getData()
    renderTable()
})

evaluation?.addEventListener('change',async function () {
    params.codeEvaluation=this.value
    await getData()
    renderTable()
})

date?.addEventListener('change',async function () {
    params.date=this.value
    await getData()
    renderTable()
})

statut?.addEventListener('change',async function () {
    params.statut=this.value
    await getData()
    renderTable()
})

codeExamen?.addEventListener('input',async function () {
    params.codeExamen=this.value
    await getData()
    renderTable()
})

async function renderTable() {
   /*  let elements=data
    if (params.codeClasse) elements=elements.filter(examen => examen.codeSalleClasse===params.codeClasse)
    if (params.codeMatiere) elements=elements.filter(examen => examen.codeMatiere===params.codeMatiere)
    if (params.codeEvaluation) elements=elements.filter(examen => examen.codeEvaluation===params.codeEvaluation)
    tbody.innerHTML=''
    elements.forEach(examen => {
        const row=document.createElement('tr')
        row.innerHTML=`
            <td>${examen.codeExamen}</td>
            <td>${examen.pseudoSalleClasse}</td>
            <td>${examen.codeMatiere}</td>
            <td>${examen.nomEvaluation}</td>
            <td>${examen.dateExamen}</td>
            <td>
                <div class="center">
                    <a class="show" title="Voir les notes" href="?p=note/examen/${examen.codeExamen}"><i class="bi-list"></i></a>
                    ${_admin?`
                        <a class="show" title="importer les notes" href="?p=note/formulaire/${examen.codeExamen}"><i class="bi-file-earmark"></i></a>
                    <a class="addnote" title="Ajouter une note" data-code="${examen.codeExamen}"><i class="fa fa-plus text-success"></i></a>
                    <a title="Ajouter plusieurs notes" href="?p=note/addAll/${examen.codeExamen}"><i class="fa fa-layer-group text-success"></i></a>
                    <a class="edit" title="Editer" data-code="${examen.codeExamen}"><i class="fa fa-edit text-primary"></i></a>
                    <a class="delete" title="Supprimer" data-code="${examen.codeExamen}"><i class="fa fa-trash text-danger"></i></a>`:''}
                </div>
            </td>
        `
        tbody.appendChild(row)
    }) */


    let url=`?p=api/examen/htmlListe/true`;
    if(params.date)url+=`&date=${params.date}`; 
    if(params.codeClasse)url+=`&classe=${params.codeClasse}`;
    if(params.codeMatiere)url+=`&matiere=${params.codeMatiere}`;
    if(params.codeEvaluation)url+=`&evaluation=${params.codeEvaluation}`;
    if(params.codeExamen)url+=`&search=${params.codeExamen}`;
    if(params.statut)url+=`&statut=${params.statut}`;
    
   await fetchText(url).then(res => tbody.innerHTML = res);
    document.querySelectorAll(".edit").forEach(function (element) {
        element?.addEventListener("click", function (e) {
            let codeExamen = element.dataset.code;
            new FormExamen(dialog,{
                codeExamen:codeExamen
            });
            dialog.showModal();
        });
    });
    document.querySelectorAll(".delete").forEach(function (element) {
        element?.addEventListener("click", function (e) {
            let codeExamen = element.dataset.code;
            FormExamen.onDelete(codeExamen);
        });
    });
    document.querySelectorAll(".addnote").forEach(function (element) {
        element?.addEventListener("click", function (e) {
            let codeExamen = element.dataset.code;
            new NoteFormDialog(noteDialog,{
                codeExamen:codeExamen
            });
            noteDialog.showModal();
        });
    });
}

const closeNote=document.getElementById('closeNote');
closeNote?.addEventListener('click',function () {
    noteDialog.close();
})

const add=document.getElementById('add');
add?.addEventListener('click',function () {
    new FormExamen(dialog);
    dialog.showModal();
})





