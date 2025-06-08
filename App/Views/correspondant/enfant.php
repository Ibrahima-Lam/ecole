<?= $subsidebar ?? '' ?>

<h2 class="title text-center"><?= __("Eleves") ?></h2>

<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th><?= __("Matricule") ?></th>
                <th><?= __("Nom") ?></th>
                <th><?= __("Nom en arabe") ?></th>
                <th><?= __("Sexe") ?></th>
                <th><?= __("Adresse") ?></th>
                <th><?= __("Classe") ?></th>
                <th><?= __("Actions") ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($correspondances as $correspondance): ?>
                <tr data-id="<?= $correspondance->idCorrespondance ?>">
                    <td><?= $correspondance->matricule ?></td>
                    <td><?= $correspondance->nom ?></td>
                    <td><?= $correspondance->isme ?></td>
                    <td><?= $correspondance->sexe ?></td>
                    <td><?= $correspondance->adresse ?></td>
                    <td><?= $correspondance->pseudoSalleClasse ?></td>
                    <td>
                        <?php if ($_admin): ?>
                            <div class="center">
                                <button type="button" data-id="<?= $correspondance->idCorrespondant ?>"
                                    class="btn edit"><i class="fa fa-edit text-primary"></i></button>
                                <button type="button" data-id="<?= $correspondance->idCorrespondant ?>"
                                    class="btn delete"><i class="fa fa-trash text-danger"></i></button>
                            </div>
                        <?php endif ?>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>


