import {fetchJson,fetchText} from '../src/fetch.js'

let params={
    codeSalleClasse: null,
    dateDebut: null,
    dateFin: null,
}

const table=document.getElementById('table')
const tbody=table.querySelector('tbody')

window?.addEventListener('load',async function () {
    params.dateDebut=dateDebut.value
    params.dateFin=dateFin.value
    renderTable()
})

const codeSalleClasse=document.getElementById('codeSalleClasse');
const dateDebut=document.getElementById('dateDebut');
const dateFin=document.getElementById('dateFin');
const codeMatiere=document.getElementById('codeMatiere');

codeSalleClasse?.addEventListener('change',async function () {
    params.codeSalleClasse=this.value
    await renderTable()
})

const codeHoraire=document.getElementById('codeHoraire');

codeSalleClasse?.addEventListener('change',async function () {
    params.codeSalleClasse=this.value
    await renderTable()
})

codeMatiere?.addEventListener('change',async function () {
    params.codeMatiere=this.value
    await renderTable()
})

codeHoraire?.addEventListener('change',async function () {
    params.codeHoraire=this.value
    await renderTable()
})

dateDebut?.addEventListener('change',async function () {
    params.dateDebut=this.value
    await renderTable()
})

dateFin?.addEventListener('change',async function () {
    params.dateFin=this.value
    await renderTable()
})

async function renderTable() {
    let url=`?p=api/absenceClasse/htmlListe`;
    if(params.codeSalleClasse)url+=`&codeSalleClasse=${params.codeSalleClasse}`;
    if(params.codeMatiere)url+=`&codeMatiere=${params.codeMatiere}`;
    if(params.codeHoraire)url+=`&codeHoraire=${params.codeHoraire}`;
    if(params.dateDebut)url+=`&dateDebut=${params.dateDebut}`;
    if(params.dateFin)url+=`&dateFin=${params.dateFin}`;
    
   await fetchText(url).then(res => {
        tbody.innerHTML = res;
        tbody.querySelectorAll('tr').forEach(tr => {
            tr.classList.add('clickable');
            tr.addEventListener('click', () => {
                const id = tr.dataset.id;
                window.location.href = `?p=absenceClasse/details/${id}`;
            });
        });
   });
  
    document.querySelectorAll(".delete").forEach(function (element) {
        element?.addEventListener("click", function (e) {
            let idAbsenceClasse = element.dataset.id;
            if (confirm("Voulez-vous vraiment supprimer cette absence ?")) {
                fetchJson(`?p=api/absenceClasse/delete/${idAbsenceClasse}`).then(res => {
                    if (res.status === 200) {
                        alert(res.message);
                        renderTable();
                    } else {
                        alert(res.message);
                    }
                });
            }
        });
    });
}

