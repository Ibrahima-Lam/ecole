import FormModule from './formModule.js';
import { fetchJson, fetchText } from "../src/fetch.js";

let admin = false;
window?.addEventListener('load', function () {
    admin = document.getElementById('_admin').value;
});


let table = document.querySelector("table");
let data = [];
let order = 'asc'
let sort = 'matricule'

const inscritRows = document.querySelectorAll('.inscritRow');
inscritRows.forEach(row => {
    row?.addEventListener('click', function () {
        window.location.href = `?p=eleve/profil/${this.dataset.matricule}`;
    });
});

document.getElementById("srch")?.addEventListener("input",async function (e) {

    if (e.target.value.length<3&&e.target.value.length>0) return;
    
        let tab = new TableData(table, data, {
            search: e.target.value,
            admin: admin,
            sort: sort,
            order: order
        });
        tab.create();
        // tab.setFiltering(e.target.value);
    });

let headers = table.querySelectorAll("thead tr th.sortable");
headers.forEach(header => {
    header?.addEventListener("click", async function (e) {
        let srt = header.dataset.sort;
        let ord = order
        if (sort == srt) {
            ord = order == 'asc' ? 'desc' : 'asc'
            order = ord
        }
        sort = srt
        if (data.length == 0) {
            let url = "?p=api/inscrit/liste";
            data = await fetchJson(url);
        }
        let tab = new TableData(table, data, {
            sort: srt,
            order: ord,
            admin: admin
        });
        tab.create();
        tab.setSorting(header)

    });
});

document.querySelectorAll('.edit')?.forEach(button => {

  editInscrit(button,{
    matricule:button.dataset.matricule,
    idInscrit:button.dataset.id
  });
});
function editInscrit(button,params){
    const form = new FormModule(document.querySelector('.inscrit-form'), button,params);
    
    form.show()
}
function deleteInscrit(idInscrit){
   FormModule.delete(idInscrit);
}

class TableData {
    /**
     * @param {HTMLTableElement} table
     */
    table;
    params;
    data;

    constructor(table, data, params) {
        this.table = table;
        this.data = data;
        this.params = {
            search: '',
            sort: 'matricule',
            order: 'asc',
            admin: false,
            ...params
        };

    }
   async create() {
        let tbody = this.table.querySelector("tbody");
        let status=document.getElementById("statut-param")?.value;
        tbody.innerHTML = '';
    let paramStr = Object.entries(this.params).map(([key, value]) => `${key}=${value}`).join("&");
       
    let url = "?p=api/inscrit/htmlListe";
    if(status) url+="/"+status;
    url+="&"+paramStr;
       
        let html = await fetchText(url);
        tbody.innerHTML = html;
        
        tbody.querySelectorAll(".edit").forEach(element => {
            element?.addEventListener("click", async (e) => {
                let matricule = element.dataset.matricule;
                editInscrit(element,{
                    matricule:matricule,
                    idInscrit:element.dataset.id
                });
            });
        });

        tbody.querySelectorAll(".delete").forEach(element => {
            element?.addEventListener("click", async (e) => {
                deleteInscrit(element.dataset.id);
            });

        });
        tbody.querySelectorAll('tr').forEach(element => {
            element?.addEventListener("dblclick", async (e) => {
                let matricule = element.dataset.matricule;
                window.location.assign('?p=eleve/profil/' + matricule);
            });
        });
    }

     setSorting(th) {
        const ths = this.table.querySelectorAll('.sortable')
        ths.forEach(element => {
            let i = element.querySelector('i')
            if (i) {
                i.remove()
            }
        });
        const i = document.createElement('i')
        let cl = this.params.order == 'asc' ? 'fa-sort-up' : 'fa-sort-down'
        i.classList.add('fa')
        i.classList.add(cl)
        i.classList.add('ml-5')
        i.classList.add('mx-5')
        i.classList.add('text-primary')
        i.style.fontSize="1.2rem"
        i.style.color="blue"
        let sort=th.querySelector('.sort')
        sort.append(i)
    }
}
