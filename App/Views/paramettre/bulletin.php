<h2 class="title-center my-10 text-center">Paramettre des bulletins</h2>

<form class="form width-full" id="form" action="" method="post">
<ul class="list-group grid-2">
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
        <label for="nni">NNI</label>
        <input type="checkbox" name="nni" id="nni" value="true" <?=$paramettre->nni?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="merite">Merite</label>
        <input type="checkbox" name="merite" id="merite" value="true" <?=$paramettre->merite?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="rang">Rang</label>
        <input type="checkbox" name="rang" id="rang" value="true" <?=$paramettre->rang?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="decision">Decision</label>
        <input type="checkbox" name="decision" id="decision" value="true" <?=$paramettre->decision?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="mention">Mention</label>
        <input type="checkbox" name="mention" id="mention" value="true" <?=$paramettre->mention?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="mention_decision">Mention Decision</label>
        <input type="checkbox" name="mention_decision" id="mention_decision" value="true" <?=$paramettre->mention_decision?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="absences">Absences</label>
        <input type="checkbox" name="absences" id="absences" value="true" <?=$paramettre->absences?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="observations">Observations</label>
        <input type="checkbox" name="observations" id="observations" value="true" <?=$paramettre->observations?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="image">Image</label>
        <input type="checkbox" name="image" id="image" value="true" <?=$paramettre->image?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="striped">Striped</label>
        <input type="checkbox" name="striped" id="striped" value="true" <?=$paramettre->striped?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="bordered">Bordered</label>
        <input type="checkbox" name="bordered" id="bordered" value="true" <?=$paramettre->bordered?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="orientation">Orientation</label>
        <select name="orientation" id="orientation">
            <option value="portrait" <?=$paramettre->orientation=='portrait'?'selected' : ''?>>Portrait</option>
            <option value="landscape" <?=$paramettre->orientation=='landscape'?'selected' : ''?>>Landscape</option>
        </select>
    </li>
    <li class="list-group-item">
        <label for="sort">Sort</label>
        <select name="sort" id="sort">
            <option value="merite" <?=$paramettre->sort=='merite'?'selected' : ''?>>Merite</option>
            <option value="numero" <?=$paramettre->sort=='numero'?'selected' : ''?>>Numero</option>
            <option value="nom" <?=$paramettre->sort=='nom'?'selected' : ''?>>Nom</option>
            <option value="matricule" <?=$paramettre->sort=='matricule'?'selected' : ''?>>Matricule</option>
        </select>
    </li>
    <li class="list-group-item">
        <label for="order">Order</label>
        <select name="order" id="order">
            <option value="ASC" <?=$paramettre->order=='ASC'?'selected' : ''?>>ASC</option>
            <option value="DESC" <?=$paramettre->order=='DESC'?'selected' : ''?>>DESC</option>
        </select>
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
        
        await fetchText(`?p=api/paramettre/bulletin/true&` + dtSring).then(data => {
            console.log(data);
            alert('Paramettre enregistré');
            window.location.reload();
        }).catch(error => {
            console.log(error);
        });
    });
</script>
