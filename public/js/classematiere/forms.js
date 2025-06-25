import { fetchJson, fetchText } from "../../js/src/fetch.js";
import {Spinner} from "../../js/src/spinner.js";
const spinner=new Spinner()

 const deletes=document.querySelectorAll('.delete')
 deletes.forEach(element => {
     element?.addEventListener('click',async function (e) {
        e.stopImmediatePropagation();
        const code=element.dataset.code
        if (!confirm("Êtes-vous sûr de vouloir supprimer cette matière de cette classe ?"))     {
            return;
        }
    await    fetchJson("?p=api/classematiere/delete/"+code).then((data) => {
            console.log(data);
            if(data?.status ?? 0){
                alert(data?.message ?? "Success");
                window.location.reload();
            }else{
                alert(data?.message ?? "Error");
            }    
        }).catch((error) => {
            alert("Error " + error);
            console.log(error);
        });
     });
 });

const checks = document.querySelectorAll('.check');
checks.forEach(element => {
    element?.addEventListener('change', function (e) {
        let checked = false
        for (const check of checks) {
            if (check.checked) {
                checked = true
                break
            }
        }
        if (checked) {        
            send.disabled = false
        } else send.disabled = true

    })
});

class FormElement{     
    constructor(form){
        this.form = form
        this.envois = this.form.querySelectorAll('.envoi')
        this.send = this.form.querySelector('#send')
        this.form?.addEventListener('submit', (e) => FormElement.submit(this.form,e))
    }

   static submit(frm,e){
        e.preventDefault()
        let data = new FormData(frm)
        let dtSring = new URLSearchParams(data).toString();
        let url = frm.edit.value  ? "?p=api/classematiere/update&"+dtSring : "?p=api/classematiere/insert&"+dtSring
        fetchJson(url).then((data) => {
            console.log(data);
            if(data?.status ?? 0){
                alert(data?.message ?? "Success");
                window.location.reload();
            }else{
                alert(data?.message ?? "Error");
            }    
        })/* .catch((error) => {
            alert("Error " + error);
            console.log(error);
        }); */
    }
     static async submitAll(forms){
        spinner.show()
        for(let frm of forms){
        let data = new FormData(frm)
        let dtSring = new URLSearchParams(data).toString();
        let url = frm.edit.value  ? "?p=api/classematiere/update&"+dtSring : "?p=api/classematiere/insert&"+dtSring
        await fetchJson(url).then((data) => {
            console.log(data);
        }).catch((error) => {
            console.log(error);
        });
    }
    spinner.hide()
    window.location.reload()
    }

    
}


const forms=document.querySelectorAll('.classematiereform')
forms.forEach(element => {
    new FormElement(element)
});


const send = document.getElementById('send');
send?.addEventListener('click', function (e) {
    let frms=[]
    forms.forEach(element => {
        let check=element.check.checked
        if(check){
            frms.push(element)
        }
    });
    FormElement.submitAll(frms)
})

const importform=document.getElementById('importform')
const importtous=document.getElementById('importtous')
const importone=document.getElementById('import')
importtous?.addEventListener('click',function (e) {
    importdata(e,'tous')
})
importone?.addEventListener('click',function (e) {
    importdata(e,'one')
})

async function importdata(e,type) {
    e.preventDefault()
    let data = new FormData(importform)
    if(!confirm("Êtes-vous sûr de vouloir importer les coefficients des matières pour cette annee ?")) return;
   if(type=='tous') data.append('importtous', 'true')
    else data.append('import', 'true')
    let dtSring = new URLSearchParams(data).toString();
    let url = "?p=api/classematiere/import&"+dtSring
spinner.show()
   await fetchJson(url).then((data) => {
        console.log(data);
        if(data?.status ?? 0){
            alert(data?.message ?? "Success");
            window.location.reload();
        }else{
            alert(data?.message ?? "Error");
        }    
    })
    spinner.hide()
}
