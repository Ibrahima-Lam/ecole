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
                    <td><a href="?p=planning/prof/<?= $planning->matriculeProfesseur ?? '' ?>"><?= $planning->nomProfesseur ?? '' ?></a>
                    </td>
                    <td><?= $planning->updatedAt ?></td>

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