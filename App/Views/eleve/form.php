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
            <input type="text" dir="rtl" class="form-control" id="isme" name="isme" placeholder="الاسم Nom en Arabe">
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

import Autocomplete from './js/eleve/autocomplete_module.js';

const form=document.querySelector('form')
form.addEventListener('submit',e=>{
    e.preventDefault();
    
})


const nom = document.querySelector('#nom');
const isme = document.querySelector('#isme');
new Autocomplete(nom.parentNode,nom,isme);



</script>