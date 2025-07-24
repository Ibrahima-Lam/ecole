import { fetchAllJson } from "../src/fetch.js";

const forms = document.querySelectorAll('form')
const checkAll = document.getElementById('checkAll');
const save = document.getElementById('save');
const checkboxes = document.querySelectorAll('.check');
const inputs = document.querySelectorAll('.nombreAbsence')
inputs.forEach((input, key) => {
    input?.addEventListener('keydown', function (e) {
        if (e.key === "Enter" || e.key === "Tab" || e.key === "ArrowDown") {
            e.preventDefault()
            if (inputs[key + 1]) inputs[key + 1].focus()
        }
        if (e.key === "ArrowUp") {
            e.preventDefault()
            if (inputs[key - 1]) inputs[key - 1].focus()
        }
    })

    input?.addEventListener('paste', function (e) {
        e.preventDefault()
        let text = e.clipboardData.getData('text')
        let tab = text.split('\n')
        for (let i = 0; i < tab.length; i++) {
            let elmt = inputs[key + i]
            let checkbox = checkboxes[key + i]
            if (elmt) {
                if (checkbox) checkbox.checked = true
                elmt.value = tab[i]
                elmt.classList.add('field-animated')
                setTimeout(() => {
                    elmt.classList.remove('field-animated')
                }, 500);
            }
        }
        updateCheckAll()
        checkOutAllNote()
    })

    input?.addEventListener('input', function (e) {
        checkOutAllNote()
    })
})




checkAll?.addEventListener('change', function () {
    checkboxes.forEach(checkbox => {
        checkbox.checked = this.checked;
    });
    save.disabled = !this.checked;
});

checkboxes.forEach(checkbox => {
    checkbox?.addEventListener('change', () => {
        updateSaveButton();
    });
});

function updateCheckAll() {
    const checkeds = Array.from(checkboxes)
        .filter(cb => cb.checked)
        .length;
    const allChecked = checkeds === checkboxes.length;
    checkAll.checked = allChecked;
}

function updateSaveButton() {
    const checkeds = Array.from(checkboxes)
        .filter(cb => cb.checked)
        .length;
    const anyChecked = checkeds > 0;
    const allChecked = checkeds === checkboxes.length;
    save.disabled = !anyChecked;
    checkAll.checked = allChecked;
}

window?.addEventListener('load', function (e) {
    checkAll.checked = true
    updateSaveButton();
})

save?.addEventListener('click', async function (e) {
    let frms = Array.from(forms).filter(form => form.check.checked && form.nombreAbsence.value!="")
    let urls = []
    for (let form of frms) {
        const data = new FormData(form);
        const dataString = (new URLSearchParams(data)).toString();
        let url = form.edit.value ? `?p=api/absence/update/${form.id.value}&${dataString}` : `?p=api/absence/insert&${dataString}`;
        urls.push(url);
    }
    await fetchAllJson(urls, { show: true })
    window.location.reload();
})


const dbAbsences=document.querySelectorAll('.dbAbsence')
function checkOutAllNote() {
   forms.forEach((form,index)=> {
    let inputNote = form.nombreAbsence
    let span = dbAbsences[index]
    let text = span.innerText
    span.classList.remove('text-danger')
    span.classList.remove('text-warning')
    if (text != '' && +text != +inputNote.value) {
       if(inputNote.value!='') span.classList.add('text-danger')
      else span.classList.add('text-warning')
    } 
   })
}

const trimestres=document.querySelectorAll('.trimestreAbsence') 
for (let trimestre of trimestres) {
    trimestre.addEventListener('change', function (e) {
      trimestres.forEach(t => {
        t.value=trimestre.value;
      })
    })
}

const changeSalleClasse=document.getElementById('changeSalleClasse');
const changeTrimestre=document.getElementById('changeTrimestre');
changeSalleClasse?.addEventListener('change',function(e){
   let url='?p=absence/addAll/'+e.target.value
   url+='&trimestre='+changeTrimestre.value
   window.location.href=url
})
changeTrimestre?.addEventListener('change',function(e){
    let url='?p=absence/addAll/'+changeSalleClasse.value
    url+='&trimestre='+e.target.value
    window.location.href=url
})

