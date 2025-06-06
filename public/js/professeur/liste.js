
import { fetchJson } from "../src/fetch.js";
import ProfesseurForm from "./professeur_form.js";
/**
 * @type {HTMLInputElement} admin
 */
let admin = false;
window?.addEventListener('load', function () {
    admin = document.getElementById('_admin').value;
});

const params = {
    admin: admin,
    sort: 'matriculeProfesseur',
    order: 'asc',
    statut: null,
    cycle: null,
    search: ''
}

function deleteEleve(matricule) {
    if (confirm("Êtes-vous sûr de vouloir supprimer cet élève ?")) {
        fetchJson("?p=api/eleve/delete/" + matricule).then((data) => {
            if (data?.status ?? 0) {
                alert(data?.message ?? "Success");
                window.location.reload();
            } else {
                alert(data?.message ?? "Error");
            }
        }).catch((error) => {
            alert("Error " + error);
            console.log(error);

        });
    }
}

document.querySelectorAll(".delete").forEach(function (element) {
    element?.addEventListener("click", function (e) {
        e.stopImmediatePropagation();
        let matricule = element.dataset.matricule;
        deleteEleve(matricule);
    });
});

function editEleve(matricule) {
    let dialog = new ProfesseurForm(document.querySelector(".dialog"), matricule);
    dialog.setEditable('true');
    dialog.show();
}

document.querySelectorAll(".edit").forEach(function (element) {
    element?.addEventListener("click", function (e) {
        e.stopImmediatePropagation();
        let matricule = element.dataset.matricule;
        editEleve(matricule);
    });
});

document.getElementById("add")?.addEventListener("click", function (e) {
    let dialog = new ProfesseurForm(document.querySelector(".dialog"));
    dialog.reset();
    dialog.setEditable('false');
    dialog.show();
});


document.getElementById("srch")?.addEventListener("input",async function (e) {
if (data.length == 0) {
    let url = "?p=api/professeur/liste";
    data = await fetchJson(url);
}
if (e.target.value.length<3&&e.target.value.length>0) return;

    let tab = new TableData(table, data, {
        ...params,
        search: e.target.value,
    });
    tab.create();
    tab.setFiltering(e.target.value);
});


let table = document.querySelector("table");
let data = [];
let order = 'asc'
let sort = 'matricule'

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
            let url = "?p=api/professeur/liste";
            data = await fetchJson(url);
        }
        let tab = new TableData(table, data, {
            ...params,
            sort: srt,
            order: ord,
        });
        tab.create();
        tab.setSorting(header)

    });
});

window?.addEventListener('load', function (e) {
    let tab = new TableData(
        table,
        data,
        {
            sort: sort,
            order: order
        }
    )
    tab.setSorting(table.querySelector('th.sortable'))
})

const trs=document.querySelectorAll('tbody tr')
trs.forEach(tr => {
    tr?.addEventListener('click',function(e){
    window.location.assign("?p=professeur/profil/" + tr.dataset.matricule)
    })
});

let statutfilter = document.getElementById('statutfilter');
let cyclefilter = document.getElementById('cyclefilter');

statutfilter?.addEventListener('change',async function (e) {
    if (data.length == 0) {
        let url = "?p=api/professeur/liste";
        data = await fetchJson(url);
    }
    let tab = new TableData(table, data, {
        ...params,
        statut: e.target.value,
    });
    tab.create();
   
});

cyclefilter?.addEventListener('change',async function (e) {
    if (data.length == 0) {
        let url = "?p=api/professeur/liste";
        data = await fetchJson(url);
    }
    let tab = new TableData(table, data, {
        ...params,
        cycle: e.target.value,
    });
    tab.create();
  
});



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
            statut: null,
            cycle: null,
            ...params
        };

    }
    create() {
        let elements = this.data;
        elements = this.#filterData(this.data, this.params);
        elements = this.#sortData(elements);
        this.#render(elements);
    }

    setSorting(th) {
        const ths = this.table.querySelectorAll('.sortable')
        ths.forEach(element => {
            let i = element.querySelector('i')
            if (i) {
                element.removeChild(i)
            }
        });
        const i = document.createElement('i')
        let cl = this.params.order == 'asc' ? 'fa-sort-up' : 'fa-sort-down'
        i.classList.add('fa')
        i.classList.add(cl)
        i.classList.add('ml-5')
        i.classList.add('text-primary')
        th.append(i)
    }

    setFiltering(value) {
        const tds = this.table.querySelectorAll('td.seachable')
        const mark = document.createElement('mark')
        mark.innerHTML = `<strong>${value}</strong>`
        tds.forEach(element => {
            element.innerHTML = element.innerHTML.replace(new RegExp(value, 'i'), mark.outerHTML)
        });
    }

    #render(data) {
        let tbody = this.table.querySelector("tbody");
        tbody.innerHTML = '';
        data.forEach((element) => {
            tbody.innerHTML += this.#trString(element);
        });



        tbody.querySelectorAll(".edit").forEach(element => {
            element?.addEventListener("click", async (e) => {
                let matricule = element.dataset.matricule;
                editEleve(matricule);
            });
        });

        tbody.querySelectorAll(".delete").forEach(element => {
            element?.addEventListener("click", async (e) => {
                let matricule = element.dataset.matricule;
                deleteEleve(matricule);
            });

        });
        tbody.querySelectorAll('tr').forEach(element => {
            element?.addEventListener("dblclick", async (e) => {
                let matricule = element.dataset.matricule;
                window.location.assign('?p=professeur/profil/' + matricule);
            });
        });
    }

    #filterData(data, params) {
       
        if(params.statut){
            data=data.filter(element=>element.statutProfesseur==params.statut)
        }
        if(params.cycle){
            data=data.filter(element=>element.cycleProfesseur==params.cycle)
        }
        if (params.search == '') {
            return data;
        }
        return data.filter((element) => {
            return element.nomProfesseur.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.matriculeProfesseur.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.ismeProfesseur.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.nomSpecialite.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.statutProfesseur.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.telProfesseur.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.emailProfesseur.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.nniProfesseur.toString().toLowerCase().includes(params.search.toLowerCase());
        });
    }

    #sortData(data) {
        return data.sort((a, b) => {
            if (this.params.order === 'asc') {
                return (a[this.params.sort] ?? '') < (b[this.params.sort] ?? '') ? -1 : 1;
            }
            else if (this.params.order === 'desc') {
                return (a[this.params.sort] ?? '') > (b[this.params.sort] ?? '') ? -1 : 1;
            }
            return 0;
        });
    }

    #trString({ matriculeProfesseur, nomProfesseur, ismeProfesseur, nomSpecialite, statutProfesseur, telProfesseur, emailProfesseur,nniProfesseur,imagePathProfesseur }) {
        return `
        <tr data-matricule="${matriculeProfesseur}">
        <td>
                        
                    </td>
         <td class="seachable">${matriculeProfesseur}</td>
        <td class="seachable">${nomProfesseur}</td>
        <td class="seachable">${ismeProfesseur}</td>
        <td class="seachable">${nomSpecialite}</td>
        <td class="seachable">${statutProfesseur}</td>
        <td class="seachable">${telProfesseur}</td>
        <td class="seachable">${emailProfesseur}</td>
        <td class="seachable">${nniProfesseur}</td>
        <td>
        <div class="center">
         <a href="?p=professeur/profil/${matriculeProfesseur}"><i class="bi-eye"></i></a>
        ${this.params.admin ? `

                            <div class="edit" data-matricule="${matriculeProfesseur}"><i class="fa fa-edit"></i></div>
                            <div class="delete" data-matricule="${matriculeProfesseur}"><i class="fa fa-trash  text-danger"></i></div>

                            ` : ''
            }
                        </div>
        </td>
        </tr>`;
    }
}
