<?= $subsidebar ?? '' ?>

<script type="module" src="js/planning/index.js"></script>
<h2 class="title text-center">
    <?php if ($prof ?? null): ?>
        <?= __("Planning de : ") . $prof->nomProfesseur ?>
    <?php elseif ($salleClasse ?? null): ?>
        <?= __("Planning de la salle de classe : ") . $salleClasse->pseudoSalleClasse ?>
    <?php else: ?>
        <?= __("Planning") ?>
    <?php endif ?>
</h2>

<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th><?= __("Salle Classe") ?></th>
                <th><?= __("Matiere") ?></th>
                <th><?= __("Jour") ?></th>
                <th><?= __("Horaire") ?></th>
                <th><?= __("Professeur") ?></th>
                <th><?= __("Modifié le") ?></th>
                <th><?= __("Actions") ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($plannings as $planning): ?>
                <tr id="planning-<?= $planning->idPlanning ?>">
                    <td><a
                            href="?p=planning/salleclasse/<?= $planning->codeSalleClasse ?>"><?= $planning->pseudoSalleClasse ?></a>
                    </td>
                    <td><?= $planning->codeMatiere ?></td>
                    <td><?= $planning->nomJour ?></td>
                    <td><?= $planning->nomHoraire ?></td>
                    <td><a href="?p=planning/prof/<?= $planning->matriculeProfesseur ?>"><?= $planning->nomProfesseur ?></a>
                    </td>
                    <td><?= $planning->updatedAt ?></td>
                    <td>
                        <?php if ($_admin ?? false): ?>
                            <div class="center">
                                <button data-id="<?= $planning->idPlanning ?>" class="btn btn-primary edit"><i
                                        class="fas fa-pencil"></i></button>
                                <button data-id="<?= $planning->idPlanning ?>" class="btn btn-danger delete"><i
                                        class="fas fa-trash"></i></button>

                            </div> <?php endif ?>
                    </td>
                </tr>
            <?php endforeach ?>

        </tbody>
    </table>
</div>

<div class="fixed-action">
    <?php if ($_admin ?? false): ?>
        <button id="add-planning" class="btn btn-success  circle"><i class="fas fa-plus"></i></button>
    <?php endif ?>
    <?php $href = ($prof ?? null) ? "?p=pdf/planning/prof/" . $prof->matriculeProfesseur : (($salleClasse ?? null) ? "?p=pdf/planning/salleclasse/" . $salleClasse->codeSalleClasse : "?p=pdf/planning/liste")  ?>

    <a target="_blank" href="<?= $href ?>" id="print-planning" class="btn btn-primary  circle"><i class="fas fa-file-pdf"></i></a>

</div>


<dialog id="dialog" class="dialog">
    <div class="dialog-head">
        <h3 class="text-center title"><?= __("Formulaire") ?>
        </h3>
    </div>
    <div class="dialog-body">
        <form class="form">
            <div class="form-group">
                <label for="matriculeProfesseur"><?= __("Professeur") ?></label>
                <select class="form-control" name="matriculeProfesseur" id="matriculeProfesseur">
                    <?php if (count($professeurs) > 1): ?>
                        <option value=""><?= __("--Selectionner un Professeur--") ?></option>
                    <?php endif ?>
                    <?php foreach ($professeurs as $professeur): ?>
                        <option value="<?= $professeur->matriculeProfesseur ?>"><?= $professeur->nomProfesseur ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeSalleClasse"><?= __("Salle de Classe") ?></label>
                <select class="form-control" name="codeSalleClasse" id="codeSalleClasse" required>
                    <?php if (count($salleClasses) > 1): ?>
                        <option value=""><?= __("--Selectionner une Salle de Classe--") ?></option>
                    <?php endif ?>
                    <?php foreach ($salleClasses as $salleClass): ?>
                        <option value="<?= $salleClass->codeSalleClasse ?>"><?= $salleClass->pseudoSalleClasse ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeMatiere"><?= __("Matiere") ?></label>
                <select class="form-control" name="codeMatiere" id="codeMatiere" required>
                    <option value=""><?= __("--Selectionner une matiere--") ?></option>
                    <?php foreach ($matieres as $matiere): ?>
                        <option value="<?= $matiere->codeMatiere ?>"><?= $matiere->nomMatiere ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeJour"><?= __("Jour") ?></label>
                <select class="form-control" name="codeJour" id="codeJour" required>
                    <option value=""><?= __("--Selectionner un jour--") ?></option>
                    <?php foreach ($jours as $jour): ?>
                        <option value="<?= $jour->codeJour ?>"><?= $jour->nomJour ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeHoraire"><?= __("Horaire") ?></label>
                <select class="form-control" name="codeHoraire" id="codeHoraire" required>
                    <option value=""><?= __("--Selectionner une horaire--") ?></option>
                    <?php foreach ($horaires as $horaire): ?>
                        <option value="<?= $horaire->codeHoraire ?>"><?= $horaire->nomHoraire ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-action">
                <button type="reset" class="btn btn-default"><?= __("Annuler") ?>
                </button>
                <button type="submit" class="btn btn-primary"><?= __("Enregistrer") ?>
                </button>
            </div>
        </form>

    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close"><?= __("Fermer") ?>
        </button>
    </div>
</dialog>