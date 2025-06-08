<?=$subsidebar??"" ?>

<h2 class="title text-center"><?=__format("Liste des inscrits de l'annee scolaire %s",$anneescolaire->nomAnnee)?></h2>

<div class="center my-10">
    <input class="field" type="search" id="srch" placeholder="<?=__("Rechercher un inscrit")?>
    ">
</div>
<table class="table table-striped">
    <thead>
        <tr>
            <th data-sort="matricule" ><i class="fa fa-sort"></i></th>
            <th data-sort="matricule" class="sortable"><div class="sort">
                Matricule
            </div></th>
            <th data-sort="numeroInscrit" class="sortable"><div class="sort">
                Numero inscrit
            </div></th>
            <th data-sort="nom" class="sortable"><div class="sort">
                Nom
            </div></th>
            <th data-sort="codeSalleClasse" class="sortable"><div class="sort">
                Code classe
            </div></th>
            <th data-sort="typeInscrit" class="sortable"><div class="sort">
                Type inscrit
            </div></th>
            <th data-sort="dateInscription" class="sortable"><div class="sort">
                Date inscription
            </div></th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($inscrits as $inscrit): ?>
            <tr class="inscritRow" data-matricule="<?= $inscrit->matricule ?>">
                <td>
                    <div class="center img-circle">
                    <?php if(file_exists("profiles/eleve/".$inscrit->imagePath)&&$inscrit->imagePath): ?>
                    <img src="profiles/eleve/<?= $inscrit->imagePath ?>" >
                    <?php else: ?>
                     <div class="center">
                        <i class="fa fa-user"></i>
                     </div>
                     <?php endif ?>
                    </div>
                </td>
                <td><?= $inscrit->matricule ?></td>
                <td><?= $inscrit->numeroInscrit ?></td>
                <td><?= $inscrit->nom ?><br><span><?= $inscrit->isme ?></span></td>
                <td><a href="?p=salleClasse/profil/<?= $inscrit->codeSalleClasse ?>"><?= $inscrit->pseudoSalleClasse ?></a></td>
                <td><?= $inscrit->typeInscrit ?></td>
                <td><?= $inscrit->dateInscription ?></td>
                <td>
                    <?php if ($_admin): ?>
                       <div class="center">
                         <button title="<?=__("Editer l'inscription")?>" data-id="<?= $inscrit->idInscrit ?>" data-matricule="<?= $inscrit->matricule ?>" class="btn btn-primary edit"><i class="fa fa-edit"></i></button>
                         <button title="<?=__("Supprimer l'inscription")?>" data-id="<?= $inscrit->idInscrit ?>" data-matricule="<?= $inscrit->matricule ?>" class="btn btn-danger delete"><i class="fa fa-trash"></i></button>
                  
                       </div>   <?php endif ?>
                </td>   
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<div class="inscrit-form"></div>


<script src="js/inscrit/liste.js" type="module"></script>

