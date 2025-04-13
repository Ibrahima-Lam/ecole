import { fetchJson } from "../../js/src/fetch.js";
const forms = document.querySelectorAll('form')
const checkAll=document.getElementById('checkAll');
const send = document.getElementById('send');
const statuts=document.querySelectorAll('.statut')

forms.forEach(form => {
    form.addEventListener('submit', function (e) {
        e.preventDefault()
        new FormElement(form)
    })
});


checkAll.addEventListener('change', function (e) {
    let checked = e.target.checked
    for (const form of forms) {
        form.statut.checked=checked
    }
    document.querySelector('.statut').dispatchEvent(new Event('change'))
});

window.addEventListener('load',function(e){
    checkAll.checked=true
    if (statuts.length==0) {
        send.disabled=true
        checkAll.checked=false
        checkAll.disabled=true 
    }
})

send.addEventListener('click', function (e) {
    FormElement.submitAll(forms)
})

statuts.forEach(element => {
    element.addEventListener('change', function (e) {
        let checked=0
        for (const statut of statuts) {
            if(statut.checked){
                checked++
            }
        }
        if(checked==0){
            checkAll.checked=false
            send.disabled=true
        }else if(checked==statuts.length){
            checkAll.checked=true
            send.disabled=false
        }else{
            checkAll.checked=false
            send.disabled=false
        }
    })
});


const trs = document.querySelectorAll('table tbody tr');
trs.forEach(tr => {
    const element = tr.querySelector('.remove')
    element.addEventListener('click', function (e) {
        tr.remove()
    })
});

const inscrire=document.getElementById('inscrire');
inscrire.addEventListener('click',async function (e) {
    trs.forEach(async tr  => {
        if (tr.dataset.statut == true) {
            const form = tr.querySelector('form')
          const data = new FormData(form)
          const dtString = new URLSearchParams(data).toString()
          await fetchJson('?p=api/eleve/clearNoninscrit')
          const url = "?p=api/eleve/enregistrer&" + dtString
          await fetchJson(url).then((data) => {
            console.log(data);
        });
        }
    })
    setTimeout(() => {
        window.location.assign("?p=eleve/inscrire")
    }, 1000);
})



class FormElement {

    constructor(form) {
        this.form = form
        this.form.addEventListener('submit', (e) => this.submit(e))
    }

    submit(e) {
        e.preventDefault()
        let fd = new FormData(e.target)
        let dtSring = new URLSearchParams(fd).toString()
        console.log(dtSring);
        if (!(e.target.statut?.checked??false)) return;
        let url = "?p=api/eleve/insert&" + dtSring
        fetchJson(url).then((data) => {
            console.log(data);
            if (data?.status ?? 0) {
                alert(data?.message ?? "Success");
                window.location.reload();
            } else {
                alert(data?.message ?? "Error");
            }
        }).catch((error) => {
            alert("Error " + error);
            console.log(error);
        });
    }

    static async submitAll(listForms) {
        let list = [];

        for (const form of listForms) {
            let fd = new FormData(form)
            let dtSring = new URLSearchParams(fd).toString()
            console.log(dtSring);
            let url =  "?p=api/eleve/insert&" + dtSring
            await fetchJson(url).then((data) => {
                console.log(data);
            }).catch((error) => {
                console.log(error);
            });
        }
        console.log(list);

        window.location.reload();

    }

    reset() {
        this.form.reset();
    }

    static delete(matricule) {
        let url = `?p=api/eleve/delete/${matricule}`
        fetchJson(url).then((data) => {
            console.log(data);
        }).catch((error) => {
            console.log(error);
        });
        window.location.reload();
    }

    static async deleteAll(matricules) {
        let list = [];
        for (const matricule of matricules) {

            let url = `?p=api/eleve/delete/${matricule}`
            await fetchJson(url).then((data) => {
                console.log(data);
            }).catch((error) => {
                console.log(error);
            });
            list.push(matricule);
        }
        console.log(list);
        window.location.reload();
    }

    static remove(form) {
        forms.remove(form);
    }
}
