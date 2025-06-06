
<?=$subsidebar ?>
<h2 class="title center my-10"><?=__("Profil de la salle de classe")?></h2>

<div class="table-container">
    <table class="table table-striped my-10">
        <thead>
            <tr>
                <th><?=__("Code Salle Classe")?></th>
                <th><?=__("Code Classe")?></th>
                <th><?=__("Classe")?></th>
                <th><?=__("Salle")?></th>
                <th><?=__("Annee Scolaire")?></th>
            </tr>
        </thead>
        <tbody>
            <?php
            $salle = $data;
            ?>
                <tr>
                    <td><?= $salle->codeSalleClasse ?></td>
                    <td><?= $salle->codeClasse ?><sub><?= $salle->indiceSalleClasse ?? '' ?></sub></td>
                    <td dir="ltr"><?= $salle->nomClasse ." " . $salle->indiceSalleClasse ?? '' ?></td>
                    <td><?= $salle->nomSalle ?></td>
                    <td><?= $salle->nomAnnee ?></td>
                </tr>
          
        </tbody>
    </table>
</div>