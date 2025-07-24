<?php
$title = 'Les absences';
?>
<?= $subsidebar ?>
<script type="module" src="js/eleve/absence.js" defer></script>
<h2 class="title text-center my-10"><?= __("Les Absences") ?></h2>

<div class="center my-10">
    <input type="search" class="field" id="srch" placeholder="<?= __("Rechercher une absence") ?>"/>
</div>

<input type="hidden" id="admin" value="<?= $_admin ?? false ?>">
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th data-sort="matricule" class="sortable">
                    <div class="sort flex-start">
                        <?= __("Matricule") ?>
                    </div>
                </th>
                <th data-sort="nombreAbsence" class="sortable">
                    <div class="sort flex-start">
                        <?= __("Nombre d'absence") ?>
                    </div>
                </th>
                <th data-sort="trimestreAbsence" class="sortable">
                    <div class="sort flex-start">
                        <?= __("Trimestre") ?>
                    </div>
                </th>
                <th data-sort="codeAnnee" class="sortable">
                    <div class="sort flex-start">
                        <?= __("Annee Scolaire") ?>
                    </div>
                </th>
                <th><?= __("Actions") ?></th>
            </tr>
        </thead>
        <tbody>
            <?php
            
            foreach ($absences as $absence): ?>
                <tr data-id="<?= $absence->idAbsence ?>">
                    <td><?= $absence->matricule ?></td>
                    <td><?= $absence->nombreAbsence ?></td>
                    <td><?= $absence->trimestreAbsence ?></td>
                    <td><?= $absence->codeAnnee ?></td>
                    <td>
                        <div class="center">
                            <div class="edit" title="<?= __("Editer l'absence") ?>" data-id="<?= $absence->idAbsence ?>">
                                <i class="fa fa-edit text-primary"></i>
                            </div>
                            <div class="delete" title="<?= __("Supprimer l'absence") ?>" data-id="<?= $absence->idAbsence ?>">
                                <i class="fa fa-trash text-danger"></i>
                            </div>
                        </div>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<div class="fixed-action">
    <?php if ($_admin ?? false): ?>
        <button title="<?= __("Ajouter une absence") ?>" class="btn btn-success circle" id="add">
            <i class="fa fa-plus"></i>
        </button>
    <?php endif ?>
</div>

<dialog id="dialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title"><?= __("Formulaire d'absence") ?></h3>
    </div>
    <div class="dialog-body">
        <form class="form" action="?p=eleve/absence/traitement" method="post">
            <input type="hidden" name="edit">
            <div class="form-group">
                <label for="matricule"><?= __("Matricule") ?></label>
                <input type="text" class="form-control" id="matricule" name="matricule" placeholder="Entrer le matricule" required>
            </div>
            <div class="form-group">
                <label for="nombreAbsence"><?= __("Nombre d'absence") ?></label>
                <input type="number" class="form-control" id="nombreAbsence" name="nombreAbsence" placeholder="Entrer le nombre d'absence" required>
            </div>
            <div class="form-group">
                <label for="trimestreAbsence"><?= __("Trimestre") ?></label>
                <select name="trimestreAbsence" id="trimestreAbsence" class="form-control">
                    <option value="1">Trimestre 1</option>
                    <option value="2">Trimestre 2</option>
                    <option value="3">Trimestre 3</option>
                </select>
            </div>
            <div class="form-action">
                <button type="reset" class="btn btn-default"><?= __("Annuler") ?></button>
                <button type="submit" class="btn btn-primary"><?= __("Enregistrer") ?></button>
            </div>
        </form>
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close"><?= __("Fermer") ?></button>
    </div>
</dialog>
