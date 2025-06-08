<?=$subsidebar??'' ?>
<h2 class="text-center title"><?= __("Correspondants") ?></h2>

<div class="table-container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th></th>
                    <th data-sort="nomCorrespondant" class="sortable"><?= __("Nom") ?></th>
                    <th data-sort="ismeCorrespondant" class="sortable"><?= __("Nom en arabe") ?></th>
                    <th data-sort="sexeCorrespondant" class="sortable"><?= __("Sexe") ?></th>
                    <th data-sort="adresseCorrespondant" class="sortable"><?= __("Adresse") ?></th>
                    <th data-sort="telCorrespondant" class="sortable"><?= __("Tel") ?></th>
                    <th data-sort="emailCorrespondant" class="sortable"><?= __("Email") ?></th>
                    <th data-sort="nniCorrespondant" class="sortable"><?= __("NNI") ?></th>
                    <th><?= __("Actions") ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($correspondances as $correspondance): ?>
                    <tr data-id="<?= $correspondance->idCorrespondant ?>">
                        <td>
                            <div class="center img-circle">
                                <?php if (file_exists("profiles/correspondant/" . $correspondance->imagePathCorrespondant) && $correspondance->imagePathCorrespondant): ?>
                                    <img src="profiles/correspondant/<?= $correspondance->imagePathCorrespondant ?>">
                                <?php else: ?>
                                    <div class="center">
                                        <i class="fa fa-user"></i>
                                    </div>
                                <?php endif ?>
                            </div>
                        </td>
                        <td><?= $correspondance->nomCorrespondant ?></td>
                        <td><?= $correspondance->ismeCorrespondant ?></td>
                        <td><?= $correspondance->sexeCorrespondant ?></td>
                        <td><?= $correspondance->adresseCorrespondant ?></td>
                        <td><?= $correspondance->telCorrespondant ?></td>
                        <td><?= $correspondance->emailCorrespondant ?></td>
                        <td><?= $correspondance->nniCorrespondant ?></td>
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
