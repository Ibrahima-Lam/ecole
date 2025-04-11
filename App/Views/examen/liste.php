<?php
$classes??=[];
$matieres??=[];
$evaluations??=[];
?>

<script type="module" src="js/examen/liste.js" defer></script>
<h2 class="title text-center my-10">Les Examens </h2>

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
          <option value="<?= $evaluation->codeEvaluation ?>"><?= $evaluation->nomEvaluation ?></option>
        <?php endforeach ?>
      </select>
  
    </div>

<div class="table-container">
    <table class="table table-striped my-10" id="table">
        <thead>
            <tr>
                <th>Code</th>
                <th>Classe</th>
                <th>Matiere</th>
                <th>Type</th>
                <th>Date</th>
                <th>Actions</th>   
            </tr>
        </thead>
        <tbody>
            <?php
           
            foreach ($data as $examen): ?>
                <tr>
                    <td><?= $examen->codeExamen ?></td>
                    <td><?= $examen->codeClasse ?><?= $examen->indiceSalleClasse ?></td>
                    <td><?= $examen->codeMatiere ?></td>
                    <td><?= $examen->nomEvaluation ?></td>
                    <td><?= $examen->dateExamen ?></td>
                    <td>
                        <div class="center">
                        <a href="?p=note/examen/<?= $examen->codeExamen ?>"><i class="bi-list"></i></a>
                        <a class="add" title="Ajouter des notes" data-code="<?= $examen->codeExamen ?>"><i class="bi-plus text-success"></i></a>
                        <a class="edit" title="Editer" data-code="<?= $examen->codeExamen ?>"><i class="bi-pencil text-primary"></i></a>
                        <a class="delete" title="Supprimer" data-code="<?= $examen->codeExamen ?>"><i class="bi-trash text-danger"></i></a>
                        </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
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
<dialog id="noteDialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body">
        
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="closeNote">Fermer</button>
    </div>
</dialog>
