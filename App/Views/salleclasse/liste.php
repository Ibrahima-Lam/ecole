
    <?=$subsidebar ?>
<h2 class="title text-center">Les Salles de classes d'Annee Scolaire <?= $annee->nomAnnee ?></h2>

<?php if (sizeof($data) > 0): ?>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Code Salle Classe</th>
                <th>code Classe</th>
                <th>Classe</th>
                <th>Salle</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

            <?php
            $salles = $data;
            foreach ($salles as $salle): ?>

                <tr>
                    <td><?= $salle->codeSalleClasse ?></td>
                    <td><?= $salle->codeClasse ?><sub><?= $salle->indiceSalleClasse ?? '' ?></sub></td>
                    <td><?= $salle->nomClasse ?>&nbsp;<?= $salle->indiceSalleClasse ?? '' ?></td>
                    <td><?= $salle->nomSalle ?></td>
                    <td>
                        <a href="?p=salleclasse/profil/<?= $salle->codeSalleClasse ?>">voir</a>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
<?php else: ?>
    <div class="center">
        <p class="title text-center">Aucune salle de classe trouvé pour l'année scolaire <?= $annee->nomAnnee ?>.</p>
    </div>
<?php endif; ?>