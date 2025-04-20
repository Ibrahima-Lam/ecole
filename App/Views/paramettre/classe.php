<h3 class="title my-10">Paramettre d'affichage</h3>
<form class="form" id="form" action="" method="post">
<ul class="list-group">
    <li class="list-group-item">
        <label for="matricule">Matricule</label>
        <input type="checkbox" name="matricule" id="matricule" value="true" <?=$paramettre->matricule?'checked' : ''?>>
    </li> 
    <li class="list-group-item">
        <label for="numero">Numero</label>
        <input type="checkbox" name="numero" id="numero" value="true" <?=$paramettre->numero?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nom">Nom</label>
        <input type="checkbox" name="nom" id="nom" value="true" <?=$paramettre->nom?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="isme">Isme</label>
        <input type="checkbox" name="isme" id="isme" value="true" <?=$paramettre->isme?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nom_isme">Nom et Isme</label>
        <input type="checkbox" name="nom_isme" id="nom_isme" value="true" <?=$paramettre->nom_isme?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="sexe">Sexe</label>
        <input type="checkbox" name="sexe" id="sexe" value="true" <?=$paramettre->sexe?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="dateNaissance">Date de naissance</label>
        <input type="checkbox" name="dateNaissance" id="dateNaissance" value="true" <?=$paramettre->dateNaissance?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="lieuNaissance">Lieu de naissance</label>
        <input type="checkbox" name="lieuNaissance" id="lieuNaissance" value="true" <?=$paramettre->lieuNaissance?'checked' : ''?>>
    </li>
    
    <li class="list-group-item">
        <label for="adresse">Adresse</label>
        <input type="checkbox" name="adresse" id="adresse" value="true" <?=$paramettre->adresse?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nni">NNI</label>
        <input type="checkbox" name="nni" id="nni" value="true" <?=$paramettre->nni?'checked' : ''?>>
    </li>
</ul>
<button type="submit" class="btn btn-primary">Enregistrer</button>
</form>

<script type="module">
    import {fetchText} from "./js/src/fetch.js";
    document.getElementById('form')?.addEventListener('submit',async function (e) {
        e.preventDefault();
        let formData = new FormData(e.target);
        let dtSring = new URLSearchParams(formData).toString()
        console.log(dtSring);
        
        await fetchText(`?p=api/paramettre/classe&` + dtSring).then(data => {
            console.log(data);
        }).catch(error => {
            console.log(error);
        });
    });
</script>