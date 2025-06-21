<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=__format("Resultat du 2eme Trimestre de la %s",$salleclasse->pseudoSalleClasse)?></title>
    <link rel="stylesheet" href="css/pdfstyle.css">
</head>

<body>

    <h2 class="title-center my-10 text-center"><?=__format("Résultat du 2ème Trimestre de la %s",$salleclasse->pseudoSalleClasse)?></h2>
    <table class="table <?= $paramettre->striped ? 'table-striped' : '' ?> table-bordered">
        <thead>
            <tr>
                <?php if($paramettre->matricule):?>
                    <th>Matricule</th>
                <?php endif?>
                <?php if($paramettre->numero):?>
                    <th>Numero</th>
                <?php endif?>
                <th>Nom et Prenom</th>

                <?php foreach ($matieres as $matiere) : ?>
                    <th><?= $matiere->codeMatiere ?></th>
                <?php endforeach ?>

                <th>Points</th>
                <th>Coeffs.</th>
                <th>Moyenne</th>
                <th>Rang</th>
                <th>Decision</th>
                <th>Mension</th>
            </tr>
            <tr>
                <?php if($paramettre->matricule):?>
                    <th></th>
                <?php endif?>
                <?php if($paramettre->numero):?>
                    <th></th>
                <?php endif?>
                <th></th>
                <?php foreach ($matieres as $matiere) : ?>
                    <th><span><?= $matiere->coefficientClasseMatiere ?? 0 ?></span></th>
                <?php endforeach ?>
                <th></th>
                <th><?php if (!empty($data[0])): ?>
                        <span>
                            <?= $data[0]->getTotalCoeff() ?>
                        </span>
                    <?php endif ?>
                </th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $bulletin): ?>
                <tr>
                    <?php if($paramettre->matricule):?>
                        <td>
                            <center><?= $bulletin->eleve->matricule ?></center>
                        </td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td>
                            <center><?= $bulletin->eleve->numeroInscrit ?></center>
                        </td>
                    <?php endif?>
                    <td>
                        <?php if($paramettre->nom):?>
                            <span>
                                <?= $bulletin->eleve->nom ?>
                            </span> 
                        <?php endif?>
                        <?php if($paramettre->nom && $paramettre->isme):?>
                            <br>
                        <?php endif?>
                        <?php if($paramettre->isme):?>
                            <span>
                                <?= $bulletin->eleve->isme ?>
                            </span>
                        <?php endif?>
                    </td>

                    <?php foreach ($bulletin->getNotes() as $matiere) { ?>
                        <td><span>
                                <?= $matiere->c2?->note ?? 0 ?>
                            </span>
                            <br>

                            <span>
                                <?= $matiere->points ?? 0 ?>
                            </span>
                        </td>
                    <?php } ?>

                    <td>
                        <span>
                            <?= $bulletin->getPoints() ?>
                        </span>
                        /
                        <span><?= $bulletin->getMatiereTotalPoints() ?></span>
                    </td>
                    <td><?= $bulletin->getTotalCoeff() ?></td>
                    <td><?= $bulletin->getMoyenne(2) ?></td>
                    <td><?= $bulletin->getRang() ?></td>
                    <td><?= $bulletin->getDecision() ?></td>
                    <td><?= $bulletin->getMension() ?></td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
    <?php if($paramettre->statistiques):?>
        <pagebreak/>
    <div class="statistiques">
        <h2>Statistiques</h2>
<table class="table table-bordered">
    <tr>
        <th><?=__("Effectif")?></th>
        <th><?=__("Admis")?></th>
        <th><?=__("Non Admis")?></th>
        <th><?=__("Mention Tres Faible")?></th>
        <th><?=__("Mention Faible")?></th>
        <th><?=__("Mention Passable")?></th>
        <th><?=__("Mention Bien")?></th>
        <th><?=__("Mention Assez Bien")?></th>
        <th><?=__("Mention Tres Bien")?></th>
    </tr>
    <tr>
        <td><?= $statistiques->effectif ?></td>
        <td><?= $statistiques->admis ?></td>
        <td><?= $statistiques->nonAdmis ?></td>
        <td><?= $statistiques->mentionTresFaible ?></td>
        <td><?= $statistiques->mentionFaible ?></td>
        <td><?= $statistiques->mentionPassable ?></td>
        <td><?= $statistiques->mentionBien ?></td>
        <td><?= $statistiques->mentionAssezBien ?></td>
        <td><?= $statistiques->mentionTresBien ?></td>
    </tr>
</table>
    </div>
    <?php endif?>
</body>

</html>