
import { fetchJson, fetchText } from "../src/fetch.js";
/**
 * @type {HTMLInputElement} admin
 */
let admin = false;
window.addEventListener('load', function () {
    admin = document.getElementById('admin').value;
});

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
    element.addEventListener("click", function (e) {
        let matricule = element.dataset.matricule;
        deleteEleve(matricule);
    });
});

function editEleve(matricule) {
    let dialog = new form(document.querySelector(".dialog"), matricule);
    dialog.setEditable('true');
    dialog.show();
}

document.querySelectorAll(".edit").forEach(function (element) {
    element.addEventListener("click", function (e) {
        let matricule = element.dataset.matricule;
        editEleve(matricule);
    });
});

document.getElementById("add").addEventListener("click", function (e) {
    let dialog = new form(document.querySelector(".dialog"));
    dialog.reset();
    dialog.setEditable('false');
    dialog.show();
});

document.getElementById("srch").addEventListener("input",async function (e) {
if (data.length == 0) {
    let url = "?p=api/eleve/liste";
    data = await fetchJson(url);
}
    let tab = new TableData(table, data, {
        search: e.target.value,
        admin: admin,
        sort: sort,
        order: order
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
    header.addEventListener("click", async function (e) {
        let srt = header.dataset.sort;
        let ord = order
        if (sort == srt) {
            ord = order == 'asc' ? 'desc' : 'asc'
            order = ord
        }
        sort = srt
        if (data.length == 0) {
            let url = "?p=api/eleve/liste";
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

window.addEventListener('load', function (e) {
    let tab = new TableData(
        table,
        data,
        {
            sort: sort,
            order: order
        }
    )
    tab.setSorting(table.querySelector('th'))
})

const trs=document.querySelectorAll('tbody tr')
trs.forEach(tr => {
    tr.addEventListener('dblclick',function(e){
    window.location.assign("?p=eleve/profil/" + tr.dataset.matricule)
    })
});



class form {

    /**
     * @param {HTMLDialogElement} dl
     * @param {string} matricule
     * @param {HTMLFormElement} form
     */
    dl;
    matricule;
    form;

    constructor(dl, matricule) {
        this.matricule = matricule;
        this.dl = dl;
        this.form = dl.querySelector("form");
        this.form.addEventListener("submit", (e) => this.submit(e));
        this.dl.querySelector('#close').addEventListener("click", () => this.dl.close());

    }
    #addData() {
        fetchJson("?p=api/eleve/matricule/" + this.matricule).then((data) => {
            this.form.matricule.value = data.matricule;
            this.form.nom.value = data.nom;
            this.form.isme.value = data.isme;
            this.form.sexe.value = data.sexe;
            this.form.dateNaissance.value = data.dateNaissance;
            this.form.lieuNaissance.value = data.lieuNaissance;
            this.form.adresse.value = data.adresse;
            this.form.nni.value = data.nni;
        });
    }

    show() {
        if (this.form.edit.value == 'true') {
            this.#addData();
        }
        this.dl.showModal();
    }

    reset() {
        this.form.reset();
    }
    setEditable(value) {
        this.form.edit.value = value;
    }

    submit(e) {
        e.preventDefault();
        let edit = this.form.edit.value;
        let url = ''

        let data = new FormData(this.form);
        let dtSring = new URLSearchParams(data).toString();
        if (edit == 'true') {
            url = "?p=api/eleve/update/" + this.matricule + "&" + dtSring;
        } else {
            url = "?p=api/eleve/insert" + "&" + dtSring;
        }
        fetchJson(url).then((data) => {

            if ((data?.status ?? 0)==1) {
                alert(data?.message ?? "Success");
                this.dl.close();
                window.location.reload();
            } else {
                alert(data?.message ?? "Error");
            }
        })
    }
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
    create() {
        let elements = this.data;
        elements = this.#filterData(this.data, this.params.search);
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
        let cl = this.params.order == 'asc' ? 'bi-sort-down' : 'bi-sort-up'
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
            element.addEventListener("click", async (e) => {
                let matricule = element.dataset.matricule;
                editEleve(matricule);
            });
        });

        tbody.querySelectorAll(".delete").forEach(element => {
            element.addEventListener("click", async (e) => {
                let matricule = element.dataset.matricule;
                deleteEleve(matricule);
            });

        });
        tbody.querySelectorAll('tr').forEach(element => {
            element.addEventListener("dblclick", async (e) => {
                let matricule = element.dataset.matricule;
                window.location.assign('?p=eleve/profil/' + matricule);
            });
        });
    }

    #filterData(data, value) {
        if (value == '') {
            return data;
        }
        return data.filter((element) => {
            return element.nom.toString().toLowerCase().includes(value.toLowerCase())||
                element.matricule.toString().toLowerCase().includes(value.toLowerCase())||
                element.isme.toString().toLowerCase().includes(value.toLowerCase())||
                element.nni.toString().toLowerCase().includes(value.toLowerCase());
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

    #trString({ matricule, nom, isme, sexe, dateNaissance, lieuNaissance, adresse, nni }) {

        return `
        <tr data-matricule="${matricule}">
         <td class="seachable">${matricule}</td>
        <td class="seachable">${nom}</td>
        <td class="seachable">${isme}</td>
        <td >${sexe}</td>
        <td >${dateNaissance}</td>
        <td>${lieuNaissance}</td>
        <td>${adresse}</td>
        <td class="seachable">${nni}</td><td>
        <div class="center">
         <a href="?p=eleve/profil/${matricule}"><i class="bi-eye"></i></a>
        ${this.params.admin ? `

                            <div class="edit" data-matricule="${matricule}"><i class="bi-pencil"></i></div>
                            <div class="delete" data-matricule="${matricule}"><i class="bi-trash  text-danger"></i></div>

                            ` : ''
            }
                        </div>
        </td>
        </tr>`;
    }
}
