
import { fetchJson } from "../src/fetch.js";

class AbsenceForm {
    /** @type {HTMLDialogElement} */
    dialog;
    /** @type {HTMLFormElement} */
    form;
    /** @type {HTMLButtonElement} */
    closeButton;
    /** @type {HTMLInputElement} */
    id;

    constructor(dialogElement) {
        this.dialog = dialogElement;
        this.form = this.dialog.querySelector('form');
        this.closeButton = this.dialog.querySelector('#close');
        this.id=null

        this.closeButton.addEventListener('click', () => this.hide());
        this.form.addEventListener('submit', (e) => {
            e.preventDefault();
            this.submit();
        });
    }

    show() {
        this.dialog.showModal();
    }

    hide() {
        this.dialog.close();
    }

    reset() {
        this.form.reset();
        this.id = null;
    }

    async fillForm() {
        const absence = await fetchJson(`?p=api/absence/id/${this.id}`);
        if (absence) {
            this.form.querySelector('#matricule').value = absence.matricule;
            this.form.querySelector('#nombreAbsence').value = absence.nombreAbsence;
            this.form.querySelector('#trimestreAbsence').value = absence.trimestreAbsence;
        }
    }

    async submit() {
        const formData = new FormData(this.form);
        const dataString = (new URLSearchParams(formData)).toString();
       
        const url = this.id ? `?p=api/absence/update/${this.id}` : '?p=api/absence/insert';

       
            const data = await fetchJson(url + '&'+ dataString);

            if (data?.status) {
                alert(data.message || "Opération réussie");
                window.location.reload();
            } else {
                alert(data.error || "Erreur lors de l'opération");
            }
       
    }
}

document.addEventListener('DOMContentLoaded', () => {
    const dialogElement = document.getElementById('dialog');
    if(!dialogElement) return;
    const absenceForm = new AbsenceForm(dialogElement);

    document.getElementById('add')?.addEventListener('click', () => {
        absenceForm.reset();
        absenceForm.show();
    });

    document.querySelectorAll('.edit').forEach(button => {
        button.addEventListener('click', async (e) => {
            const id = e.currentTarget.dataset.id;
            absenceForm.reset();
            absenceForm.id=id;
            await absenceForm.fillForm();
            absenceForm.show();
        });
    });

    document.querySelectorAll('.delete').forEach(button => {
        button.addEventListener('click', (e) => {
            const id = e.currentTarget.dataset.id;
            if (confirm("Êtes-vous sûr de vouloir supprimer cette absence ?")) {
                deleteAbsence(id);
            }
        });
    });
});

async function deleteAbsence(id) {
    try {
        const data = await fetchJson(`?p=api/absence/delete/${id}`);
        if (data?.status) {
            alert(data.message || "Absence supprimée avec succès");
            window.location.reload();
        } else {
            alert(data.message || "Erreur lors de la suppression");
        }
    } catch (error) {
        console.error('Error deleting absence:', error);
        alert("Une erreur est survenue.");
    }
}
