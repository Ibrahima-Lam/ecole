<?php
$title = __("Relevé de notes");

?>
<input type="hidden"id="codeSalleClasse" name="codeSalleClasse" value="<?= htmlspecialchars($codeSalleClasse) ?>">
<input type="hidden"id="codeMatiere" name="codeMatiere" value="<?= htmlspecialchars($codeMatiere) ?>">

<div class="space-between">
    <p><?=__("La classe")?>
    </p>
    <select class="field width-100px" id="changeSalleClasse">
        <?php foreach ($sallesClasse as $sc): ?>
            <option value="<?= htmlspecialchars($sc->codeSalleClasse) ?>" <?= $sc->codeSalleClasse == $codeSalleClasse ? 'selected' : '' ?>><?= htmlspecialchars($sc->pseudoSalleClasse) ?></option>
        <?php endforeach ?>
    </select> 
    <p>
        <?=__("La matiere")?></p>
    <select class="field width-100px" id="changeMatiere">
        <?php foreach ($matieres as $matiere): ?>
            <option value="<?= htmlspecialchars($matiere->codeMatiere) ?>" <?= $matiere->codeMatiere == $codeMatiere ? 'selected' : '' ?>><?= htmlspecialchars($matiere->codeMatiere) ?></option>
        <?php endforeach ?>
    </select>
</div>
<h2 class="text-center my-10"><?=__("Relevé de notes")?></h2>
<div class="space-around my-10">
    <p>
        <strong><?=__("Classe")?> :</strong> <a class='link-default' href="?p=salleClasse/profil/<?= htmlspecialchars($codeSalleClasse) ?>"><?= htmlspecialchars($salleClasse->pseudoSalleClasse) ?></a>
    </p>
    <p>
        <strong><?=__("Matière")?> :</strong> <?= htmlspecialchars($data->matiere->nomMatiere) ?>
    </p>
</div>
<?php
$examens=$data->examens[$data->matiere->codeMatiere];
?>
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
                <?php foreach ($examens as $examen) : ?>
                    <th><a href="?p=examen/details/<?= htmlspecialchars($examen->codeExamen) ?>"><?= htmlspecialchars($examen->codeEvaluation) ?></a></th>
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
                        <td><?= htmlspecialchars($eleve->matricule) ?></td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td><?= htmlspecialchars($eleve->numeroInscrit) ?></td>
                    <?php endif?>
                    <?php if($paramettre->nom):?>
                        <td>
                            <a href="?p=eleve/profil/<?=htmlspecialchars($eleve->matricule)?>"><?= htmlspecialchars($eleve->nom) ?></a>
                        
                    <?php if($paramettre->nom_isme):?>
                        <br>
                        <?= htmlspecialchars($eleve->isme) ?>
                    <?php endif?>
                    </td>
                    <?php endif?>
                    <?php if($paramettre->isme):?>
                        <td><?= htmlspecialchars($eleve->isme) ?></td>
                    <?php endif?>
                    <?php foreach ($examens as $examen) : ?>
                        <td title="<?= htmlspecialchars($examen->codeEvaluation) ?>" data-codeExamen="<?= htmlspecialchars($examen?->codeExamen) ?>" data-id="<?=htmlspecialchars($data->notes[$eleve->matricule][$examen->codeEvaluation]?->idNote??"") ?>" class="clickable td-note <?=!$examen->statutExamen?"text-warning":""?>"><?= htmlspecialchars($data->notes[$eleve->matricule][$examen->codeEvaluation]?->note??0) ?></td>
                    <?php endforeach; ?>
                    <?php if($paramettre?->moyenne_interro):?>
                        <td title="MI"><?= htmlspecialchars($eleve?->mi??0) ?></td>
                    <?php endif?>
                    <?php if($paramettre?->total):?>
                        <td title="Total"><?= htmlspecialchars($eleve?->total??0) ?></td>
                    <?php endif?>
                    <?php if($paramettre?->moyenne):?>
                        <td title="Moyenne"><?= htmlspecialchars($eleve?->moyenne??0) ?></td>
                    <?php endif?> 
                    <?php if($paramettre?->coefficient):?>
                        <td title="Coefficient"><?= htmlspecialchars($eleve?->coefficient??0) ?></td>
                    <?php endif?> 
                    <?php if($paramettre?->points):?>
                        <td title="Points"><?= htmlspecialchars($eleve?->points??0) ?></td>
                    <?php endif?> 
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>
<br>
<?php if($paramettre->statistiques):?>
    <?php
    $statistiques=$data->getStatistiques();
    ?>
    <h3 class="text-center my-10"><?=_("Statistiques des Moyennes") ?></h3>
    <div class="table-container">
    <?php
$rows = ['i1', 'i2', 'i3', 'i4', 'i5', 'i6', 'c1', 'c2', 'c3', 'mi', 'moyenne'];
$labels = [
    'note_egale_0',
    'note_entre_0_et_5',
    'note_entre_5_et_10',
    'note_entre_10_et_15',
    'note_entre_15_et_20',
    'note_superieure_ou_egale_10',
    'note_inferieure_10',
    'min_note',
    'max_note',
];
?>

<table class='table table-bordered'>
    <thead>
        <tr>
            <th>Indice</th>
            <th>= 0</th>
            <th>0–5</th>
            <th>5–10</th>
            <th>10–15</th>
            <th>15–20</th>
            <th>≥ 10</th>
            <th>&lt; 10</th>
            <th>Min</th>
            <th>Max</th>
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $row): ?>
            <tr>
                <td><?= htmlspecialchars(strtoupper($row)) ?></td>
                <?php foreach ($labels as $key): ?>
                    <td><?= htmlspecialchars($statistiques[$row][$key] ?? 0) ?></td>
                <?php endforeach; ?>
                <td><?= htmlspecialchars($statistiques['total']) ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<?php
$labels = [
    'note_egale_0',
    'note_entre_0_et_5',
    'note_entre_5_et_10',
    'note_entre_10_et_15',
    'note_entre_15_et_20',
    'note_superieure_ou_egale_10',
    'note_inferieure_10',
    
];
?>
<br>
<br>
<table class='table table-bordered'>
    <thead>
        <tr>
            <th>Indice</th>
            <th>= 0</th>
            <th>0–5</th>
            <th>5–10</th>
            <th>10–15</th>
            <th>15–20</th>
            <th>≥ 10</th>
            <th>&lt; 10</th>
           
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $row): ?>
            <tr>
                <td><?= htmlspecialchars(strtoupper($row)) ?></td>
                <?php foreach ($labels as $key): ?>
                    <td><?= htmlspecialchars(round(($statistiques[$row][$key] ?? 0)*100/($statistiques['total']?:1),2)) ?>%</td>
                <?php endforeach; ?>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

    </div>
<?php endif?>

<div class="fixed-action">
    <a class="btn btn-success circle" target="_blank" title="Imprimer" href="?p=pdf/note/releve/<?= htmlspecialchars($salleClasse->codeSalleClasse) ?>/<?= htmlspecialchars($data->matiere->codeMatiere) ?>">
        <i class="fa fa-file-pdf"></i>
    </a>
    <button id="excel" class="btn btn-success circle" title="Excel" >
        <i class="bi-file-earmark-excel"></i>
    </button>
    <button class="btn btn-primary circle" title="Paramétre" id="parametre">
        <i class="bi-gear"></i>
    </button>
</div>


<dialog class="dialog dialog-big" id="parametreDialog">
    <div class="dialog-content">
        <div class="dialog-header">
            <h3 class="title text-center"><?=__("Paraméttre")?></h3>
        </div>
        <div class="dialog-body">
           
<form class="form" id="paramettreForm">
<ul class="list-group grid-2">
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
    <li>
        <button type="submit" class="btn btn-primary"><?=__("Enregistrer")?></button>
    </li>
</ul>
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
        window.location.href = "?p=note/releveExcel/<?= htmlspecialchars($salleClasse->codeSalleClasse) ?>/<?= htmlspecialchars($data->matiere->codeMatiere) ?>";
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

document.querySelector('#changeSalleClasse')?.addEventListener('change', function (e) {
       
        let url = '?p=note/releve/' + e.target.value + '/' + document.querySelector('#codeMatiere').value
        window.location.href = url
    })
    document.querySelector('#changeMatiere')?.addEventListener('change', function (e) {
        
        let url = '?p=note/releve/' + document.querySelector('#codeSalleClasse').value + '/' + e.target.value
        window.location.href = url
    })

    document.querySelectorAll('.td-note')?.forEach(td => {
        td.addEventListener('dblclick', function() {
            const codeExamen = this.getAttribute('data-codeExamen');
            const idNote = this.getAttribute('data-id');
            const url = '?p=examen/details/' + codeExamen + '#note' + idNote;
            window.location.href = url;
        });
    });
</script>