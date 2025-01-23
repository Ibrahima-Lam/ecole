<h2 class="title-center my-10 text-center">
    Les eleves non inscrits de l'annee scolaire <?= $anneescolaire->nomAnnee ?>
</h2>

<?php if (sizeof($eleves) > 0): ?>
    <table class="table table-striped">
        <thead>
            <tr>                
                <th>Matricule</th>
                <th>Nom</th>
                <th>الاسم</th>
                <th>Sexe</th>
                <th>Date de naissance</th>
                <th>Adresse</th>
                <th>NNI</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($eleves as $eleve): ?>
                <tr>
                    <td><?= $eleve->matricule ?></td>
                    <td><?= $eleve->nom ?></td>
                    <td dir="rtl"><?= $eleve->isme ?></td>
                    <td><?= $eleve->sexe ?></td>
                    <td><?= $eleve->dateNaissance ?></td>
                    <td><?= $eleve->adresse ?></td>
                    <td><?= $eleve->nni ?></td>
                    <td>
                        <div class="center">

                            <a href="?p=eleve/profil/<?= $eleve->matricule ?>"><i class="bi-eye"></i></a>
                            <?php if($_admin):?>
                                <button class="btn  inscrire" title="Inscrire en <?= $anneescolaire->nomAnnee ?>" data-module="FormModule" data-matricule="<?= $eleve->matricule ?>"><i class="bi-person-plus text-success"></i></button>  
                                <?php endif?>
                        </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>        
    </table>
</div>
<?php else: ?>
    <p class="text-center">Aucun eleve non inscrit</p>
<?php endif ?>

<div class="form-contain"></div>

<script type="module" defer>
 import {FormModuleArray} from './js/inscrit/formModule.js';

 const inscrires = document.querySelectorAll('.inscrire');
 
     new FormModuleArray(document.querySelector('.form-contain'), inscrires);
    


</script>