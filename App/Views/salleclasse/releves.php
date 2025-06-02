<?php
$title = "Liste des Releves";
?>
<?= $subsidebar ?>
<h2 class="text-center my-10">Liste des Releves</h2>

<table class="table table-striped">
    <thead>
        <tr>
            <th>Code</th>
            <th>Classe</th>
            <th>codeMatiere</th>
            <th>Matière</th>
            <th>Actions</th>
            
        </tr>
    </thead>
    <tbody>
        <?php foreach ($matieres as $matiere) : ?>
            <tr>
                <td><?= $matiere->codeClasseMatiere ?></td>
                <td><?= $salleclasse->codeClasse. $salleclasse->indiceSalleClasse ?></td>
                <td><?= $matiere->codeMatiere ?></td>
                <td><?= $matiere->nomMatiere ?></td>
                <td>
                    <a title="Voir les notes" href="?p=note/releve/<?= $salleclasse->codeSalleClasse ?>/<?= $matiere->codeMatiere ?>"><i class="fa fa-eye"></i></a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
