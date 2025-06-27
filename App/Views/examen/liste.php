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
          <option value="<?= $classe->codeSalleClasse ?>"><?= htmlspecialchars($classe->pseudoSalleClasse) ?></option>
        <?php endforeach ?>
      </select>

      <select name="matiere" id="matiere" class="field">
        <option value=""><?=__("Toutes les matières")?>
        </option>
        <?php foreach ($matieres as $matiere): ?>
          <option value="<?= $matiere->codeMatiere ?>"><?= htmlspecialchars($matiere->codeMatiere) ?></option>
        <?php endforeach ?>
      </select>
      
      <select name="evaluation" id="evaluation" class="field">
        <option value=""><?=__("Toutes les évaluations")?>
        </option>
        <?php foreach ($evaluations as $evaluation): ?>
          <option value="<?= $evaluation->codeEvaluation ?>"><?= htmlspecialchars($evaluation->nomEvaluation) ?></option>
        <?php endforeach ?>
      </select> <select name="statut" id="statut" class="field">
        <option value=""><?=__("Tous les statuts")?>
        </option>
        <option value="1"><?=__("Ouvert")?>
        </option>
        <option value="0"><?=__("Fermer")?>
        </option>
      </select>
      <input type="date" name="date" id="date" class="field" placeholder="Date">
      <input type="search" name="examen" id="examen" class="field" placeholder="Code Examen">
    </div>

<div class="table-container">
    <table class="table table-striped my-10" id="table">
        <thead>
            <tr>
                <th><?=__("Code")?>
                </th>
                <th><?=__("Classe")?>
                </th>
                <th><?=__("Matiere")?>
                </th>
                <th><?=__("Type")?>
                </th>
                <th><?=__("Date")?>
                </th>
                <th><?=__("Statut")?>
                </th>
                <th><?=__("Trimestre")?>
                </th>
                <th><?=__("Actions")?>
                </th>   
            </tr>
        </thead>
        <tbody>
            <?php
           
            foreach ($data as $examen): ?>
                <tr class="examen-row <?= $examen->statutExamen==1?'':'text-warning' ?>" data-code="<?= htmlspecialchars($examen->codeExamen) ?>">
                    <td><?= htmlspecialchars($examen->codeExamen) ?></td>
                    <td><?=htmlspecialchars($examen->pseudoSalleClasse)?></td>
                    <td><?= htmlspecialchars($examen->codeMatiere) ?></td>
                    <td><?= htmlspecialchars($examen->nomEvaluation) ?></td>
                    <td><?= htmlspecialchars($examen->dateExamen) ?></td>
                    <td><?= htmlspecialchars(_($examen->statutExamen==1?"Ouvert":"Fermer")) ?></td>
                    <td><?= htmlspecialchars($examen->trimestreExamen) ?></td>
                    <td>
                        <div class="center">
                        <a href="?p=examen/details/<?= htmlspecialchars($examen->codeExamen) ?>"><i class="fa fa-list text-info"></i></a>
                        <?php if($_admin):?>
                            <a class="show" title="importer les notes" href="?p=note/formulaire/<?= htmlspecialchars($examen->codeExamen) ?>"><i class="fa fa-file text-info"></i></a>
                            <a class="addnote" title="Ajouter plusieurs notes" href="?p=note/addAll/<?= htmlspecialchars($examen->codeExamen) ?>"><i class="fa fa-layer-group text-success"></i></a>

                            <a class="add" title="Ajouter des notes" data-code="<?= htmlspecialchars($examen->codeExamen) ?>"><i class="fa fa-plus text-success"></i></a>
                            <a class="edit" title="Editer" data-code="<?= htmlspecialchars($examen->codeExamen) ?>"><i class="fa fa-edit text-primary"></i></a>
                            <a class="delete" title="Supprimer" data-code="<?= htmlspecialchars($examen->codeExamen) ?>"><i class="fa fa-trash text-danger"></i></a>
                           
                        <?php endif?> </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<div class="fixed-action">
    <?php if($_admin):?>
    <button class="btn btn-primary circle add" id="add"><i class="fa fa-plus"></i></button>
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