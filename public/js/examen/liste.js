
import {fetchJson} from '../src/fetch.js'
import FormExamen from './form_examen_module.js'
import {NoteFormDialog} from '../note/note_module.js'
let data=[]
const dialog=document.getElementById('dialog')
const noteDialog=document.getElementById('noteDialog')

let params={
    codeClasse: null,
    codeMatiere: null,
    codeEvaluation: null
}

const table=document.getElementById('table')
const tbody=table.querySelector('tbody')

async function getData() {
    await fetchJson('?p=api/examen/liste').then(res => {
        data=res
    })
   
}

window.addEventListener('load',async function () {
    await getData()
    renderTable()
})

const close=document.getElementById('close');
close.addEventListener('click',function () {
    dialog.close();
})

const classe=document.getElementById('classe');
const matiere=document.getElementById('matiere');
const evaluation=document.getElementById('evaluation');

classe.addEventListener('change',async function () {
    params.codeClasse=this.value
    await getData()
    renderTable()
})

matiere.addEventListener('change',async function () {
    params.codeMatiere=this.value
    await getData()
    renderTable()
})

evaluation.addEventListener('change',async function () {
    params.codeEvaluation=this.value
    await getData()
    renderTable()
})

function renderTable() {
    let elements=data
    if (params.codeClasse) elements=elements.filter(examen => examen.codeSalleClasse===params.codeClasse)
    if (params.codeMatiere) elements=elements.filter(examen => examen.codeMatiere===params.codeMatiere)
    if (params.codeEvaluation) elements=elements.filter(examen => examen.codeEvaluation===params.codeEvaluation)
    tbody.innerHTML=''
    elements.forEach(examen => {
        const row=document.createElement('tr')
        row.innerHTML=`
            <td>${examen.codeExamen}</td>
            <td>${examen.codeClasse}${examen.indiceSalleClasse}</td>
            <td>${examen.codeMatiere}</td>
            <td>${examen.nomEvaluation}</td>
            <td>${examen.dateExamen}</td>
            <td>
                <div class="center">
                    <a class="show" title="Voir les notes" href="?p=note/examen/${examen.codeExamen}"><i class="bi-list"></i></a>
                    <a class="show" title="importer les notes" href="?p=note/formulaire/${examen.codeExamen}"><i class="bi-file-earmark"></i></a>
                    <a class="addnote" title="Ajouter une note" data-code="${examen.codeExamen}"><i class="bi-plus text-success"></i></a>
                    <a class="edit" title="Editer" data-code="${examen.codeExamen}"><i class="bi-pencil text-primary"></i></a>
                    <a class="delete" title="Supprimer" data-code="${examen.codeExamen}"><i class="bi-trash text-danger"></i></a>
                </div>
            </td>
        `
        tbody.appendChild(row)
    })
    document.querySelectorAll(".edit").forEach(function (element) {
        element.addEventListener("click", function (e) {
            let codeExamen = element.dataset.code;
            new FormExamen(dialog,{
                codeExamen:codeExamen
            });
            dialog.showModal();
        });
    });
    document.querySelectorAll(".delete").forEach(function (element) {
        element.addEventListener("click", function (e) {
            let codeExamen = element.dataset.code;
            FormExamen.onDelete(codeExamen);
        });
    });
    document.querySelectorAll(".addnote").forEach(function (element) {
        element.addEventListener("click", function (e) {
            let codeExamen = element.dataset.code;
            new NoteFormDialog(noteDialog,{
                codeExamen:codeExamen
            });
            noteDialog.showModal();
        });
    });
}

const closeNote=document.getElementById('closeNote');
closeNote.addEventListener('click',function () {
    noteDialog.close();
})




