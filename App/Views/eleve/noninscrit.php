<?=
$subsidebar ?? '';
?>

<h2 class="title-center my-10 text-center">
    <?=__format("Les eleves non inscrits de l'annee scolaire %s",$anneescolaire->nomAnnee)?>
</h2>

<div class="center my-10">
    <input class="field" type="search" id="srch" placeholder="<?=__("Rechercher un non inscrit")?>
    ">
</div>

<?php if (sizeof($eleves) > 0): ?>
 <div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
            <th data-sort="matricule" ><i class="fa fa-sort"></i></th>
                <th data-sort="matricule" class="sortable"><div class="sort">
                    Matricule
                </div></th>
                <th data-thrt="nom" class="sortable"><div class="sort">
                    Nom
                </div></th>
               
                <th data-sort="sexe" class="sortable"><div class="sort">
                    Sexe
                </div></th>
                <th data-sort="dateNaissance" class="sortable"><div class="sort">
                    Date de naissance
                </div></th>
                <th data-sort="adresse" class="sortable"><div class="sort">
                    Adresse
                </div></th>
                <th data-sort="nni" class="sortable"><div class="sort">
                    NNI
                </div></th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($eleves as $eleve): ?>
                <tr class="inscritRow" data-matricule="<?= $eleve->matricule ?>">
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
                    <td><?= $eleve->nom ?>
                    <br>
                    <span dir="rtl"><?= $eleve->isme ?></span>
                </td>
                    <td><?= $eleve->sexe ?></td>
                    <td><?= $eleve->dateNaissance ?></td>
                    <td><?= $eleve->adresse ?></td>
                    <td><?= $eleve->nni ?></td>
                    <td>
                        <div class="center">

                            <a href="?p=eleve/profil/<?= $eleve->matricule ?>"><i class="fa fa-eye"></i></a>
                            <?php if ($_admin): ?>
                                <button class="btn text-primary edit" title="Editer l'eleve" data-matricule="<?= $eleve->matricule ?>"><i class="fa fa-edit"></i></button>
                                <button class="btn text-danger delete" title="Supprimer l'eleve" data-matricule="<?= $eleve->matricule ?>"><i class="fa fa-trash "></i></button>
                         
                                <button class="btn text-success inscrire" title="Inscrire en <?= $anneescolaire->nomAnnee ?>"
                                    data-module="FormModule" data-matricule="<?= $eleve->matricule ?>"><i
                                        class="fa fa-user-plus"></i></button>
                            <?php endif ?>
                        </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>

</div>
<div class="center">
    <a class="link" href="?p=eleve/inscrire/true">Inscrire</a>
</div>
<?php else: ?>
    <p class="text-center">Aucun eleve non inscrit</p>
<?php endif; ?>

<div class="fixed-action">
    <?php if ($_admin ?? false): ?>
        <button title="<?= __("Ajouter un eleve") ?>
        " class="btn btn-success circle" id="add"><i class="fa fa-plus"></i></button>
    <?php endif ?>
   
</div>

<div class="form-contain"></div>

<dialog id="dialog-eleve" class="dialog">
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

<script type="module" src="js/eleve/noninscrit.js" defer>
    

</script>