h2 class="title text-center">Les Classes et les Matieres</h2>

<table class="table table-striped">
    <thead>
        <tr>
            <th>code</th>
            <th>Nom de la matiere</th>
            <th>Nom en Arabe</th>
            <th>code de la classe</th>
            <th>Nom de la classe</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $matiere): ?>
            <tr>
                <td><?= $matiere->codeClasseMatiere ?></td>
                <td><?= $matiere->nomClasseMatiere ?></td>
                <td dir="rtl"><?= $matiere->ismeClasseMatiere ?></td>
                <td><?= $matiere->codeClasse ?></td>
                <td><?= $matiere->nomClasse ?></td>
                <td><a href="?p=classematiere/classe/<?= $matiere->codeClasseMatiere ?>"><i class="bi-eye"></i></a></td>
            </tr>
        <?php endforeach ?>