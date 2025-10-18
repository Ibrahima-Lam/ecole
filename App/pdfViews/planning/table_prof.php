<h2 class="title text-center"><?= __("Emploi du Temps de(s) Professeur(s)") ?></h2>

<?php foreach ($professeurs as $prof): ?>
    <h3 class="title text-center"><?= $prof->nomProfesseur ?></h3>

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
                            <td data-salleclasse="<?= $prof->matriculeProfesseur ?>" data-horaire="<?= $horaire->codeHoraire ?>" data-jour="<?= $jour->codeJour ?>">
                                <?php
                                $planningEntry = $data[$prof->matriculeProfesseur][$horaire->codeHoraire][$jour->codeJour] ?? null;
                                if ($planningEntry):
                                    $professeurName = $planningEntry->nomProfesseur ?? '';
                                    $matiereName = $planningEntry->codeMatiere ?? '';
                                    $classeName = $planningEntry->pseudoSalleClasse ?? '';



                                ?>
                                    <div class="planning-entry">
                                        <strong><?= $classeName ?></strong><br>
                                        <em><?= $matiereName ?></em>
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