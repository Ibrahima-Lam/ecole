import { fetchJson, fetchText } from "../../js/src/fetch.js";

 const deletes=document.querySelectorAll('.delete')
 deletes.forEach(element => {
     element.addEventListener('click',async function (e) {
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
    element.addEventListener('change', function (e) {
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
        this.form.addEventListener('submit', (e) => FormElement.submit(this.form,e))
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
        }).catch((error) => {
            alert("Error " + error);
            console.log(error);
        });
    }
}

const forms=document.querySelectorAll('form')
forms.forEach(element => {
    new FormElement(element)
});


const send = document.getElementById('send');
send.addEventListener('click', function (e) {
    forms.forEach(element => {
        let check=element.check.checked
        if(check){
            FormElement.submit(element,new Event('submit'))
        }
    });
})

