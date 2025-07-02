<h1 title="<?=__("Etablissement")?>" class="title text-center"><?=__("Etablissement")?></h1>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th><?=__("Nom de l'établissement")?></th>
                <th><?=__("Isme de l'établissement")?></th>
                <th><?=__("Adresse de l'établissement")?></th>
                <th><?=__("Ville de l'établissement")?></th>
                <th><?=__("Téléphone de l'établissement")?></th>
                <th><?=__("Email de l'établissement")?></th>
                <th><?=__("Image de l'établissement")?></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><?= $etablissement->getNomEtablissement() ?></td>
                <td><?= $etablissement->getIsmeEtablissement() ?></td>
                <td><?= $etablissement->getAdresseEtablissement() ?></td>
                <td><?= $etablissement->getVilleEtablissement() ?></td>
                <td><?= $etablissement->getTelEtablissement() ?></td>
                <td><?= $etablissement->getEmailEtablissement() ?></td>
                <td><?= $etablissement->getImagePathEtablissement() ?></td>
            </tr>
        </tbody>
    </table>
</div>
<br>
<?php if($_admin):?>
    <a href="?p=etablissement/create" type="button" id="add" class="btn btn-success circle"><i class="fa fa-edit"></i></a>
<?php endif?>