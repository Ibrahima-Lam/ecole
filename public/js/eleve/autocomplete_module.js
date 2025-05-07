import {fetchJson} from '../src/fetch.js';
export default class Autocomplete {
    constructor(parent,input,arabeInput=null) {
        this.frInput = input;
        this.frInput.autocomplete = 'off';
        this.arabeInput = arabeInput;
        this.options = [];
        this.arabeOptions = [];
        this.filteredOptions = [];
        this.parent = parent;
        this.active=0;
        this.frText='';
        this.handleKeyDown = (e) => {
                e.stopImmediatePropagation();
                let lis = this.parent.querySelectorAll('li');
                let autocomplete = this.parent.querySelector('.autocomplete');
                 if(this.arabeInput) this.arabeInput.placeholder='الاسم Nom en Arabe';
                if(!autocomplete) return;
                if(e.code == 'ArrowUp'){
                    autocomplete.scrollTop = autocomplete.scrollTop-30;
                    this.active--;
                    if(this.active<0) {
                        autocomplete.scrollTo(0,autocomplete.scrollHeight);
                        this.active=lis.length-1;
                        autocomplete.scrollTop = autocomplete.scrollTop+30;
                    };
                    lis.forEach(li => li.classList.remove('active'));
                    lis[this.active]?.classList.add('active');
                }else if(e.code == 'ArrowDown'){
                    autocomplete.scrollTop = autocomplete.scrollTop+30;
                    this.active++;
                    if(this.active>lis.length-1) {
                        autocomplete.scrollTo(0,-autocomplete.scrollHeight);
                        this.active=0;
                        autocomplete.scrollTop = autocomplete.scrollTop-30;
                    };
                    lis.forEach(li => li.classList.remove('active'));
                    lis[this.active]?.classList.add('active');
                }else if(e.code == 'Enter'){
                 
                   e.preventDefault(); 
                   if(lis[this.active]?.innerText) this.frInput.value = lis[this.active].innerText;
                    this.frText=this.frInput.value;
                    this.parent.querySelector('.autocomplete')?.remove();
                    this.render();
                };
              if(this.arabeInput) this.arabeInput.placeholder =this.arabeMatch(this.frText)?'('+this.arabeMatch(this.frText)+') Entrer':'الاسم Nom en Arabe';
            }
           
        this.handleKeyDownAr = (e) => {
           
                if(e.code == 'Enter'||e.code == 'Tab') {
                    if(e.code == 'Enter')e.preventDefault();
                    if(e.code == 'Tab'&&this.arabeInput?.value.trim().length!=this.arabeMatch(this.frInput.value).trim().length)e.preventDefault();
                  if(this.arabeInput&&this.arabeMatch(this.frInput.value)) this.arabeInput.value = this.arabeMatch(this.frInput.value);
                   
                };
           
        }
        this.arabeInput?.addEventListener('keydown',this.handleKeyDownAr);

        this.init();
    }

    async init() {
        let url = "?p=api/eleve/autocomplete";
        
        await fetchJson(url).then(data => {
            
            this.options = data;
        }).catch(e => console.log(e));
        let url2 = "?p=api/eleve/autocomplete/true";
        await fetchJson(url2).then(data => {
           
            this.arabeOptions = data;
        }).catch(e => console.log(e));
        this.filteredOptions = this.options;
        this.frInput?.addEventListener('input', () => {
            this.active=0;
            this.frText=this.frInput.value;
            
            if(this.arabeInput&&this.arabeMatch(this.frText)) this.arabeInput.placeholder ='('+this.arabeMatch(this.frText)+') Entrer';

            let t=this.frInput.value.split(' ');
            let val = t[t.length-1];
            this.filteredOptions = this.options.filter(option => option.fr.toLowerCase().startsWith(val.toLowerCase()));
            this.render(this.filteredOptions);
        });
        

        document?.addEventListener('click', () => {
            this.parent.querySelector('.autocomplete')?.remove();
        });
    }

    render(data=[]) {
       this.frInput.removeEventListener('keydown', this.handleKeyDown); 
        if(!data.length||!this.frInput.value) {
            this.parent.querySelector('.autocomplete')?.remove();
            return;
        };
       let html=`
       <div class="autocomplete">
        <ul>
        `;
        let t=this.frText.split(' ');
        delete t[t.length-1];
        let val = t.join(' ');
        html+=data.map(elemt => `<li>${val+' '+elemt?.fr}</li>`).join('');
        html+=`</ul>
        </div>`;
        let last =this.parent.querySelector('.autocomplete');
        if(last) last.remove();
        this.parent.insertAdjacentHTML('beforeend', html);
        this.frInput.focus();
        const ul = this.parent.querySelector('ul');
        if(!ul) return;
        const lis = ul.querySelectorAll('li');
        
        if(!lis.length) return;
        for(let li of lis){
            li?.addEventListener('click', e => {
                this.frInput.value = li.innerText;
                this.frText=this.frInput.value;
                if(this.arabeInput) this.arabeInput.placeholder =this.arabeMatch(li.innerText)?'('+this.arabeMatch(li.innerText)+') Entrer':'Entrer le nom en arabe';
                this.frInput.focus();
                this.parent.querySelector('.autocomplete')?.remove();
                this.render();
            });
        }
        this.activate();
       
        }
        activate() {
            const lis = this.parent.querySelectorAll('li');
            lis[0]?.classList.add('active');
            this.frInput?.addEventListener('keydown', this.handleKeyDown);
            
        }

        arabeMatch(text){
            let textArray=text.trim().split(' ');
            let val='';
            for(let txt of textArray){
                let arabe = this.arabeOptions.find(option => option.fr.toLowerCase()===txt.toLowerCase())?.ar;
                if(arabe){
                    val+=arabe+' ';
                }else return '';
            }
            return val;
        }
    }
