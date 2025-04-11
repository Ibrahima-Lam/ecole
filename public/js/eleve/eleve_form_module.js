import { fetchJson } from "../src/fetch.js";

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