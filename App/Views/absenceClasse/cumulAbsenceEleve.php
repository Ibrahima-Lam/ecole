<h2 class="title text-center"><?=__format("Cumul des absences par élève pour la classe %s",$salleClasse->pseudoSalleClasse)?></h2>

<div class="space-around wrap">
    <input type="date" id="dateDebut" class="field" value="<?= $dateDebut ?? '' ?>">
    <input type="date" id="dateFin" class="field" value="<?= $dateFin ?? '' ?>">
</div>
<br>


<br>
<div class="text-center" style="margin-bottom: 15px;">
    <a href="?p=absence/addAll/<?= $codeSalleClasse ?>" class="btn btn-primary">Traiter les absences en masse</a>
</div>
<table class="table table-striped">
    <thead>
        <tr>
            <th>Matricule</th>
            <th>Nom de l'élève</th>
            <th>Nombre d'absences</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($cumulAbsences as $matricule => $data): ?>
            <tr>
                <td><?= $data['matricule'] ?></td>
                <td><a href="?p=absenceClasse/listeAbsenceEleve/<?= $data['matricule'] ?>"><?= $data['nom'] ?></a></td>
                <td><?= $data['nombreAbsences'] ?></td>
               
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

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
