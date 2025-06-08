import { fetchJson } from "../src/fetch.js";

export default class CorrespondanceForm {

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

    }
    #addData() {
        fetchJson("?p=api/correspondance/id/" + this.id).then((data) => {
          this.form.idCorrespondance.value = data.idCorrespondance;
          this.form.idCorrespondant.value = data.idCorrespondant;
          this.form.matricule.value = data.matricule;
           
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
            url = "?p=api/correspondance/update/" + this.id + "&" + dtSring;
        } else {
            url = "?p=api/correspondance/insert" + "&" + dtSring;
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