<script type="module" src="js/note/liste.js" defer></script>

<?php
$classes = $classes ?? [];
$matieres = $matieres ?? [];
$evaluations = $evaluations ?? [];
$notes = $notes ?? [];
?>
<h2 class="text-center my-10"><?=__("Notes")?>
</h2>
<div class="space-between">
    <select name="classe" id="classe" class="field">
        <option value=""><?=__("Toutes les classes")?>
        </option>
        <?php foreach ($classes as $classe): ?>
            <option value="<?= $classe->codeSalleClasse ?>"><?= $classe->codeClasse ?><?= $classe->indiceSalleClasse ?></option>
        <?php endforeach ?>
    </select>
    <select name="matiere" id="matiere" class="field">
        <option value=""><?=__("Toutes les matières")?>
        </option>
        <?php foreach ($matieres as $matiere): ?>
            <option value="<?= $matiere->codeMatiere ?>"><?= $matiere->codeMatiere ?></option>
        <?php endforeach ?>
    </select>
    <select name="evaluation" id="evaluation" class="field">
        <option value=""><?=__("Toutes les évaluations")?>
        </option>
        <?php foreach ($evaluations as $evaluation): ?>
            <option value="<?= $evaluation->codeEvaluation ?>"><?= $evaluation->nomEvaluation ?></option>
        <?php endforeach ?>
    </select>
    <select name="statut" id="statut" class="field">
        <option value=""><?=__("Tous les statuts")?>
        </option>
        <option value="1"><?=__("Ouvert")?>
        </option>
        <option value="0"><?=__("Fermer")?>
        </option>
      </select>
    <input type="search" name="matricule" id="matricule" class="field" placeholder="Matricule , NNI ou Code Examen">
</div>
<br>
    <div class="table-container">
<table class="table table-striped" id="note-table">
    <thead>
        <tr>
            <th><?=__("Matricule")?></th>
            <th><?=__("Nom")?></th>
            <th><?=__("Code Examen")?></th>
            <th><?=__("Note")?></th>
            <th><?=__("Date de l'examen")?></th>
            <th><?=__("Date de creation")?></th>
            <th><?=__("Date de modification")?></th>
            <th><?=__("Statut")?></th>
            <th><?=__("Actions")?></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($notes as $note): ?>
            <tr class="<?= $note->statutExamen==1?'':'text-warning' ?>">
                <td><?= $note->matricule; ?></td>
                <td><?= $note->nom; ?></td>
                <td><?= $note->codeExamen; ?></td>
                <td><?= $note->note; ?></td>
                <td><?= $note->dateExamen; ?></td>
                <td><?= $note->createdAt; ?></td>
                <td><?= $note->updatedAt; ?></td>
                <td><?= _($note->statutExamen==1?"Ouvert":"Fermer"); ?></td>
                <td>
                <div class="center">
                     <?php if($_admin):?>
                           <button class="btn circle edit" data-id="<?= $note->idNote; ?>">
                               <i class="fa fa-edit text-primary"></i>
                           </button>
                           <button class="btn  circle delete" data-id="<?= $note->idNote; ?>">
                               <i class="fa fa-trash text-danger"></i>
                           </button>
                     <?php endif?>
                </div>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
</div>
<div class="fixed-action">
 <?php if($_admin):?>
    <button class="btn btn-primary circle" id="add">
        <i class="fa fa-plus"></i>
    </button>
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
