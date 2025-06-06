import { fetchJson } from "../src/fetch.js";
import Autocomplete from "../eleve/autocomplete_module.js";

export default class ProfesseurForm {

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
        fetchJson("?p=api/professeur/matricule/" + this.matricule).then((data) => {
            this.form.matricule.value = data.matriculeProfesseur;
            this.form.nom.value = data.nomProfesseur;
            this.form.isme.value = data.ismeProfesseur;
            this.form.sexe.value = data.sexeProfesseur;
            this.form.adresse.value = data.adresseProfesseur;
            this.form.nni.value = data.nniProfesseur;
            this.form.codeSpecialite.value = data.codeSpecialite;
            this.form.statut.value = data.statutProfesseur;
            this.form.tel.value = data.telProfesseur;
            this.form.email.value = data.emailProfesseur;
            this.form.dateArrivee.value = data.dateArriveeProfesseur;
            this.form.dateDebut.value = data.dateDebutProfesseur;
            this.form.cycle.value = data.cycleProfesseur;
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
            url = "?p=api/professeur/update/" + this.matricule + "&" + dtSring;
        } else {
            url = "?p=api/professeur/insert" + "&" + dtSring;
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