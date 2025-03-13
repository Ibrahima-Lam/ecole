
import {fetchJson,fetchText} from '../src/fetch.js'
let data=[]

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
                    <a class="edit" data-code="${examen.codeExamen}"><i class="bi-pencil"></i></a>
                    <a class="delete" data-code="${examen.codeExamen}"><i class="bi-trash text-danger"></i></a>
                </div>
            </td>
        `
        tbody.appendChild(row)
    })
    document.querySelectorAll(".edit").forEach(function (element) {
        element.addEventListener("click", function (e) {
            let codeExamen = element.dataset.code;
            new FormDialog(dialog,{
                codeExamen:codeExamen
            });
            dialog.showModal();
        });
    });
    document.querySelectorAll(".delete").forEach(function (element) {
        element.addEventListener("click", function (e) {
            let codeExamen = element.dataset.code;
            FormDialog.onDelete(codeExamen);
        });
    });
}




class FormDialog {
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
            this.form.addEventListener('submit', (e) => this.onSubmit(e));
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


