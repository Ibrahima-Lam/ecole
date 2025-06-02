<h1 class="title text-center">Les Classes</h1>
<div class="table-container">
<table class="table table-striped ">
    <thead>
        <tr>
            <th>Code Classe</th>
            <th>Nom Classe</th>
            <th>Niveau</th>
            <th>Code Serie</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>

        <?php
        $classes = $data;
        foreach ($classes as $classe): ?>

            <tr>
                <td><?= $classe->codeClasse ?></td>
                <td><?= $classe->nomClasse ?></td>
                <td><?= $classe->niveau ?></td>
                <td><?= $classe->codeSerie ?></td>
                <td>
                    <a href="?p=classematiere/classe/<?= $classe->codeClasse ?>"><i class="fa fa-eye"></i></a>
                </td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
</div>