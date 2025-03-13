<script type="module" src="js/note/liste.js" defer></script>

<?php
$classes = $classes ?? [];
$matieres = $matieres ?? [];
$evaluations = $evaluations ?? [];
$notes = $notes ?? [];
?>
<h2 class="text-center my-10">Notes</h2>
<div class="space-between">
    <select name="classe" id="classe" class="field">
        <option value="">Toutes les classes</option>
        <?php foreach ($classes as $classe): ?>
            <option value="<?= $classe->codeSalleClasse ?>"><?= $classe->codeClasse ?><?= $classe->indiceSalleClasse ?></option>
        <?php endforeach ?>
    </select>
    <select name="matiere" id="matiere" class="field">
        <option value="">Toutes les matières</option>
        <?php foreach ($matieres as $matiere): ?>
            <option value="<?= $matiere->codeMatiere ?>"><?= $matiere->codeMatiere ?></option>
        <?php endforeach ?>
    </select>
    <select name="evaluation" id="evaluation" class="field">
        <option value="">Toutes les évaluations</option>
        <?php foreach ($evaluations as $evaluation): ?>
            <option value="<?= $evaluation->codeEvaluation ?>"><?= $evaluation->codeEvaluation ?></option>
        <?php endforeach ?>
    </select>
    <input type="text" name="matricule" id="matricule" class="field" placeholder="Matricule ou NNI">
</div>
<br>
    <div class="table-container">
<table class="table table-striped" id="note-table">
    <thead>
        <tr>
            <th>Matricule</th>
            <th>Nom</th>
            <th>Code Examen</th>
            <th>Note</th>
            <th>Date de l'examen</th>
            <th>Date de creation</th>
            <th>Date de modification</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($notes as $note): ?>
            <tr>
                <td><?= $note->matricule; ?></td>
                <td><?= $note->nom; ?></td>
                <td><?= $note->codeExamen; ?></td>
                <td><?= $note->note; ?></td>
                <td><?= $note->dateExamen; ?></td>
                <td><?= $note->createdAt; ?></td>
                <td><?= $note->updatedAt; ?></td>
                <td>
                    <button class="btn btn-primary circle edit" data-id="<?= $note->idNote; ?>">
                        <i class="bi-pencil"></i>
                    </button>
                    <button class="btn btn-danger circle delete" data-id="<?= $note->idNote; ?>">
                        <i class="bi-trash"></i>
                    </button>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
</div>
<div class="fixed-action">
    <button class="btn btn-primary circle" id="add">
        <i class="bi-plus"></i>
    </button>
</div>
<dialog id="dialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body">
        
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close">Fermer</button>
    </div>
</dialog>