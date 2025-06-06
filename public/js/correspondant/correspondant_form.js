import { fetchJson } from "../src/fetch.js";
import Autocomplete from "../eleve/autocomplete_module.js";

export default class CorrespondantForm {

    /**
     * @param {HTMLDialogElement} dl
     * @param {string} id
     * @param {HTMLFormElement} form
     */
    dl;
    id;
    form;

    constructor(dl, id) {
        this.id = id;
        this.dl = dl;
        this.form = dl.querySelector("form");
        this.form?.addEventListener("submit", (e) => this.submit(e));
       
        this.dl.querySelector('#close')?.addEventListener("click", () => this.dl.close());

       new Autocomplete(dl.querySelector('#nom').parentNode,dl.querySelector('#nom'),dl.querySelector('#isme'));
    }
    #addData() {
        fetchJson("?p=api/correspondant/id/" + this.id).then((data) => {
            this.form.nom.value = data.nomCorrespondant;
            this.form.isme.value = data.ismeCorrespondant;
            this.form.adresse.value = data.adresseCorrespondant;
            this.form.tel.value = data.telCorrespondant;
            this.form.email.value = data.emailCorrespondant;
            this.form.nni.value = data.nniCorrespondant;
            this.form.sexe.value = data.sexeCorrespondant;
           
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
        e.stopImmediatePropagation();
       
        let edit = this.form.edit.value;
        let url = ''

        let data = new FormData(this.form);
        let dtSring = new URLSearchParams(data).toString();
        if (edit == 'true') {
            url = "?p=api/correspondant/update/" + this.id + "&" + dtSring;
        } else {
            url = "?p=api/correspondant/insert" + "&" + dtSring;
        }
        fetchJson(url).then((data) => {
          
            if ((data?.status ?? 0)==1) {
                alert(data?.message ?? "Success");
                this.dl.close();
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