import { fetchJson, fetchText,fetchAllJson } from "../src/fetch.js";
import { Spinner } from "../src/spinner.js";
const spinner = new Spinner();
const forms = document.querySelectorAll('form')
const checkAll= document.getElementById('checkAll');
const save = document.getElementById('save');
const checkboxes = document.querySelectorAll('.check');
const inputs=document.querySelectorAll('.note')
inputs.forEach((input,key) => {
    input?.addEventListener('keydown',function(e){
        if(e.key==="Enter"||e.key==="Tab"||e.key==="ArrowDown"){
            e.preventDefault()
          if(inputs[key+1])inputs[key+1].focus()
        }
        if(e.key==="ArrowUp"){
            e.preventDefault()
          if(inputs[key-1])inputs[key-1].focus()
        }
    })

    input?.addEventListener('paste',function(e){
    e.preventDefault()
        let text=e.clipboardData.getData('text')
       let tab=text.split('\n')
       for(let i=0;i<tab.length;i++){
        if(inputs[key+i])inputs[key+i].value=tab[i]
       }
    })
})


checkAll?.addEventListener('change', function() {
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

function updateSaveButton() {
    const checkeds= Array.from(checkboxes)
            .filter(cb => cb.checked)
            .length;
            const anyChecked=checkeds>0;
            const allChecked=checkeds===checkboxes.length;
        save.disabled = !anyChecked;
        checkAll.checked=allChecked;
}

window?.addEventListener('load',function(e){
    checkAll.checked=true
    updateSaveButton();
})

save?.addEventListener('click', async function (e) {
  
 
  let frms= Array.from(forms).filter(form => form.check.checked)
  let urls=[]
  for(let form of frms){
    const data = new FormData(form);
    const dataString = (new URLSearchParams(data)).toString();
    let url = form.edit.value ? `?p=api/note/update/${form.id.value}&${dataString}` : `?p=api/note/insert&${dataString}`;
    urls.push(url);
  }
  await fetchAllJson(urls,{show:true})
   window.location.reload();
})
