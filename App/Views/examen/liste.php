<?php
$classes??=[];
$matieres??=[];
$evaluations??=[];
?>

<script type="module" src="js/examen/liste.js" defer></script>
<h2 class="title text-center my-10"><?=__("Les Examens")?>
 </h2>

    <div class="space-between wrap">
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
      <input type="date" name="date" id="date" class="field" placeholder="Date">
      <input type="search" name="examen" id="examen" class="field" placeholder="Code Examen">
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
                        <a href="?p=note/examen/<?= $examen->codeExamen ?>"><i class="fa fa-list text-info"></i></a>
                        <?php if($_admin):?>
                            <a class="show" title="importer les notes" href="?p=note/formulaire/<?= $examen->codeExamen ?>"><i class="fa fa-file text-info"></i></a>
                            <a class="addnote" title="Ajouter plusieurs notes" href="?p=note/addAll/<?= $examen->codeExamen ?>"><i class="fa fa-layer-group text-success"></i></a>

                            <a class="add" title="Ajouter des notes" data-code="<?= $examen->codeExamen ?>"><i class="fa fa-plus text-success"></i></a>
                            <a class="edit" title="Editer" data-code="<?= $examen->codeExamen ?>"><i class="fa fa-edit text-primary"></i></a>
                            <a class="delete" title="Supprimer" data-code="<?= $examen->codeExamen ?>"><i class="fa fa-trash text-danger"></i></a>
                           
                        <?php endif?> </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
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
<dialog id="noteDialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title"><?=__("Formulaire")?>
        </h3>
    </div>
    <div class="dialog-body">
        
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="closeNote"><?=__("Fermer")?>
        </button>
    </div>
</dialog>
<input type="hidden" value="<?=$_admin?>" id="_admin">