<?php
$salleclasses ??= [];
$date ??= date('Y-m-d');
?>

<script type="module" src="js/absenceClasse/liste.js" defer></script>
<h2 class="title text-center my-10"><?=__("Les Absents par Classe")?>
</h2>

<div class="space-between wrap">
    <select name="classe" id="codeSalleClasse" class="field">
       <?php if(count($salleclasses)>1):?>
         <option value=""><?=__("Toutes les classes")?>
       <?php endif?>
        </option>
        <?php foreach ($salleclasses as $salleclasse): ?>
            <option value="<?= $salleclasse->codeSalleClasse ?>" <?= $salleclasse->codeSalleClasse == $codeSalleClasse ? 'selected' : '' ?>><?= htmlspecialchars($salleclasse->pseudoSalleClasse) ?></option>
        <?php endforeach ?>
    </select>

    <input type="date" name="dateDebut" id="dateDebut" class="field" value="<?= $dateDebut ?? date('Y-m-01') ?>">
    <input type="date" name="dateFin" id="dateFin" class="field" value="<?= $dateFin ?? date('Y-m-t') ?>">
    <select name="matiere" id="codeMatiere" class="field">
        <option value=""><?=__("Toutes les matières")?>
        </option>
        <?php foreach ($matieres as $matiere): ?>
            <option value="<?= $matiere->codeMatiere ?>" <?= $matiere->codeMatiere == $codeMatiere ? 'selected' : '' ?>><?= htmlspecialchars($matiere->codeMatiere) ?></option>
        <?php endforeach ?>
    </select>
    <select name="horaire" id="codeHoraire" class="field">
        <option value=""><?=__("Toutes les horaires")?>
        </option>
        <?php foreach ($horaires as $horaire): ?>
            <option value="<?= $horaire->codeHoraire ?>" <?= $horaire->codeHoraire == $codeHoraire ? 'selected' : '' ?>><?= htmlspecialchars($horaire->nomHoraire) ?></option>
        <?php endforeach ?>
    </select>
</div>

<div class="table-container">
    <table class="table table-striped my-10" id="table">
        <thead>
            <tr>
                <th><?=__("Salle de Classe")?>
                </th>
                <th><?=__("Horaire")?>
                </th>
                <th><?=__("Date d'absence")?>
                </th>
                <th><?=__("Absents")?>
                </th>
                <th><?=__("Justifies")?>
                </th>
                <th><?=__("Actions")?>
                </th>
            </tr>
        </thead>
        <tbody id="absenceClasseTableBody">
            <!-- Data will be loaded here by JavaScript -->
        </tbody>
    </table>
</div>

<div class="fixed-action">
    <?php if($_admin):?>
    <a href="?p=absenceClasse/form" class="btn btn-primary circle add" id="add"><i class="fa fa-plus"></i></a>
    <?php endif?>
</div>

<dialog id="dialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title"><?=__("Formulaire")?>
        </h3>
    </div>
    <div class="dialog-body">
        
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close"><?=__("Fermer")?>
        </button>
    </div>
</dialog>
<input type="hidden" value="<?=$_admin?>" id="_admin">