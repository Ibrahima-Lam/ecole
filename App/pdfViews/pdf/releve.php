<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relevé de notes</title>
    <link rel="stylesheet" href="css/pdfstyle.css">
</head>
<body>
<h2 class="text-center my-10">Relevé de notes</h2>
<table class="space-around my-10">
    <tr>
        <td>
            <strong>Classe :</strong> <?= $salleClasse->codeClasse. $salleClasse->indiceSalleClasse ?>
        </td>
        <td>
            <strong>Matière :</strong> <?= $data->matiere->nomMatiere ?>
        </td>
        <td>
            <strong>Date :</strong> <?= date('d/m/Y') ?>
        </td>
    </tr>
</table>

<div class="table-container">
    <table class="table <?=$paramettre->striped?'table-striped':''?> <?=$paramettre->bordered?'table-bordered':''?>">
        <thead>
            <tr>
                <?php if($paramettre->matricule):?>
                    <th>Matricule</th>
                <?php endif?>
                <?php if($paramettre->numero):?>
                    <th>Numéro</th>
                <?php endif?>
                <?php if($paramettre->nom):?>
                    <th>Nom</th>
                <?php endif?>
                <?php if($paramettre->isme):?>
                    <th>Nom en Arabe</th>
                <?php endif?>
                <?php foreach ($data->examens as $examen) : ?>
                    <th><?= $examen->codeEvaluation ?></th>
                <?php endforeach; ?>
                <?php if($paramettre->moyenne_interro):?>
                    <th><?=__("MI")?></th>
                <?php endif?>
                <?php if($paramettre->total):?>
                    <th><?=__("Tot.")?></th>
                <?php endif?> 
                <?php if($paramettre->moyenne):?>
                    <th><?=__("Moy.")?></th>
                <?php endif?> 
                <?php if($paramettre->coefficient):?>
                    <th><?=__("Coeff.")?></th>
                <?php endif?> 
                <?php if($paramettre->points):?>
                    <th><?=__("Pts")?></th>
                <?php endif?> 
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data->getClasseResultat() as $eleve) : ?>
                <tr>
                    <?php if($paramettre->matricule):?>
                        <td><?= $eleve->matricule ?></td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td><?= $eleve->numeroInscrit ?></td>
                    <?php endif?>
                    <?php if($paramettre->nom):?>
                        <td><?= $eleve->nom ?>
                    <?php if($paramettre->nom_isme):?>
                        <br>
                        <?= $eleve->isme ?>
                    <?php endif?>
                    </td>
                    <?php endif?>
                    <?php if($paramettre->isme):?>
                        <td><?= $eleve->isme ?></td>
                    <?php endif?>
                    <?php foreach ($data->examens as $examen) : ?>
                        <td><?= $eleve->notes[$examen->codeEvaluation]->note??0 ?></td>
                    <?php endforeach; ?>
                    <?php if($paramettre->moyenne_interro):?>
                        <td><?= $eleve->moyenneInterro??0 ?></td>
                    <?php endif?>
                    <?php if($paramettre->total):?>
                        <td><?= $eleve->total??0 ?></td>
                    <?php endif?>
                        <?php if($paramettre->moyenne):?>
                        <td><?= $eleve->moyenne??0 ?></td>
                    <?php endif?> 
                    <?php if($paramettre->coefficient):?>
                        <td><?= $eleve->coefficient??0 ?></td>
                    <?php endif?> 
                    <?php if($paramettre->points):?>
                        <td><?= $eleve->points??0 ?></td>
                    <?php endif?> 
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>
<br>
<?php if($paramettre->statistiques):?>
    <h3 class="text-center my-10"><?=_("Total des Moyennes") ?></h3>
    <div class="table-container">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th><?=__format('%s a %s',0,5) ?></th>
                    <th><?=__format('%s a %s',5,10) ?></th>
                    <th><?=__format('%s a %s',10,15) ?></th>
                    <th><?=__format('%s a %s',15,20) ?></th>
                    <th><?=_('Admis') ?></th>
                    <th><?=_('Non Admis') ?></th>
                </tr>
    
            </thead>
            <tbody>
                <tr>
                    <td><?=$data->getStatistiques()->i1 ?></td>
                    <td><?=$data->getStatistiques()->i2 ?></td>
                    <td><?=$data->getStatistiques()->i3 ?></td>
                    <td><?=$data->getStatistiques()->i4 ?></td>
                    <td><?=$data->getStatistiques()->admis ?></td>
                    <td><?=$data->getStatistiques()->nonAdmis ?></td>
                </tr>
            </tbody>
        </table>
    </div>
<?php endif?>
</body>
</html>