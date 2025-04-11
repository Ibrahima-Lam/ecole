import { fetchJson, fetchText } from "../../js/src/fetch.js";

const forms = document.querySelectorAll('form')
const checkAll= document.getElementById('checkAll');
const save = document.getElementById('save');
const checkboxes = document.querySelectorAll('.check');

checkAll.addEventListener('change', function() {
    checkboxes.forEach(checkbox => {
        checkbox.checked = this.checked;
    });
    save.disabled = !this.checked;
});

checkboxes.forEach(checkbox => {
    checkbox.addEventListener('change', () => {
        updateSaveButton();
    });
});

function updateSaveButton() {
    const checkeds= Array.from(checkboxes)
            .filter(cb => cb.checked)
            .length;
            const anyChecked=checkeds>0;
            const allChecked=checkeds===checkboxes.length;
        save.disabled = !anyChecked;
        checkAll.checked=allChecked;
}

window.addEventListener('load',function(e){
    checkAll.checked=true
    updateSaveButton();
})

save.addEventListener('click', async function (e) {
    let count=0;
   Array.from(forms).filter(form => form.check.checked).forEach(async form => { e.preventDefault();
    const data = new FormData(form);
    const dataString = (new URLSearchParams(data)).toString();
   
    let url = form.edit.value ? `?p=api/note/update/${form.id.value}&${dataString}` : `?p=api/note/insert&${dataString}`;
  await  fetchJson(url).then(data => {
        if (data?.status) {
            console.log(data?.message ?? 'Enregistrement effectué');
            count++;
        } else {
            console.log(data?.message ?? 'Erreur lors de l\'enregistrement');
        }
    }); 

})
   
   window.location.reload();
})
