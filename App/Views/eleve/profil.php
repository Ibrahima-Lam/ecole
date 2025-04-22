<?= $subsidebar ?>
<h1 class="title text-center my-10">Profil de l'élève</h1>
<?php if ($data ?? false): ?>
    <h3 class="title text-center my-10">Informations de l'élève</h3>
    <div class="table-container">
        <table class="table table-striped my-10">
            
            <thead>
                <tr>
                    <th>Matricule</th>
                    <th>Nom</th>
                    <th>Sexe</th>
                    <th>Date de naissance</th>
                    <th>Adresse</th>
                    <th>NNI</th>
                    
                </tr>
            </thead>
            <tbody>
                
                <?php $eleve = $data; ?>
                
                
                
                <tr>
                    <td><?= $eleve->matricule ?></td>
                    <td><?= $eleve->nom ?><br><span dir="rtl"><?= $eleve->isme ?></span></td>
                    <td><?= $eleve->sexe ?></td>
                    <td><?= $eleve->dateNaissance ?></td>
                    <td><?= $eleve->adresse ?></td>
                    <td><?= $eleve->nni ?></td>
                    
                </tr>
            </tbody>
            <?php if($_admin):?>
            <tfoot>
                <tr>
                    <td colspan="5"></td>
                    <td><button id="edit" class="btn btn-primary circle" title="Modifier"><i class="bi bi-pencil"></i></button></td>
                </tr>
            </tfoot>
            <?php endif?>
        </table>
    </div>
<?php else: ?>
    <div class="center">
        <h1 class="title text-center">Aucun élève trouvé</h1>
    </div>
<?php endif; ?>

<?php if ($inscription): ?>
    <h3 class="title text-center my-10">Inscriptions <?= $annee ?></h3>
    <div class="table-container">

        <table class="table table-striped my-10">
            <thead>
                <tr>
                    <th>code salle classe</th>
                    <th>Classe</th>
                    <th>Nom de la classe</th>
                    <th>Matricule</th>
                    <th>numero</th>
                    <th>Type inscrit</th>
                    <th>Date d'inscription</th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <td><?= $inscription->codeSalleClasse ?></td>
                    <td><?= $inscription->codeClasse ?><sub><?= $inscription->indiceSalleClasse ?></sub></td>
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
        <button id="inscrire" class="btn btn-success"><?= $inscription ? 'Modifier' : 'Inscrire en ' . $annee ?>
        </button>
        <?php if ($inscription): ?>
            <button id="supprimer" class="btn btn-danger">Supprimer</button>
        <?php endif ?>
    </div>
<?php endif ?>
<div class="inscrit-form"></div>
<input type="hidden" id="id" value="<?= $inscription->idInscrit ?? null ?>">
<input type="hidden" id="matricule" value="<?= $eleve->matricule ?? null ?>">


<dialog id="dialog-eleve" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body">
        <form class="form" action="?p=eleve/traitement" method="post">
            <input type="hidden" name="edit">
            <div class="form-group">
                <label for="matricule">Matricule</label>
                <input type="text" class="form-control" id="matricule" name="matricule" placeholder="matricule" value="Mat5LM" required>
            </div>
            <div class="form-group">
                <label for="nom">Nom et Prénom</label>
                <input type="text" class="form-control" id="nom" name="nom" placeholder=" Entrer le nom et prénom" required>
            </div>
            <div class="form-group" lang="ar">
                <!-- Nom en Arabe -->
                <label for="isme">

                    <span>Nom en Arabe</span> <span>الاسم</span>

                </label>
                <input type="text" dir="rtl" class="form-control" id="isme" name="isme" placeholder="Nom en Arabe الاسم">
            </div>
            <div class="form-group">
                <label for="sexe">Sexe</label>
                <div class="form-radio">
                    <input type="radio" id="sexeM" name="sexe" value="M" required>
                    <label for="sexeM">Masculin</label>
                    <input type="radio" id="sexeF" name="sexe" value="F">
                    <label for="sexeF">Feminin</label>
                </div>
            </div>
            <div class="form-group">
                <label for="dateNaissance">Date de naissance</label>
                <input type="date" class="form-control" id="dateNaissance" name="dateNaissance" value='2000-01-01' placeholder="Entrer la date de naissance" >
            </div>
            <div class="form-group">
                <label for="lieuNaissance">Lieu de naissance</label>
                <input type="text" class="form-control" id="lieuNaissance" value="Boghe" name="lieuNaissance" placeholder="Entrer le lieu de naissance">
            </div>
            <div class="form-group">
                <label for="adresse">Adresse</label>
                <input type="text" class="form-control" id="adresse" value="Boghe" name="adresse" placeholder="adresse" >
            </div>
            <div class="form-group">
                <label for="nni">NNI</label>
                <input type="text" class="form-control" id="nni" value="00000004" name="nni" placeholder="nni" required>
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



<script type="module" defer>
    import FormModule from './js/inscrit/formModule.js';
    import EleveForm from "./js/eleve/eleve_form_module.js";

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
</script>