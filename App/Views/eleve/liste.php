<?php
$title = 'Les eleves'
    ?>
<?= $subsidebar ?>
<script type="module" src="js/eleve/liste.js" defer></script>
<h2 class="title text-center my-10"><?= __("Les Eleves") ?>
</h2>

<div class="center my-10">
    <input type="search" class="field" id="srch" placeholder="<?= __("Rechercher un eleve") ?>
    " />
</div>


<input type="hidden" id="admin" value="<?= $_admin ?? false ?>">
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th></th>
                <th data-sort="matricule" class="sortable">
                    <div class="sort flex-start">
                    <?= __("Matricule") ?>
                </div>
                </th>
                <th data-sort="nom" class="sortable"><div class="sort flex-start">
                    <?= __("Nom") ?>
                </div>
                </th>
                <th data-sort="sexe" class="sortable"><div class="sort flex-start">
                    <?= __("Sexe") ?>
                </div>
                </th>
                <th data-sort="dateNaissance" class="sortable"><div class="sort flex-start">
                    <?= __("Date de naissance") ?>
                </div>
                </th>
                <th data-sort="lieuNaissance" class="sortable"><div class="sort flex-start">
                    <?= __("Lieu de naissance") ?>
                </div>
                </th>
                <th data-sort="adresse" class="sortable"><div class="sort flex-start">
                    <?= __("Adresse") ?>
                </div>
                </th>
                <th data-sort="nni" class="sortable"><div class="sort flex-start">
                    <?= __("NNI") ?>
                </div>
                </th>
                <th><?= __("Actions") ?>
                </th>
            </tr>
        </thead>
        <tbody>

            <?php
            $eleves = $data;
            foreach ($eleves as $eleve): ?>
                <tr data-matricule="<?= $eleve->matricule ?>">
                    <td>
                        <div class="center img-circle">
                        <?php if(file_exists("profiles/eleve/".$eleve->imagePath)&&$eleve->imagePath): ?>
                        <img src="profiles/eleve/<?= $eleve->imagePath ?>" >
                        <?php else: ?>
                         <div class="center">
                            <i class="fa fa-user"></i>
                         </div>
                         <?php endif ?>
                        </div>
                    </td>
                    <td><?= $eleve->matricule ?></td>
                    <td><?= $eleve->nom ?> <br><span dir="rtl"><?= $eleve->isme ?></span></td>
                    <td><?= $eleve->sexe ?></td>
                    <td><?= $eleve->dateNaissance ?></td>
                    <td><?= $eleve->lieuNaissance ?></td>
                    <td><?= $eleve->adresse ?></td>
                    <td><?= $eleve->nni ?></td>
                    <td>
                        <div class="center">

                            <a href="?p=eleve/profil/<?= $eleve->matricule ?>" title="<?= __("Voir l'eleve") ?>
                            " class="link"><i class="fa fa-eye text-info"></i></a>
                            <?php if ($_admin ?? false): ?>
                                <div class="edit" title="<?= __("Editer l'eleve") ?>
                                " data-matricule="<?= $eleve->matricule ?>"><i class="fa fa-edit text-primary"></i>
                                </div>
                                <div class="delete" title="<?= __("Supprimer l'eleve") ?>
                                " data-matricule="<?= $eleve->matricule ?>"><i class="fa fa-trash  text-danger"></i>
                                </div>
                            <?php endif; ?>
                        </div>
                    </td>
                </tr>
                <?php
            endforeach;
            ?>
        </tbody>
    </table>
</div>
<div class="fixed-action">
    <?php if ($_admin ?? false): ?>
        <button title="<?= __("Ajouter un eleve") ?>
        " class="btn btn-success circle" id="add"><i class="fa fa-plus"></i></button>
        <a href="?p=eleve/import" title="<?= __("Importer un fichier excel") ?>
        " class="link btn-success circle"><i class="fa fa-file-excel"></i></a>
    <?php endif ?>
    <a href="?p=pdf/eleve/liste" target="_blank" title="<?= __("Imprimer") ?>
    " class="link btn-primary circle"><i class="fa fa-file-pdf"></i></a>

</div>

<dialog id="dialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title"><?= __("Formulaire") ?>
        </h3>
    </div>
    <div class="dialog-body">
        <form class="form" action="?p=eleve/traitement" method="post">
            <input type="hidden" name="edit">
            <div class="form-group">
                <label for="matricule"><?= __("Matricule") ?>
                </label>
                <input type="text" class="form-control" id="matricule" name="matricule"
                    placeholder="Entrer le matricule" required>
            </div>
            <div class="form-group">
                <label for="nom"><?= __("Nom et Prénom") ?>
                </label>
                <input type="text" class="form-control" id="nom" name="nom" placeholder="Entrer le nom et prénom"
                    required>
            </div>
            <div class="form-group" lang="ar">
                <!-- Nom en Arabe -->
                <label for="isme">
                    <span><?= __("Nom en Arabe") ?>
                    </span> <span>الاسم</span>
                </label>
                <input type="text" dir="rtl" class="form-control" id="isme" name="isme"
                    placeholder="الاسم Nom en Arabe">
            </div>
            <div class="form-group">
                <label for="sexe"><?= __("Sexe") ?>
                </label>
                <div class="form-radio">
                    <input type="radio" id="sexeM" name="sexe" value="M" required>
                    <label for="sexeM"><?= __("Masculin") ?>
                    </label>
                    <input type="radio" id="sexeF" name="sexe" value="F" required>
                    <label for="sexeF"><?= __("Feminin") ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="dateNaissance"><?= __("Date de naissance") ?>
                </label>
                <input type="date" class="form-control" id="dateNaissance" name="dateNaissance" value='2000-01-01'
                    placeholder="Entrer la date de naissance" required>
            </div>
            <div class="form-group">
                <label for="lieuNaissance"><?= __("Lieu de naissance") ?>
                </label>
                <input type="text" class="form-control" id="lieuNaissance" name="lieuNaissance"
                    placeholder="Entrer le lieu de naissance">
            </div>
            <div class="form-group">
                <label for="adresse"><?= __("Adresse") ?>
                </label>
                <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Entrer l'adresse">
            </div>
            <div class="form-group">
                <label for="nni"><?= __("NNI") ?>
                </label>
                <input type="text" class="form-control" id="nni" name="nni" placeholder="Entrer le NNI" required>
            </div>
            <div class="form-group">
                <label for="statut"><?= __("Statut") ?>
                </label>
                <select name="statut" id="statut" class="form-control">
                    <option value="actif"><?= __("Actif") ?></option>
                    <option value="inactif"><?= __("Inactif") ?></option>
                    <option value="exclus"><?= __("Exclus") ?></option>
                    <option value="abandonne"><?= __("Abandonne") ?></option>
                </select>
            </div>
            <div class="form-action">
                <button type="reset" class="btn btn-default"><?= __("Annuler") ?>
                </button>
                <button type="submit" class="btn btn-primary"><?= __("Enregistrer") ?>
                </button>
            </div>

        </form>
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close"><?= __("Fermer") ?>
        </button>
    </div>
</dialog>