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

<script type="module" defer>
    import FormModule from './js/inscrit/formModule.js';
    let idInscrit = document.querySelector('#id').value;
    let matricule = document.querySelector('#matricule').value;

    const bouton = document.querySelector('#inscrire');
    const form = new FormModule(document.querySelector('.inscrit-form'), bouton, {
        matricule,
        idInscrit
    });
    form.create();
    document.querySelector('#supprimer')?.addEventListener('click', e => FormModule.delete(idInscrit));
</script>