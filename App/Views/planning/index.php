<script type="module" src="js/planning/index.js"></script>
<h1 class="title text-center">Planning</h1>

<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th><?= __("Salle Classe") ?></th>
                <th><?= __("Matiere") ?></th>
                <th><?= __("Jour") ?></th>
                <th><?= __("Horaire") ?></th>
                <th><?= __("Professeur") ?></th>
                <th><?= __("Actions") ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($plannings as $planning): ?>
                <tr id="planning-<?= $planning->idPlanning ?>">
                    <td><?= $planning->pseudoSalleClasse ?></td>
                    <td><?= $planning->codeMatiere ?></td>
                    <td><?= $planning->jourPlanning ?></td>
                    <td><?= $planning->nomHoraire ?></td>
                    <td><?= $planning->nomProfesseur ?></td>
                    <td>
                        <?php if ($_admin ?? false): ?>
                            <div class="center">
                                <button data-id="<?= $planning->idPlanning ?>" class="btn btn-primary edit"><i class="fas fa-pencil"></i></button>
                                <button data-id="<?= $planning->idPlanning ?>" class="btn btn-danger delete"><i class="fas fa-trash"></i></button>

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
                    <?php foreach ($professeurs as $professeur): ?>
                        <option value="<?= $professeur->matriculeProfesseur ?>"><?= $professeur->nomProfesseur ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeSalleClasse"><?= __("Salle de Classe") ?></label>
                <select class="form-control" name="codeSalleClasse" id="codeSalleClasse" required>
                    <?php foreach ($salleClasses as $salleClass): ?>
                        <option value="<?= $salleClass->codeSalleClasse ?>"><?= $salleClass->pseudoSalleClasse ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeMatiere"><?= __("Matiere") ?></label>
                <select class="form-control" name="codeMatiere" id="codeMatiere" required>
                    <?php foreach ($matieres as $matiere): ?>
                        <option value="<?= $matiere->codeMatiere ?>"><?= $matiere->nomMatiere ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="jourPlanning"><?= __("Jour") ?></label>
                <select class="form-control" name="jourPlanning" id="jourPlanning" required>
                    <?php foreach ($jours as $jour): ?>
                        <option value="<?= $jour ?>"><?= $jour ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeHoraire"><?= __("Horaire") ?></label>
                <select class="form-control" name="codeHoraire" id="codeHoraire" required>
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