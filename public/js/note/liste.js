
import {fetchJson,fetchText} from '../src/fetch.js'
let data = [];
const dialog=document.getElementById('dialog');
const add=document.getElementById('add');
const classe=document.getElementById('classe');
const noteTable = document.getElementById('note-table');
const tbody = noteTable.querySelector('tbody');
const matiere=document.getElementById('matiere');
const evaluation=document.getElementById('evaluation');
const matricule=document.getElementById('matricule');
const params={
    classe:classe.value,
    matiere:matiere.value,
    evaluation:evaluation.value,
    matricule:matricule.value
}

window.addEventListener('load',async function () {
    await getData()
    renderTable()
})

classe.addEventListener('change',function () {
    params.classe=this.value
    renderTable()
})
matiere.addEventListener('change',function () {
    params.matiere=this.value
    renderTable()
})
evaluation.addEventListener('change',function () {
    params.evaluation=this.value
    renderTable()
})
matricule.addEventListener('change',function () {
    params.matricule=this.value
    renderTable()
})



matiere.addEventListener('change',function () {
    params.matiere=this.value
    renderTable()
})

evaluation.addEventListener('change',function () {
    params.evaluation=this.value
    renderTable()
})

matricule.addEventListener('input',function () {
    params.matricule=this.value
    renderTable()
})

async function getData() {
    return await fetchJson(`?p=api/note/liste`).then(res => data = res);
}

function renderTable(){
    let elements = data;
  
   if(params.classe)elements=elements.filter(note=>note.codeSalleClasse===params.classe)
   if(params.matiere)elements=elements.filter(note=>note.codeMatiere===params.matiere)
   if(params.evaluation)elements=elements.filter(note=>note.codeEvaluation===params.evaluation)
   if(params.matricule)elements=elements.filter(note=>note.matricule.toLowerCase().includes(params.matricule.toLowerCase())||note.nni.toLowerCase().includes(params.matricule.toLowerCase()))
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
                <button class="btn btn-primary circle edit" data-id="${note.idNote}">
                    <i class="bi-pencil"></i>
                </button>
                <button class="btn btn-danger circle delete" data-id="${note.idNote}">
                    <i class="bi-trash"></i>
                </button>
            </td>
        </tr>
    `).join('');
    tbody.querySelectorAll(".edit").forEach(function (element) {
       
        element.addEventListener("click", function (e) {
            let idNote = element.dataset.id;
            new FormDialog(dialog,{
                idNote:idNote
            });
            dialog.showModal();
        });
    })
    tbody.querySelectorAll(".delete").forEach(function (element) {
        element.addEventListener("click", function (e) {
            let idNote = element.dataset.id;
            FormDialog.onDelete(idNote);
        });
    })
}

add.addEventListener('click',function (e) {
    new FormDialog(dialog);
    dialog.showModal();
});

const close=document.getElementById('close');
close.addEventListener('click',function () {
    dialog.close();
})

document.querySelectorAll(".edit").forEach(function (element) {
    element.addEventListener("click", function (e) {
        let idNote = element.dataset.id;
        new FormDialog(dialog,{
            idNote:idNote
        });
        dialog.showModal();
    });
});

document.querySelectorAll(".delete").forEach(function (element) {
    element.addEventListener("click", function (e) {
        let idNote = element.dataset.id;
        FormDialog.onDelete(idNote);
    });
});

class FormDialog {
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