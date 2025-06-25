<?php
$title = "Relevé de notes";
?>
<div class="space-between wrap my-10">
    <?php if($_admin):?>
        <button  class="btn btn-danger link" title="<?=__("Supprimer les notes")?>" id="deleteNotes" data-code="<?= $examen->codeExamen ?>"><i class="fa fa-edit"></i>&nbsp;<span><?=__("Supprimer les notes")?></span></button>
        <button  class="btn btn-primary link" title="<?=__("Editer l'examen")?>" id="editExamen" data-code="<?= $examen->codeExamen ?>"><i class="fa fa-edit"></i>&nbsp;<span><?=__("Editer l'examen")?></span></button>
        <a  class="btn btn-primary link" title="<?=__("importer les notes")?>" href="?p=note/formulaire/<?= $examen->codeExamen ?>"><i class="fa fa-file"></i>&nbsp;<span><?=__("Importer les notes")?></span></a>
        <a class="btn btn-success link" title="<?=__("Ajouter plusieurs notes")?>" href="?p=note/addAll/<?= $examen->codeExamen ?>"><i class="fa fa-layer-group"></i>&nbsp;<span><?=__("Ajouter plusieurs notes")?></span></a>
    <?php endif?>
    <select class="field" id="changeExamen">
        <?php foreach ($allExamen as $ex): ?>
            <?php if($ex->codeExamen == $examen->codeExamen): ?>
                <option value="<?= $ex->codeExamen ?>" selected><?= $ex->nomEvaluation ?></option>
            <?php else: ?>
                <option value="<?= $ex->codeExamen ?>"><?= $ex->nomEvaluation ?></option>
            <?php endif ?>
        <?php endforeach ?>
    </select>
</div>
<?php if($examen->statutExamen==0):?>
   <p class="text-warning"><?=__("L'examen est fermé. veuillez l'ouvrir en changeant son statut.")?></p> 
<?php endif?>

<h2 class="title text-center my-10"><?=__("Relevé de notes")?></h2>
<div class="space-between wrap my-10">
    <p><strong><?=__("Code Examen")?>
    </strong>:
    <span><?= $examen->codeExamen ?></span>
    </p>
    <p><strong><?=__("Classe")?>
    </strong>:
    <span><?= $examen->pseudoSalleClasse ?></span>
    </p>
    <p><strong><?=__("Matière")?>
    </strong>:
    <span><?= $examen->codeMatiere ?></span>
    </p>
    <p><strong><?=__("Examen")?>
    </strong>:
    <span><?= $examen->nomEvaluation ?></span>
    </p>
    <p><strong><?=__("Date de l'examen")?>
    </strong>:
    <span><?= $examen->dateExamen ?></span>
    </p>
</div>

<br>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Matricule</th>
                <th>Numero</th>
                <th>Nom</th>
                <th>Crée le</th>
                <th>Modifiée le</th>
                <th>Note</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($notes as $note): ?>
                <tr class="note <?= $note->statutExamen==0?'text-warning':'' ?>" data-matricule="<?= $note->matricule ?>">
                    <td><?= $note->matricule ?></td>
                    <td><?= $note->numeroInscrit ?></td>
                    <td>
                        <?= $note->nom ?>
                        <br>
                        <?= $note->isme ?>
                    </td>
                    <td><?= $note->createdAt ?></td>
                    <td><?= $note->updatedAt ?></td>
                    <td><?= $note->note ?></td>
                    <td>
                       <?php if($_admin):?>
                         <div class="center">
                             <a class="edit" title="Editer" data-id="<?= $note->idNote ?>"><i class="fa fa-edit text-primary"></i></a>
                             <a class="delete" title="Supprimer" data-id="<?= $note->idNote ?>"><i class="fa fa-trash text-danger"></i></a>
                         </div>
                       <?php endif?>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<div class="fixed-action">
    <a class="btn btn-success circle" target="_blank" title="Imprimer" href="?p=pdf/note/examen/<?= $examen->codeExamen ?>"><i
            class="fa fa-file-pdf"></i></a>
    <button id="excel" class="btn btn-success circle" title="Excel" data-code="<?= $examen->codeExamen ?>" >
        <i class="fa fa-file-excel"></i>
    </button>
    <button class="btn btn-primary circle" title="Paramétre" id="parametre"><i class="fa fa-gear"></i></button>
   <?php if($_admin):?>
     <button class="btn btn-primary circle" title="Ajouter" id="add" data-code="<?= $examen->codeExamen ?>"><i class="fa fa-plus"></i></button>
 
   <?php endif?></div>

<dialog class="dialog" id="parametreDialog">
    <div class="dialog-content">
        <div class="dialog-header">
            <h3 class="title text-center">Paraméttre</h3>
        </div>
        <div class="dialog-body">
            <form id="parametreForm">
                <div class="form-group">
                    <label for="matricule">Matricule</label>
                    <input type="checkbox" id="matricule" name="matricule" <?= $noteParam->matricule ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="numero">Numero</label>
                    <input type="checkbox" id="numero" name="numero" <?= $noteParam->numero ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="nom">Nom</label>
                    <input type="checkbox" id="nom" name="nom" <?= $noteParam->nom ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="isme">Nom en Arabe</label>
                    <input type="checkbox" id="isme" name="isme" <?= $noteParam->isme ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="nom_isme">Nom en Français et Arabe</label>
                    <input type="checkbox" id="nom_isme" name="nom_isme" <?= $noteParam->nom_isme ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="sort">Tri</label>
                    <select id="sort" name="sort" class="form-control">
                        <option value="numeroInscrit" <?= $noteParam->sort == 'numero' ? 'selected' : '' ?>>Numero</option>
                        <option value="note" <?= $noteParam->sort == 'note' ? 'selected' : '' ?>>Note</option>
                        <option value="createdAt" <?= $noteParam->sort == 'createdAt' ? 'selected' : '' ?>>Crée le</option>
                        <option value="updatedAt" <?= $noteParam->sort == 'updatedAt' ? 'selected' : '' ?>>Modifiée le</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="order">Ordre</label>
                    <select id="order" name="order" class="form-control">
                    <option value="ASC" <?= $noteParam->order == 'ASC' ? 'selected' : '' ?>>Ascendant</option>
                    <option value="DESC" <?= $noteParam->order == 'DESC' ? 'selected' : '' ?>>Descendant</option>
                </select>
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-success" >Enregistrer</button>
            </div>
            </form>
        </div>
        <div class="dialog-footer">
            <div class="right my-10 mx-10">
                <button class="btn btn-danger" id="closeParametreDialog">Fermer</button>
            </div>
        </div>
    </div>
</dialog>

<dialog class="dialog" id="dialog">
    <div class="dialog-header">
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body"></div>
    <div class="dialog-footer">
        <div class="right my-10 mx-10">
            <button class="btn btn-danger" id="closeDialog">Fermer</button>
        </div>
    </div>
</dialog>
<script src="./js/examen/details.js" type="module" defer></script>


<dialog id="examenDialog" class="dialog">
    <div class="dialog-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body">
        
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close">Fermer</button>
    </div>
</dialog>