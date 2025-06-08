
import { fetchJson ,fetchText} from "../src/fetch.js";
import CorrespondanceForm from "./correspondance_form.js";
/**
 * @type {HTMLInputElement} admin
 */
let admin = false;
window?.addEventListener('load', function () {
    admin = document.getElementById('_admin').value;
});

const params = {
    admin: admin,
    sort: 'idCorrespondant',
    order: 'asc',
    statut: null,
    cycle: null,
    search: ''
}

function deleteCorrespondance(id) {
    if (confirm("Êtes-vous sûr de vouloir supprimer cette correspondance ?")) {
        fetchJson("?p=api/correspondance/delete/" + id).then((data) => {
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
        let id = element.dataset.id;
        deleteCorrespondance(id);
    });
});

function editCorrespondance(id) {
    let dialog = new CorrespondanceForm(document.querySelector(".dialog"), id);
    dialog.setEditable('true');
    dialog.show();
}

document.querySelectorAll(".edit").forEach(function (element) {
    element?.addEventListener("click", function (e) {
        e.stopImmediatePropagation();
        let id = element.dataset.id;
        editCorrespondance(id);
    });
});

document.getElementById("add")?.addEventListener("click", function (e) {
    let dialog = new CorrespondanceForm(document.querySelector(".dialog"));
    dialog.reset();
    dialog.setEditable('false');
    dialog.show();
});


document.getElementById("srch")?.addEventListener("input",async function (e) {
if (data.length == 0) {
    let url = "?p=api/correspondance/liste";
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
let sort = 'idCorrespondant'

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
            let url = "?p=api/correspondance/liste";
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
    window.location.assign("?p=eleve/correspondant/" + tr.dataset.matricule)
    })
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
            sort: 'idCorrespondant',
            order: 'asc',
            admin: false,
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

   async #render(data) {
        let tbody = this.table.querySelector("tbody");
        tbody.innerHTML = '';
       /*  data.forEach((element) => {
            tbody.innerHTML += this.#trString(element);
        }); */
        let url = "?p=api/correspondance/htmlListe";
        if(this.params.search) url+="&search="+this.params.search;
        if(this.params.sort) url+="&sort="+this.params.sort;
        if(this.params.order) url+="&order="+this.params.order;
        let html = await fetchText(url);
        tbody.innerHTML = html;



        tbody.querySelectorAll(".edit").forEach(element => {
            element?.addEventListener("click", async (e) => {
                let id = element.dataset.id;
                editCorrespondant(id);
            });
        });

        tbody.querySelectorAll(".delete").forEach(element => {
            element?.addEventListener("click", async (e) => {
                let id = element.dataset.id;
                deleteCorrespondant(id);
            });

        });
        tbody.querySelectorAll('tr').forEach(element => {
            element?.addEventListener("dblclick", async (e) => {
                let matricule = element.dataset.matricule;
                window.location.assign('?p=eleve/correspondant/' + matricule);
            });
        });
    }

    #filterData(data, params) {
       
        if(params.statut){
            data=data.filter(element=>element.statutCorrespondant==params.statut)
        }
        if(params.cycle){
            data=data.filter(element=>element.cycleCorrespondant==params.cycle)
        }
        if (params.search == '') {
            return data;
        }
        return data.filter((element) => {
            return element.nomCorrespondant.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.ismeCorrespondant.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.adresseCorrespondant.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.telCorrespondant.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.emailCorrespondant.toString().toLowerCase().includes(params.search.toLowerCase())||
                element.nniCorrespondant.toString().toLowerCase().includes(params.search.toLowerCase());
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

    #trString({ idCorrespondant, nomCorrespondant, ismeCorrespondant, adresseCorrespondant, telCorrespondant, emailCorrespondant,nniCorrespondant }) {
        return `
        <tr data-id="${idCorrespondant}">
        <td>
                        
                    </td>
         <td class="seachable">${idCorrespondant}</td>
        <td class="seachable">${nomCorrespondant}</td>
        <td class="seachable">${ismeCorrespondant}</td>
        <td class="seachable">${adresseCorrespondant}</td>
        <td class="seachable">${telCorrespondant}</td>
        <td class="seachable">${emailCorrespondant}</td>
        <td class="seachable">${nniCorrespondant}</td>
        <td>
        <div class="center">
         <a href="?p=correspondant/profil/${idCorrespondant}"><i class="bi-eye"></i></a>
        ${this.params.admin ? `

                            <div class="edit" data-id="${idCorrespondant}"><i class="fa fa-edit"></i></div>
                            <div class="delete" data-id="${idCorrespondant}"><i class="fa fa-trash  text-danger"></i></div>

                            ` : ''
            }
                        </div>
        </td>
        </tr>`;
    }
}
    