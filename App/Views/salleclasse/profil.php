
<?=$subsidebar ?>
<h2 class="title center my-10">Profil de la salle de classe</h2>

<div class="table-container">
    <table class="table table-striped my-10">
        <thead>
            <tr>
                <th>Code Salle Classe</th>
                <th>code Classe</th>
                <th>Classe</th>
                <th>Salle</th>
                <th>Annee Scolaire</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $salle = $data;
            ?>
                <tr>
                    <td><?= $salle->codeSalleClasse ?></td>
                    <td><?= $salle->codeClasse ?><sub><?= $salle->indiceSalleClasse ?? '' ?></sub></td>
                    <td><?= $salle->nomClasse ?>&nbsp;<?= $salle->indiceSalleClasse ?? '' ?></td>
                    <td><?= $salle->nomSalle ?></td>
                    <td><?= $salle->nomAnnee ?></td>
                </tr>
          
        </tbody>
    </table>
</div>