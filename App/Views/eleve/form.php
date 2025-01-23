<div class="center">
    <form class="form shadow" action="?p=eleve/traitement" method="post">
        <div class="form-group">
            <label for="matricule">Matricule</label>
            <input type="text" class="form-control" id="matricule" name="matricule" placeholder="matricule">
        </div>
        <div class="form-group">
            <label for="nom">Nom et Prénom</label>
            <input type="text" class="form-control" id="nom" name="nom" placeholder=" Entrer le nom et prénom">
        </div>
        <div class="form-group">
            <!-- Nom en Arabe -->
            <label for="isme">Nom en Arabe الاسم</label>
            <input type="text" dir="rtl" class="form-control" id="isme" name="isme" placeholder="Nom en Arabe الاسم">
        </div>
        <div class="form-group">
            <label for="sexe">Sexe</label>
            <div class="form-radio">
                <input type="radio" id="sexeM" name="sexe" value="M">
                <label for="sexeM">Masculin</label>
                <input type="radio" id="sexeF" name="sexe" value="F">
                <label for="sexeF">Feminin</label>
            </div>
        </div>
        <div class="form-group">
            <label for="dateNaissance">Date de naissance</label>
            <input type="date" lang="ar" class="form-control" id="dateNaissance" name="dateNaissance" placeholder="Entrer la date de naissance">
        </div>
        <div class="form-group">
            <label for="lieuNaissance">Lieu de naissance</label>
            <input type="text" class="form-control" id="lieuNaissance" name="lieuNaissance" placeholder="Entrer le lieu de naissance">
        </div>
        <div class="form-group">
            <label for="adresse">Adresse</label>
            <input type="text" class="form-control" id="adresse" name="adresse" placeholder="adresse">
        </div>
        <div class="form-group">
            <label for="nni">NNI</label>
            <input type="text" class="form-control" id="nni" name="nni" placeholder="nni">
        </div>
        <div class="form-action">
            <button type="reset" class="btn btn-default">Annuler</button>
            <button type="submit" class="btn btn-primary">Enregistrer</button>
        </div>

    </form>
</div>
<script type="module" defer>
import {fetchJson} from './js/src/fetch.js';



class Autocomplete {
    constructor(parent,input) {
        this.input = input;
        this.options = [];
        this.filteredOptions = [];
        this.parent = parent;
        this.active=0;
        this.handleKeyDown = (e) => {
                e.stopImmediatePropagation();
                let lis = this.parent.querySelectorAll('li');
                if(e.code == 'ArrowUp'){
                    this.active--;
                    if(this.active<0) this.active=lis.length-1;
                    lis.forEach(li => li.classList.remove('active'));
                    lis[this.active]?.classList.add('active');
                }else if(e.code == 'ArrowDown'){
                    this.active++;
                    if(this.active>lis.length-1) this.active=0;
                    lis.forEach(li => li.classList.remove('active'));
                    lis[this.active]?.classList.add('active');
                }else if(e.code == 'Enter'){
                    this.input.value = lis[this.active].innerText;
                    this.parent.querySelector('.autocomplete')?.remove();
                    this.render();
                };
            }
           

        this.init();
    }

    async init() {
        let url = "?p=api/eleve/autocomplete";
        await fetchJson(url).then(data => {
            
            this.options = data;
        }).catch(e => console.log(e));
        this.filteredOptions = this.options;
        this.input.addEventListener('input', () => {
            let t=this.input.value.split(' ');
            let val = t[t.length-1];
            this.filteredOptions = this.options.filter(option => option.fr.toLowerCase().startsWith(val.toLowerCase()));
            this.render(this.filteredOptions);
        });
        

        document.addEventListener('click', () => {
            this.parent.querySelector('.autocomplete')?.remove();
        });
    }

    render(data=[]) {
       this.input.removeEventListener('keydown', this.handleKeyDown); 
        if(!data.length||!this.input.value) {
            this.parent.querySelector('.autocomplete')?.remove();
            return;
        };
       let html=`
       <div class="autocomplete">
        <ul>
        `;
        let t=this.input.value.split(' ');
        delete t[t.length-1];
        let val = t.join(' ');
        html+=data.map(elemt => `<li>${val+' '+elemt?.fr}</li>`).join('');
        html+=`</ul>
        </div>`;
        let last =this.parent.querySelector('.autocomplete');
        if(last) last.remove();
        this.parent.insertAdjacentHTML('beforeend', html);
        this.input.focus();
        const ul = this.parent.querySelector('ul');
        if(!ul) return;
        const lis = ul.querySelectorAll('li');
        
        if(!lis.length) return;
        for(let li of lis){
            li.addEventListener('click', e => {
                this.input.value = li.innerText;
                this.parent.querySelector('.autocomplete')?.remove();
                this.render();
            });
        }
        this.activate();
       
        }
        activate() {
            const lis = this.parent.querySelectorAll('li');
            lis[0]?.classList.add('active');
            this.input.addEventListener('keydown', this.handleKeyDown);
        }
    }




const nom = document.querySelector('#nom');
new Autocomplete(nom.parentNode,nom);



</script>