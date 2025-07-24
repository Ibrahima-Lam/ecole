<h2 class="title text-center"><?= __format("Détail des absences de %s", $eleve->nom??'') ?></h2>

<div class="space-around wrap">
    <input type="date" id="dateDebut" class="field" value="<?= $dateDebut ?? '' ?>">
    <input type="date" id="dateFin" class="field" value="<?= $dateFin ?? '' ?>">
</div>
<br>

<?php if (empty($absences)):
    ?>
    <p class="text-center">Aucune absence enregistrée pour cet élève dans la période sélectionnée.</p>
<?php else: ?>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Date</th>
                <th>Heure</th>
                <th>Matière</th>
                <th>Justifiée</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($absences as $absence): ?>
                <tr>
                    <td><?= $absence->dateAbsenceClasse ?></td>
                    <td><?= $horairesMap[$absence->codeHoraire] ?? $absence->codeHoraire ?></td>
                    <td><?= $absence->matiere ?? 'Non spécifiée' ?></td>
                    <td>
                        <?php 
                            $justifies = !empty($absence->justifies) ? explode(',', $absence->justifies) : [];
                            echo in_array($eleve->matricule??'', $justifies) ? 'Oui' : 'Non';
                        ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php endif; ?>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const dateDebutInput = document.getElementById('dateDebut');
        const dateFinInput = document.getElementById('dateFin');

        function updateUrl() {
            const currentUrl = new URL(window.location.href);
            currentUrl.searchParams.set('dateDebut', dateDebutInput.value);
            currentUrl.searchParams.set('dateFin', dateFinInput.value);
            window.location.href = currentUrl.toString();
        }

        dateDebutInput.addEventListener('change', updateUrl);
        dateFinInput.addEventListener('change', updateUrl);
    });
</script>