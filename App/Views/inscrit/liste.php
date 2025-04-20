<h3 class="title text-center">Liste des inscrits</h3>
<table class="table table-striped">
    <thead>
        <tr>
            <th>Matricule</th>
            <th>Numero inscrit</th>
            <th>Nom</th>
            <th>Code classe</th>
            <th>Type inscrit</th>
            <th>Date inscription</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($inscrits as $inscrit): ?>
            <tr class="inscritRow" data-matricule="<?= $inscrit->matricule ?>">
                <td><?= $inscrit->matricule ?></td>
                <td><?= $inscrit->numeroInscrit ?></td>
                <td><?= $inscrit->nom ?><br><span><?= $inscrit->isme ?></span></td>
                <td><?= $inscrit->codeClasse . $inscrit->indiceSalleClasse ?></td>
                <td><?= $inscrit->typeInscrit ?></td>
                <td><?= $inscrit->dateInscription ?></td>
                <td>
                    <?php if ($_admin): ?>
                        <a href="?p=inscrit/form/<?= $inscrit->idInscrit ?>"><i class="bi-pencil"></i></a>
                    <?php endif ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<?php if ($_admin): ?>

    <div class="fixed-action">
        <a href="?p=inscrit/form" class="btn btn-success circle"><i class="bi-plus"></i> </a>
    </div>
<?php endif ?>

<script type="module">
    const inscritRows = document.querySelectorAll('.inscritRow');
    inscritRows.forEach(row => {
        row?.addEventListener('click', function () {
            window.location.href = `?p=eleve/profil/${this.dataset.matricule}`;
        });
    });
</script>

