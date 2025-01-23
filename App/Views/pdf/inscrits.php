<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/pdfstyle.css">
    <title>Les classes</title>
</head>
<body>
    
<h2 class="title center my-10">La liste des eleves de la classe <?=$classe? $classe->codeClasse.$classe->indiceSalleClasse:'' ?></h2>

<div class="table-container">
    <table class="table table-striped my-10">
        <thead>
            <tr>
               <?php if($paramettre->matricule):?>
                 <th>Matricule</th>
               <?php endif?>
               <?php if($paramettre->numero):?>
                 <th>Numero</th>
               <?php endif?>
               <?php if($paramettre->nom):?>
                 <th>Nom</th>
               <?php endif?>
               <?php if($paramettre->isme):?>
                 <th>الاسم</th>
               <?php endif?>
                <?php if($paramettre->sexe):?>
                    <th>Sexe</th>
                <?php endif?>
                <?php if($paramettre->dateNaissance):?>
                    <th>Date de naissance</th>
                <?php endif?>
                <?php if($paramettre->adresse):?>
                    <th>Adresse</th>
                <?php endif?>
                <?php if($paramettre->nni):?>
                    <th>NNI</th>
                <?php endif?>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($inscrits as $inscrit): ?>
                <tr>
                    <?php if($paramettre->matricule):?>
                        <td><?= $inscrit->matricule ?></td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td><?= $inscrit->numeroInscrit ?></td>
                    <?php endif?>
                    <?php if($paramettre->nom):?>
                        <td><?= $inscrit->nom ?>
                      <?php if($paramettre->nom_isme):?>
                         <br> <span> <?= $inscrit->isme ?></span>
                      <?php endif?>
                    </td>
                    <?php endif?>
                   <?php if($paramettre->isme):?>
                     <td dir="rtl"><?= $inscrit->isme ?></td>
                   <?php endif?>
                   <?php if($paramettre->sexe):?>
                    <td><?= $inscrit->sexe ?></td>
                   <?php endif?>
                   <?php if($paramettre->dateNaissance):?>
                    <td><?= $inscrit->dateNaissance ?></td>
                   <?php endif?>
                   <?php if($paramettre->adresse):?>
                    <td><?= $inscrit->adresse ?></td>
                   <?php endif?>
                   <?php if($paramettre->nni):?>
                    <td><?= $inscrit->nni ?></td>
                   <?php endif?>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
</body>
</html>