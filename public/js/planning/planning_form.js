
import { fetchJson, fetchText } from "../src/fetch.js";

export default class PlanningForm {
    /**
     * @param dialog HtmlDialogElement
     */
    dialog
    form
    id
    callback
    constructor(dialog, id = null, callback = null) {
        this.dialog = dialog
        this.id = id
        this.form = dialog.querySelector('form')
        this.callback = callback
        this.init(id)

        this.form.addEventListener('submit', (e) => {
            e.preventDefault()
            e.stopImmediatePropagation()
            this.#submit()
        })
    }

    async init(id) {
        this.form.reset()
        if (!id) return;
        const data = await fetchJson('?p=api/planning/one/' + id)
        if (data?.idPlanning) {
            this.form.matriculeProfesseur.value = data.matriculeProfesseur
            this.form.codeSalleClasse.value = data.codeSalleClasse
            this.form.codeMatiere.value = data.codeMatiere
            this.form.codeJour.value = data.codeJour
            this.form.codeHoraire.value = data.codeHoraire
        }
    }


    close() {
        this.dialog.close()
    }
    show() {
        this.dialog.showModal()
    }

    async #submit() {
        const data = new FormData(this.form)
        const params = new URLSearchParams(data).toString();
        let url = this.id ? '?p=api/planning/update/' + this.id : '?p=api/planning/insert'
        url += "&" + params
        const res = await fetchJson(url).catch((e) => {
            console.log(e);

        })
        if (res?.status == 1) {
            alert(res?.message);
            console.log(res?.data);
            this.close()
            window.location.reload()

        } else if (res?.status == -1) {
            if (this.callback) this.callback(res?.data)
            alert(res?.message);
        } else {
            console.log(res?.message);
            alert(res?.message)

        }


    }

    static async delete(id) {
        if (!confirm('Êtes-vous sûr de vouloir supprimer cet élément ?')) return;
        const res = await fetchJson('?p=api/planning/delete/' + id)
        alert(res?.message)
        if (res?.status == 1) {
            window.location.reload()
        }
    }

}