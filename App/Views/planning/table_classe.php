<?= $subsidebar ?? '' ?>



<?php foreach ($salleClasses as $sc): ?>
    <h3 class="title text-center"><?= $sc->pseudoSalleClasse ?></h3>

    <div class="table-container">
        <table class="table table-bordered planning-table">
            <thead>
                <tr>
                    <th><?= __("Horaire / Jour") ?></th>
                    <?php foreach ($jours as $jour): ?>
                        <th><?= $jour->nomJour ?></th>
                    <?php endforeach ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($horaires as $horaire): ?>
                    <tr>
                        <td><?= $horaire->nomHoraire ?></td>
                        <?php foreach ($jours as $jour): ?>
                            <td data-salleclasse="<?= $sc->codeSalleClasse ?>" data-horaire="<?= $horaire->codeHoraire ?>" data-jour="<?= $jour->codeJour ?>">
                                <?php
                                $planningEntry = $data[$sc->codeSalleClasse][$horaire->codeHoraire][$jour->codeJour] ?? null;
                                if ($planningEntry):
                                    $professeurName = $planningEntry->nomProfesseur ?? '';
                                    $matiereName = $planningEntry->codeMatiere ?? '';
                                    $classeName = $planningEntry->pseudoSalleClasse ?? '';
                                ?>
                                    <div class="planning-entry">
                                        <strong><?= $matiereName ?></strong><br>
                                        <em><a href="?p=planning/table_profs/<?= $planningEntry->matriculeProfesseur ?? '#' ?>"><?= $professeurName ?></a></em>
                                    </div>
                                <?php else: ?>
                                    <div class="planning-entry empty">
                                        <span></span>
                                    </div>
                                <?php endif; ?>
                            </td>
                        <?php endforeach; ?>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <br>

<?php endforeach; ?>

<div class="fixed-action">
    <?php if ($_admin ?? false): ?>
        <?php $href = $codeSalleClasse ? "?p=pdf/planning/table_classes/$codeSalleClasse" : "?p=pdf/planning/table_classes"; ?>
        <a target="_blank" href="<?= $href ?>" id="print-planning" class="btn btn-success  circle"><i class="fas fa-file-pdf"></i></a>
    <?php endif; ?>
</div>