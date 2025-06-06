import { fetchJson } from "../src/fetch.js";
import Autocomplete from "./autocomplete_module.js";

export default class EleveForm {

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
        this.form?.addEventListener("submit", (e) => this.submit(e));
       
        this.dl.querySelector('#close')?.addEventListener("click", () => this.dl.close());

       new Autocomplete(dl.querySelector('#nom').parentNode,dl.querySelector('#nom'),dl.querySelector('#isme'));
    }
    #addData() {
        fetchJson("?p=api/eleve/matricule/" + this.matricule).then((data) => {
            console.log(data.statutEleve);
            this.form.matricule.value = data.matricule;
            this.form.nom.value = data.nom;
            this.form.isme.value = data.isme;
            this.form.sexe.value = data.sexe;
          if(data.dateNaissance!="0000-00-00"&&data.dateNaissance) this.form.dateNaissance.value = data.dateNaissance;
            this.form.lieuNaissance.value = data.lieuNaissance;
            this.form.adresse.value = data.adresse;
            this.form.nni.value = data.nni;
            this.form.statut.value = data.statutEleve;
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
        }).catch((error) => {
            alert("Error " + error);
            console.log(error);
        });
    }
}