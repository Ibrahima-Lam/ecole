<?=$subsidebar??'' ?>

<h2 class="title text-center">Correspondance</h2>

<div class="center my-10">
    <input type="search" class="field" id="srch" placeholder="<?= __("Rechercher un correspondant") ?>" />
</div>

<table class="table table-striped">
    <thead>
        <tr>
            <th><?= __("Image") ?></th>
            <th data-sort="matricule" class="sortable"><div class="sort">
                <?= __("Matricule") ?>
            </div></th>
            <th data-sort="nom" class="sortable"><div class="sort">
                <?= __("Nom de l'eleve") ?>
            </div></th>
            <th data-sort="nni" class="sortable"><div class="sort">
                <?= __("NNI") ?>
            </div></th>
            <th><?= __("Image") ?></th>
            <th data-sort="nomCorrespondant" class="sortable"><div class="sort">
                <?= __("Nom de Correspondant") ?>
            </div></th>
            <th data-sort="telCorrespondance" class="sortable"><div class="sort">
                <?= __("Tel") ?>
            </div></th>
            <th data-sort="adresseCorrespondance" class="sortable"><div class="sort">
                <?= __("Adresse") ?>
            </div></th>
            <th><?= __("Actions") ?></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($correspondances as $correspondance):?>
            <tr data-matricule="<?= $correspondance->matricule ?>">
                <td>
                    <div class="center img-circle">
                        <?php if (file_exists("profiles/correspondant/" . $correspondance->imagePath) && $correspondance->imagePath): ?>
                            <img src="profiles/correspondant/<?= $correspondance->imagePath ?>">
                        <?php else: ?>
                            <div class="center">
                                <i class="fa fa-user"></i>
                            </div>
                        <?php endif ?>
                    </div>
                </td>
                <td><?= $correspondance->matricule?></td>
                <td><?= $correspondance->nom ?></td>
                <td><?= $correspondance->nni ?></td>
                <td>
                <div class="center img-circle">
                        <?php if (file_exists("profiles/correspondant/" . $correspondance->imagePathCorrespondant) && $correspondance->imagePathCorrespondant): ?>
                            <img src="profiles/correspondant/<?= $correspondance->imagePathCorrespondant ?>">
                        <?php else: ?>
                            <div class="center">
                                <i class="fa fa-user"></i>
                            </div>
                        <?php endif ?>
                    </div>
                </td>
                <td><?= $correspondance->nomCorrespondant ?></td>
                <td><?= $correspondance->telCorrespondant ?></td>
                <td><?= $correspondance->adresseCorrespondant ?></td>
                <td>
                    <?php if ($_admin): ?>
                        <div class="center">
                            <button type="button" data-id="<?= $correspondance->idCorrespondance ?>"
                                class="btn edit"><i class="fa fa-edit text-primary"></i></button>
                            <button type="button" data-id="<?= $correspondance->idCorrespondance ?>"
                                class="btn delete"><i class="fa fa-trash text-danger"></i></button>
                        </div>
                    <?php endif ?>
                </td>
            </tr>
        <?php endforeach?>
    </tbody>
</table>
<div class="fixed-action">
    <?php if ($_admin): ?>
        <button type="button" title="<?= __("Ajouter") ?>" id="add" class="btn btn-primary circle"><i class="fa fa-plus"></i></button>
    <?php endif ?>
</div>

<dialog class="dialog" id="dialog">
    <div class="dialog-head">
        <h3><?= __("Formulaire") ?></h3>
    </div>
    <div class="dialog-body">
        <form action="">
            <input name="edit" type="hidden">
            <input name="idCorrespondance" type="hidden">
            <div class="form-group">
                <label for="idCorrespondant"><?= __("Correspondant") ?></label>
                <select name="idCorrespondant" id="idCorrespondant" class="form-control">
                    <option value=""><?= __("Selectionner un correspondant") ?></option>
                    <?php foreach ($correspondants as $correspondant): ?>
                        <option value="<?= $correspondant->idCorrespondant ?>"><?= $correspondant->nomCorrespondant ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="matricule"><?= __("Matricule") ?></label>
               <input id="matricule" name="matricule" type="text">
            </div>
            <div class="form-action">
                <button type="reset" class="btn btn-default"><?= __("Annuler") ?></button>
                <button type="submit" class="btn btn-primary"><?= __("Enregistrer") ?></button>
            </div>
        </form>
    </div>
    <div class="dialog-foot">
        <button type="button" id="close" class="btn btn-danger"><?= __("Fermer") ?></button>
    </div>
</dialog>



<script type="module" src="js/correspondant/correspondance.js"></script>