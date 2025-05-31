<?php
$title = 'Les eleves'
?>
<?=$subsidebar ?>
<script type="module" src="js/eleve/liste.js" defer></script>
<h2 class="title text-center my-10">Les Eleves</h2>

<div class="center my-10">
    <input type="search" class="field" id="srch" placeholder="Rechercher un eleve" />
</div>


<input type="hidden" id="admin" value="<?= $_admin ?? false ?>">
<div class="table-container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th data-sort="matricule" class="sortable">Matricule</th>
                    <th data-sort="nom" class="sortable">Nom</th>
                    <th data-sort="sexe" class="sortable">Sexe</th>
                <th data-sort="dateNaissance" class="sortable">Date de naissance</th>
                <th data-sort="lieuNaissance" class="sortable">Lieu de naissance</th>
                <th data-sort="adresse" class="sortable">Adresse</th>
                <th data-sort="nni" class="sortable">NNI</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

            <?php
            $eleves = $data;
            foreach ($eleves as $eleve): ?>
                <tr data-matricule="<?= $eleve->matricule ?>">
                    <td ><?= $eleve->matricule ?></td>
                    <td><?= $eleve->nom ?> <br><span dir="rtl"><?= $eleve->isme ?></span></td>
                    <td><?= $eleve->sexe ?></td>
                    <td><?= $eleve->dateNaissance ?></td>
                    <td><?= $eleve->lieuNaissance ?></td>
                    <td><?= $eleve->adresse ?></td>
                    <td><?= $eleve->nni ?></td>
                    <td>
                        <div class="center">

                            <a href="?p=eleve/profil/<?= $eleve->matricule ?>" title="Voir l'eleve"><i class="fa fa-eye"></i></a>
                            <?php if ($_admin ?? false): ?>
                                <div class="edit" title="Editer l'eleve" data-matricule="<?= $eleve->matricule ?>"><i class="fa fa-edit"></i></div>
                                <div class="delete" title="Supprimer l'eleve" data-matricule="<?= $eleve->matricule ?>"><i class="fa fa-trash  text-danger"></i></div>
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
        <button title="Ajouer un eleve" class="btn btn-success circle" id="add"><i class="fa fa-plus"></i></button>
        <a href="?p=eleve/import" title="Importer un fichier excel" class="link btn-success circle"><i class="fa fa-file-excel"></i></a>
    <?php endif  ?>
    <a href="?p=pdf/eleve/liste" target="_blank" title="Imprimer" class="link btn-primary circle"><i class="fa fa-file-pdf"></i></a>

</div>

<dialog id="dialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body">
        <form class="form" action="?p=eleve/traitement" method="post">
            <input type="hidden" name="edit">
            <div class="form-group">
                <label for="matricule">Matricule</label>
                <input type="text" class="form-control" id="matricule" name="matricule" placeholder="Entrer le matricule"  required>
            </div>
            <div class="form-group">
                <label for="nom">Nom et Prénom</label>
                <input type="text" class="form-control" id="nom" name="nom" placeholder="Entrer le nom et prénom" required>
            </div>
            <div class="form-group" lang="ar">
                <!-- Nom en Arabe -->
                <label for="isme">
                    <span>Nom en Arabe</span> <span>الاسم</span>
                </label>
                <input type="text" dir="rtl" class="form-control" id="isme" name="isme" placeholder="الاسم Nom en Arabe">
            </div>
            <div class="form-group">
                <label for="sexe">Sexe</label>
                <div class="form-radio">
                    <input type="radio" id="sexeM" name="sexe" value="M" required>
                    <label for="sexeM">Masculin</label>
                    <input type="radio" id="sexeF" name="sexe" value="F" required>
                    <label for="sexeF">Feminin</label>
                </div>
            </div>
            <div class="form-group">
                <label for="dateNaissance">Date de naissance</label>
                <input type="date" class="form-control" id="dateNaissance" name="dateNaissance" value='2000-01-01' placeholder="Entrer la date de naissance" required>
            </div>
            <div class="form-group">
                <label for="lieuNaissance">Lieu de naissance</label>
                <input type="text" class="form-control" id="lieuNaissance" name="lieuNaissance" placeholder="Entrer le lieu de naissance">
            </div>
            <div class="form-group">
                <label for="adresse">Adresse</label>
                <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Entrer l'adresse" >
            </div>
            <div class="form-group">
                <label for="nni">NNI</label>
                <input type="text" class="form-control" id="nni"  name="nni" placeholder="Entrer le NNI" required>
            </div>
            <div class="form-action">
                <button type="reset" class="btn btn-default">Annuler</button>
                <button type="submit" class="btn btn-primary">Enregistrer</button>
            </div>

        </form>
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close">Fermer</button>
    </div>
</dialog>