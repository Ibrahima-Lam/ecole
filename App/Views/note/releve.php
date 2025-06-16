<?php
$title = __("Relevé de notes");

?>
<h2 class="text-center my-10"><?=__("Relevé de notes")?></h2>
<div class="space-around my-10">
    <p>
        <strong><?=__("Classe")?> :</strong> <?= $salleClasse->codeClasse. $salleClasse->indiceSalleClasse ?>
    </p>
    <p>
        <strong><?=__("Matière")?> :</strong> <?= $data->matiere->nomMatiere ?>
    </p>
</div>

<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <?php if($paramettre->matricule):?>
                    <th><?=__("Matricule")?></th>
                <?php endif?>
                <?php if($paramettre->numero):?>
                    <th><?=__("Numéro")?></th>
                <?php endif?>
                <?php if($paramettre->nom):?>
                    <th><?=__("Nom")?></th>
                <?php endif?>
                <?php if($paramettre->isme):?>
                    <th><?=__("Nom en Arabe")?></th>
                <?php endif?>
                <?php foreach ($data->examens as $examen) : ?>
                    <th><?= $examen->codeEvaluation ?></th>
                <?php endforeach; ?>
                <?php if($paramettre->moyenne_interro):?>
                    <th><?=__("MI")?></th>
                <?php endif?>
                <?php if($paramettre->total):?>
                    <th><?=__("Tot.")?></th>
                <?php endif?> 
                <?php if($paramettre->moyenne):?>
                    <th><?=__("Moy.")?></th>
                <?php endif?> 
                <?php if($paramettre->coefficient):?>
                    <th><?=__("Coefficient")?></th>
                <?php endif?>
                 <?php if($paramettre->points):?>
                    <th><?=__("Points")?></th>
                <?php endif?> 
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data->getClasseResultat() as $eleve) : ?>
                <tr>
                    <?php if($paramettre->matricule):?>
                        <td><?= $eleve->matricule ?></td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td><?= $eleve->numeroInscrit ?></td>
                    <?php endif?>
                    <?php if($paramettre->nom):?>
                        <td><?= $eleve->nom ?>
                    <?php if($paramettre->nom_isme):?>
                        <br>
                        <?= $eleve->isme ?>
                    <?php endif?>
                    </td>
                    <?php endif?>
                    <?php if($paramettre->isme):?>
                        <td><?= $eleve->isme ?></td>
                    <?php endif?>
                    <?php foreach ($data->examens as $examen) : ?>
                        <td class="<?=!$examen->statutExamen?"text-warning":""?>"><?= $eleve->notes[$examen->codeEvaluation]->note??0 ?></td>
                    <?php endforeach; ?>
                    <?php if($paramettre?->moyenne_interro):?>
                        <td><?= $eleve?->moyenneInterro??0 ?></td>
                    <?php endif?>
                    <?php if($paramettre?->total):?>
                        <td><?= $eleve?->total??0 ?></td>
                    <?php endif?>
                    <?php if($paramettre?->moyenne):?>
                        <td><?= $eleve?->moyenne??0 ?></td>
                    <?php endif?> 
                    <?php if($paramettre?->coefficient):?>
                        <td><?= $eleve?->coefficient??0 ?></td>
                    <?php endif?> 
                    <?php if($paramettre?->points):?>
                        <td><?= $eleve?->points??0 ?></td>
                    <?php endif?> 
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>
<br>
<?php if($paramettre->statistiques):?>
    <h3 class="text-center my-10"><?=_("Total des Moyennes") ?></h3>
    <div class="table-container">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th><?=__format('%s a %s',0,5) ?></th>
                    <th><?=__format('%s a %s',5,10) ?></th>
                    <th><?=__format('%s a %s',10,15) ?></th>
                    <th><?=__format('%s a %s',15,20) ?></th>
                    <th><?=_('Admis') ?></th>
                    <th><?=_('Non Admis') ?></th>
                </tr>
    
            </thead>
            <tbody>
                <tr>
                    <td><?=$data->getStatistiques()->i1 ?></td>
                    <td><?=$data->getStatistiques()->i2 ?></td>
                    <td><?=$data->getStatistiques()->i3 ?></td>
                    <td><?=$data->getStatistiques()->i4 ?></td>
                    <td><?=$data->getStatistiques()->admis ?></td>
                    <td><?=$data->getStatistiques()->nonAdmis ?></td>
                </tr>
            </tbody>
        </table>
    </div>
<?php endif?>

<div class="fixed-action">
    <a class="btn btn-success circle" target="_blank" title="Imprimer" href="?p=pdf/note/releve/<?= $salleClasse->codeSalleClasse ?>/<?= $data->matiere->codeMatiere ?>">
        <i class="fa fa-file-pdf"></i>
    </a>
    <button id="excel" class="btn btn-success circle" title="Excel" >
        <i class="bi-file-earmark-excel"></i>
    </button>
    <button class="btn btn-primary circle" title="Paramétre" id="parametre">
        <i class="bi-gear"></i>
    </button>
</div>


<dialog class="dialog" id="parametreDialog">
    <div class="dialog-content">
        <div class="dialog-header">
            <h3 class="title text-center"><?=__("Paraméttre")?></h3>
        </div>
        <div class="dialog-body">
           
<form class="form" id="paramettreForm">
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
        </div>
        <div class="dialog-footer">
            <div class="right my-10 mx-10">
                <button class="btn btn-danger" id="closeParametreDialog"><?=__("Fermer")?></button>
            </div>
        </div>
    </div>
</dialog>

<script type="module" defer>
    import {fetchJson} from './js/src/fetch.js'
    document.getElementById('excel')?.addEventListener('click', function() {
        window.location.href = "?p=note/releveExcel/<?= $salleClasse->codeSalleClasse ?>/<?= $data->matiere->codeMatiere ?>";
    });

    document.getElementById('parametre')?.addEventListener('click', function() {
        document.getElementById('parametreDialog').showModal();
    });

    document.getElementById('closeParametreDialog')?.addEventListener('click', function() {
        document.getElementById('parametreDialog').close();
    });
    const form = document.getElementById('paramettreForm');
    const dialogParametre = document.getElementById('parametreDialog');
    form?.addEventListener('submit',async function(e){
    e.preventDefault();
    const data = new FormData(form);
    const params = Object.fromEntries(data.entries());
    const dataString = (new URLSearchParams(params)).toString();
     await fetchJson('?p=api/paramettre/releve/true&' + dataString);
    dialogParametre.close();
    window.location.reload();
});
</script>