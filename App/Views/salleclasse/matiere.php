<?php
$title = __("Liste des Matieres");
?>
<?= $subsidebar ?>
<h2 class="text-center my-10"><?=__("Liste des Matieres")?></h2>

<table class="table table-striped">
    <thead>
        <tr>
            <th><?=__("Code")?></th>
            <th><?=__("Classe")?></th>
            <th><?=__("codeMatiere")?></th>
            <th><?=__("Matière")?></th>
            <th><?=__("Actions")?></th>
            
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
                <?php if($_admin):?>
                     <div class="center">
                           <a class="btn btn-primary" title="<?=__("ajouter ou modifier les notes pour cette matiere depuis un formulaire")?>" href="?p=note/matiere_forms/<?= $salleclasse->codeSalleClasse ?>/<?= $matiere->codeMatiere ?>"><i class="fa fa-database"></i></a>
                           <a class="btn btn-info" title="<?=__("ajouter ou modifier les notes pour cette matiere depuis un fichier")?>" href="?p=note/matiere_file_form/<?= $salleclasse->codeSalleClasse ?>/<?= $matiere->codeMatiere ?>"><i class="fa fa-file"></i></a>
                       
                     </div>
                <?php endif?>
            </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
