<?php
$title = "Relevé de notes";
?>

<h2 class="title text-center my-10">Relevé de notes</h2>
<div class="space-between wrap my-10">
    <p><strong>Code Examen</strong>:
    <span><?= $examen->codeExamen ?></span>
    </p>
    <p><strong>Classe</strong>:
    <span><?= $examen->codeClasse ?><?= $examen->indiceSalleClasse ?></span>
    </p>
    <p><strong>Matière</strong>:
    <span><?= $examen->codeMatiere ?></span>
    </p>
    <p><strong>Examen</strong>:
    <span><?= $examen->nomEvaluation ?></span>
    </p>
    <p><strong>Date de l'examen</strong>:
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
                <tr class="note" data-matricule="<?= $note->matricule ?>">
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
                        <div class="center">
                            <a class="edit" title="Editer" data-id="<?= $note->idNote ?>"><i class="bi-pencil text-primary"></i></a>
                            <a class="delete" title="Supprimer" data-id="<?= $note->idNote ?>"><i class="bi-trash text-danger"></i></a>
                        </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<div class="fixed-action">
    <a class="btn btn-success circle" title="Imprimer" href="?p=pdf/note/examen/<?= $examen->codeExamen ?>"><i
            class="bi-printer"></i></a>
    <button id="excel" class="btn btn-success circle" title="Excel" data-code="<?= $examen->codeExamen ?>" >
        <i class="bi-file-earmark-excel"></i>
    </button>
    <button class="btn btn-primary circle" title="Paramétre" id="parametre"><i class="bi-gear"></i></button>
    <button class="btn btn-primary circle" title="Ajouter" id="add" data-code="<?= $examen->codeExamen ?>"><i class="bi-plus"></i></button>
</div>

<dialog class="dialog" id="parametreDialog">
    <div class="dialog-content">
        <div class="dialog-header">
            <h3>Paramétre</h3>
        </div>
        <div class="dialog-body">
            <form id="parametreForm">
                <div class="form-group">
                    <label for="matricule">Matricule</label>
                    <input type="checkbox" id="matricule" name="matricule" checked>
                </div>
                <div class="form-group">
                    <label for="numero">Numero</label>
                    <input type="checkbox" id="numero" name="numero" checked>
                </div>
                <div class="form-group">
                    <label for="nom">Nom</label>
                    <input type="checkbox" id="nom" name="nom" checked>
                </div>
                <div class="form-group">
                    <label for="isme">Isme</label>
                    <input type="checkbox" id="isme" name="isme" checked>
                </div>
                <div class="form-group">
                    <label for="nom_isme">Nom en Arabe</label>
                    <input type="checkbox" id="nom_isme" name="nom_isme">
                </div>
                <div class="form-group">
                    <label for="sort">Tri</label>
                    <select id="sort" class="form-control">
                        <option value="note">Note</option>
                        <option value="createdAt">Crée le</option>
                    <option value="updatedAt">Modifiée le</option>
                </select>
            </div>
            <div class="form-group">
                <label for="order">Ordre</label>
                <select id="order" class="form-control">
                    <option value="ASC">Ascendant</option>
                    <option value="DESC">Descendant</option>
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
<script src="./js/note/examen.js" type="module" defer></script>
