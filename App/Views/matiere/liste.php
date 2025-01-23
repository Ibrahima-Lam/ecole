<h3 class="title text-center">Les Matieres</h3>

<table class="table table-striped">
    <thead>
        <tr>
            <th>code</th>
            <th>Nom</th>
            <th>Nom en Arabe</th>
            <th>Langue de la matiere</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $matiere): ?>
            <tr>
                <td><?= $matiere->codeMatiere ?></td>
                <td><?= $matiere->nomMatiere ?></td>
                <td dir="rtl"><?= $matiere->ismeMatiere ?></td>
                <td><?= $matiere->langueMatiere ?></td>
                <td><a href="?p=classematiere/matiere/<?= $matiere->codeMatiere ?>"><i class="bi-eye"></i></a></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>