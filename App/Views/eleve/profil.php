<?= $subsidebar ?>
<h1 class="title text-center my-10"><?= __("Profil de l'élève") ?>
</h1>
<?php if ($data ?? false): ?>
    <?php $eleve = $data; ?>
    <div class="center">
        <div class="profile">

            <?php if(file_exists("profiles/eleve/".($eleve->imagePath))&&$eleve->imagePath):?>
                <img src="profiles/eleve/<?= $eleve->imagePath ?>" alt="<?= $eleve->nom ?>">
            <?php else:?>
                <i class="fas fa-user" style="font-size: 8rem; color: gray;"></i>
            <?php endif?>
           
            <h3><?= $eleve->nom ?></h3>
            <h3 dir="rtl"><?= $eleve->isme ?></h3>
            <?php if($_admin):?>
              <form id="editImageForm" method="post" action="?p=eleve/traitementImage" enctype="multipart/form-data">
                <input type="hidden" name="matricule" value="<?= $eleve->matricule ?>">
                <div class="edit-image">
                 <label for="editImageInput">
                  <i class="fa fa-pen text-primary" style="font-size: 1rem;"></i>
              </label>

                 <input type="file" id="editImageInput" name="image" accept="image/*">
              </div>
              </form>
            <?php endif?>
           
        </div>
    </div>
    <br>
    <h3 class="title text-center my-10"><?= __("Informations de l'élève") ?>
    </h3>
    <div class="table-container">
        <table class="table table-striped my-10">

            <thead>
                <tr>
                    <th><?= __("Matricule") ?>
                    </th>
                    <th><?= __("Nom") ?>
                    </th>
                    <th><?= __("Sexe") ?>
                    </th>
                    <th><?= __("Date de naissance") ?>
                    </th>
                    <th><?= __("Adresse") ?>
                    </th>
                    <th><?= __("NNI") ?>
                    </th>
                    <th><?= __("Statut") ?>
                    </th>

                </tr>
            </thead>
            <tbody>

           



                <tr>
                    <td><?= $eleve->matricule ?></td>
                    <td><?= $eleve->nom ?><br><span dir="rtl"><?= $eleve->isme ?></span></td>
                    <td><?= $eleve->sexe ?></td>
                    <td><?= $eleve->dateNaissance ?></td>
                    <td><?= $eleve->adresse ?></td>
                    <td><?= $eleve->nni ?></td>
                    <td><?= $eleve->statutEleve ?></td>
                </tr>
            </tbody>
            <?php if ($_admin): ?>
                <tfoot>
                    <tr>
                        <td colspan="6"></td>
                        <td><button id="edit" class="btn btn-primary circle" title="Modifier"><i
                                    class="fa fa-edit"></i></button></td>
                    </tr>
                </tfoot>
            <?php endif ?>
        </table>
    </div>
<?php else: ?>
    <div class="center">
        <h1 class="title text-center"><?= __("Aucun élève trouvé") ?>
        </h1>
    </div>
<?php endif; ?>

<?php if ($inscription): ?>
    <h3 class="title text-center my-10"><?= __("Inscriptions") ?>
        <?= $annee ?>
    </h3>
    <div class="table-container">

        <table class="table table-striped my-10">
            <thead>
                <tr>
                    <th><?= __("code salle classe") ?>
                    </th>
                    <th><?= __("Classe") ?>
                    </th>
                    <th><?= __("Nom de la classe") ?>
                    </th>
                    <th><?= __("Matricule") ?>
                    </th>
                    <th><?= __("Numero") ?>
                    </th>
                    <th><?= __("Type inscrit") ?>
                    </th>
                    <th><?= __("Date d'inscription") ?>
                    </th>
                </tr>
            </thead>
            <tbody>

                <tr>
                    <td><?= $inscription->codeSalleClasse ?></td>
                    <td><a
                            href="?p=salleclasse/profil/<?= $inscription->codeSalleClasse ?>"><?= $inscription->pseudoSalleClasse ?></a>
                    </td>
                    <td><?= $inscription->nomClasse ?></td>
                    <td><?= $inscription->matricule ?></td>
                    <td><?= $inscription->numeroInscrit ?></td>
                    <td><?= $inscription->typeInscrit ?></td>
                    <td><?= $inscription->dateInscription ?></td>
                </tr>
            </tbody>
        </table>
    </div>

<?php endif ?>



<?php if ($_admin): ?>
    <div class="center">
        <button id="inscrire" class="btn btn-success"><?= $inscription ? __("Modifier l'inscription") : __format("Inscrire en %s", $annee) ?>
        </button>
        <?php if ($inscription): ?>
            <button id="supprimer" class="btn btn-danger"><?= __("Supprimer l'inscription") ?>
            </button>
        <?php endif ?>
    </div>
<?php endif ?>
<div class="inscrit-form"></div>
<input type="hidden" id="id" value="<?= $inscription->idInscrit ?? null ?>">
<input type="hidden" id="matricule" value="<?= $eleve->matricule ?? null ?>">


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
                <input type="text" class="form-control" id="matricule" name="matricule" placeholder="matricule"
                    value="Mat5LM" required>
            </div>
            <div class="form-group">
                <label for="nom"><?= __("Nom et Prénom") ?>
                </label>
                <input type="text" class="form-control" id="nom" name="nom" placeholder=" Entrer le nom et prénom"
                    required>
            </div>
            <div class="form-group" lang="ar">
                <!-- Nom en Arabe -->
                <label for="isme">

                    <span><?= __("Nom en Arabe") ?> </span>

                </label>
                <input type="text" dir="rtl" class="form-control" id="isme" name="isme"
                    placeholder="Nom en Arabe الاسم">
            </div>
            <div class="form-group">
                <label for="sexe"><?= __("Sexe") ?>
                </label>
                <div class="form-radio">
                    <input type="radio" id="sexeM" name="sexe" value="M" required>
                    <label for="sexeM"><?= __("Masculin") ?>
                    </label>
                    <input type="radio" id="sexeF" name="sexe" value="F">
                    <label for="sexeF"><?= __("Feminin") ?>
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="dateNaissance"><?= __("Date de naissance") ?>
                </label>
                <input type="date" class="form-control" id="dateNaissance" name="dateNaissance" value='2000-01-01'
                    placeholder="Entrer la date de naissance">
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
                <input type="text" class="form-control" id="adresse" name="adresse" placeholder="adresse">
            </div>
            <div class="form-group">
                <label for="nni"><?= __("NNI") ?>
                </label>
                <input type="text" class="form-control" id="nni" name="nni" placeholder="nni" required>
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



<script type="module" defer>
    import FormModule from './js/inscrit/formModule.js';
    import EleveForm from "./js/eleve/eleve_form_module.js";
    import { fetchJson } from "./js/src/fetch.js";

    let idInscrit = document.querySelector('#id').value;
    let matricule = document.querySelector('#matricule').value;

    const bouton = document.querySelector('#inscrire');
    const form = new FormModule(document.querySelector('.inscrit-form'), bouton, {
        matricule,
        idInscrit
    });
    form.create();
    document.querySelector('#supprimer')?.addEventListener('click', e => FormModule.delete(idInscrit));

    function editEleve(matricule) {
        let dialog = new EleveForm(document.querySelector("#dialog-eleve"), matricule);
        dialog.setEditable('true');
        dialog.show();
    }
    document.querySelector('#edit')?.addEventListener('click', e => editEleve(matricule));
  
  
      document.querySelector('#editImageInput')?.addEventListener('change',async function (e) {
        let message=await fetchJson("?p=api/home/translate/"+"Êtes-vous sûr de vouloir modifier l'image ?")
     if(confirm(message.res)){
        await document.querySelector('#editImageForm')?.submit();
     }
    });
     
</script>