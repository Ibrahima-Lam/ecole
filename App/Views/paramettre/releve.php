<h2 class="title-center my-10 text-center"><?=__("Paramettre des relevés")?>
</h2>

<form class="form" id="form" action="" method="post">
<ul class="list-group">
    <li class="list-group-item">
        <label for="matricule"><?=__("Matricule")?></label>
        <input type="checkbox" name="matricule" id="matricule" value="true" <?=$paramettre->matricule?'checked' : ''?>>
    </li> 
    <li class="list-group-item">
        <label for="numero"><?=__("Numero")?></label>
        <input type="checkbox" name="numero" id="numero" value="true" <?=$paramettre->numero?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nom"><?=__("Nom")?></label>
        <input type="checkbox" name="nom" id="nom" value="true" <?=$paramettre->nom?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="isme"><?=__("Isme")?></label>
        <input type="checkbox" name="isme" id="isme" value="true" <?=$paramettre->isme?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nom_isme"><?=__("Nom et Isme")?></label>
        <input type="checkbox" name="nom_isme" id="nom_isme" value="true" <?=$paramettre->nom_isme?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nni"><?=__("NNI")?></label>
        <input type="checkbox" name="nni" id="nni" value="true" <?=$paramettre->nni?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="merite"><?=__("Merite")?></label>
        <input type="checkbox" name="merite" id="merite" value="true" <?=$paramettre->merite?'checked' : ''?>>
    </li> 
    <li class="list-group-item">
        <label for="statistiques"><?=__("Statistiques")?></label>
        <input type="checkbox" name="statistiques" id="statistiques" value="true" <?=$paramettre->statistiques?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="striped"><?=__("Striped")?></label>
        <input type="checkbox" name="striped" id="striped" value="true" <?=$paramettre->striped?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="bordered"><?=__("Bordered")?></label>
        <input type="checkbox" name="bordered" id="bordered" value="true" <?=$paramettre->bordered?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="moyenne"><?=__("Moyenne")?></label>
        <input type="checkbox" name="moyenne" id="moyenne" value="true" <?=$paramettre->moyenne?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="moyenne_interro"><?=__("Moyenne interro")?></label>
        <input type="checkbox" name="moyenne_interro" id="moyenne_interro" value="true" <?=$paramettre->moyenne_interro?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="coefficient"><?=__("Coefficient")?></label>
        <input type="checkbox" name="coefficient" id="coefficient" value="true" <?=$paramettre->coefficient?'checked' : ''?>>
    </li> 
    <li class="list-group-item">
        <label for="points"><?=__("Points")?></label>
        <input type="checkbox" name="points" id="points" value="true" <?=$paramettre->points?'checked' : ''?>>
    </li> 
    <li class="list-group-item">
        <label for="total"><?=__("Total")?></label>
        <input type="checkbox" name="total" id="total" value="true" <?=$paramettre->total?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="sort"><?=__("Sort")?></label>
        <select name="sort" id="sort">
            <option value="merite" <?=$paramettre->sort=='merite'?'selected' : ''?>><?=__("Merite")?></option>
            <option value="numero" <?=$paramettre->sort=='numero'?'selected' : ''?>><?=__("Numero")?></option>
            <option value="nom" <?=$paramettre->sort=='nom'?'selected' : ''?>><?=__("Nom")?></option>
            <option value="matricule" <?=$paramettre->sort=='matricule'?'selected' : ''?>><?=__("Matricule")?></option>
        </select>
    </li>
    <li class="list-group-item">
        <label for="order"><?=__("Order")?></label>
        <select name="order" id="order">
            <option value="ASC" <?=$paramettre->order=='ASC'?'selected' : ''?>><?=__("ASC")?></option>
            <option value="DESC" <?=$paramettre->order=='DESC'?'selected' : ''?>><?=__("DESC")?></option>
        </select>
    </li>
    
</ul>
<button type="submit" class="btn btn-primary"><?=__("Enregistrer")?></button>
</form>

<script type="module">
    import {fetchText} from "./js/src/fetch.js";
    document.getElementById('form')?.addEventListener('submit',async function (e) {
        e.preventDefault();
        let formData = new FormData(e.target);
        let dtSring = new URLSearchParams(formData).toString()
        console.log(dtSring);
        
        await fetchText(`?p=api/paramettre/releve/true&` + dtSring).then(data => {
            console.log(data);
            alert(<?=__("'Paramettre enregistré'")?>);
            window.location.reload();
        }).catch(error => {
            console.log(error);
        });
    });
</script>
