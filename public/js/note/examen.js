import {fetchJson} from '../src/fetch.js'
import {NoteFormDialog} from './note_module.js'

const parametre=document.getElementById('parametre');
const form = document.getElementById('parametreForm');
const dialogParametre = document.getElementById('parametreDialog');

const closeParametreDialog = document.getElementById('closeParametreDialog');
closeParametreDialog?.addEventListener('click', function() {
    dialogParametre.close();
});

const dialog = document.getElementById('dialog');
const closeDialog = document.getElementById('closeDialog');
closeDialog?.addEventListener('click', function() {
    dialog.close();
});


const add = document.getElementById('add');
add?.addEventListener('click', function() {
    new NoteFormDialog(dialog,{
        codeExamen: add.dataset.code
    });
    dialog.showModal();
});

form?.addEventListener('submit',async function(e){
    e.preventDefault();
    const data = new FormData(form);
    const params = Object.fromEntries(data.entries());
    const dataString = (new URLSearchParams(params)).toString();
     await fetchJson('?p=api/note/changeParametre&' + dataString);

    dialogParametre.close();
    window.location.reload();
});

const deleteNote = document.querySelectorAll('.delete');
    deleteNote.forEach(function(button) {
        button?.addEventListener('click', function() {
            NoteFormDialog.onDelete(this.dataset.id);
        });
    });

const editNote = document.querySelectorAll('.edit');
    editNote.forEach(function(button) {
        button?.addEventListener('click', function() {
            new NoteFormDialog(dialog,{
                idNote: this.dataset.id
            });
            dialog.showModal();
        });
    });

const note = document.querySelectorAll('.note');
    note.forEach(function(row) {
        row?.addEventListener('dblclick', function() {
           window.location.href = `?p=eleve/profil/${this.dataset.matricule}`;
        });
    });

    document.getElementById('excel')?.addEventListener('click', function() {
        window.location.href = "?p=note/examenExcel/"+this.dataset.code;
    });



parametre?.addEventListener('click',async function(){
    const data = await fetchJson('?p=api/note/parametre');
    console.log(data);

    const dialog = document.getElementById('parametreDialog');
    dialog.showModal();
}); 






