
export class Spinner {
    constructor() {
        this.spinner = document.createElement('div');
        this.spinner.classList.add('spinner');
        
    }
    show() {
     document.body.appendChild(this.spinner);
        document.body.style.opacity=0.5;
        this.spinner.style.opacity=1;
    }
    hide() {
   document.body.querySelector('.spinner')?.remove();
        document.body.style.opacity=1;
    }

    toggle(){
        if(document.body.querySelector('.spinner')){
            this.hide()
        }else{
            this.show()
        }
    }
}