<?php
$classe ??= null;
?>
<input type="hidden" id="classe" name="classe" value="<?= $classe ? $classe->codeSalleClasse ?? null : null ?>">

<script type="module" src="js/examen/classe.js" defer></script>
<h2 class="title text-center my-10">Les Examens
    <?= $classe ? 'de la classe ' . $classe->codeClasse . $classe->indiceSalleClasse : '' ?></h2>

<?php foreach ($data->getMatiereExamen() as $matiere): ?>

    <h3 class="title text-center my-10"><u><?= $matiere->matiere->nomMatiere ?></u></h3>
    <div class="table-container">
        <table class="table table-striped my-10">
            <thead>
                <tr>
                    <th><?=__("Code")?></th>
                    <th><?=__("Classe")?></th>
                    <th><?=__("Matiere")?></th>
                    <th><?=__("Type")?></th>
                    <th><?=__("Date")?></th>
                    <th><?=__("Statut")?></th>
                    <th><?=__("Trimestre")?></th>
                    <th><?=__("Actions")?></th>
                </tr>
            </thead>
            <tbody>
                <?php

                foreach ($matiere->examens as $examen): ?>
                    <tr class="examen-row <?= $examen->statutExamen==0?'text-warning':'' ?>" data-code="<?= $examen->codeExamen ?>">
                        <td><?= $examen->codeExamen ?></td>
                        <td><?= $examen->pseudoSalleClasse ?></td>
                        <td><?= $examen->codeMatiere ?></td>
                        <td><?= $examen->nomEvaluation ?></td>
                        <td><?= $examen->dateExamen ?></td>
                        <td><?= _($examen->statutExamen == 1 ? __("Ouvert") : __("Fermer")) ?></td>
                        <td><?= $examen->trimestreExamen ?></td>
                        <td>
                            <?php if ($_admin): ?>
                                <div class="center">
                                    <a class="show" title="<?=__("Voir les notes")?>" href="?p=examen/details/<?= $examen->codeExamen ?>"><i
                                            class="fa fa-list"></i></a>
                                    <?php if ($_admin): ?>
                                        <a class="show" title="<?=__("importer les notes")?>"
                                            href="?p=note/formulaire/<?= $examen->codeExamen ?>"><i class="fa fa-file"></i></a>
                                        <a class="addnote" title="<?=__("Ajouter une note")?>" data-code="<?= $examen->codeExamen ?>"><i
                                                class="fa fa-plus text-success"></i></a>
                                        <a class="addnote" title="<?=__("Ajouter plusieurs notes")?>"
                                            href="?p=note/addAll/<?= $examen->codeExamen ?>"><i
                                                class="fa fa-layer-group text-success"></i></a>
                                        <a class="edit" title="<?=__("Editer")?>" data-code="<?= $examen->codeExamen ?>"><i
                                                class="fa fa-edit text-primary"></i></a>
                                        <a class="delete" title="<?=__("Supprimer")?>" data-code="<?= $examen->codeExamen ?>"><i
                                                class="fa fa-trash text-danger"></i></a>
                                    <?php endif ?>
                                </div>
                            <?php endif ?>
                        </td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
<?php endforeach ?>

<div class="fixed-action">
    <?php if ($_admin): ?>
        <button title="ajouter un examen" class="btn btn-success circle" id="add">
            <i class="fa fa-plus"></i>
        </button>
        <a id="paramettre" title="ajouter plusieurs examens" class="btn btn-primary circle"
            href="?p=examen/forms/<?= $classe->codeSalleClasse ?>"><i class="fa fa-briefcase"></i></a>
    <?php endif ?>
</div>

<dialog id="dialog" class="dialog">
    <div class="dialog-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body">

    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close">Fermer</button>
    </div>
</dialog>