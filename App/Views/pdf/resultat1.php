<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultat du 1er Trimestre de la <?=$salleclasse->codeClasse.$salleclasse->indiceSalleClasse ?></title>
    <link rel="stylesheet" href="css/pdfstyle.css">
</head>

<body>

    <h2 class="title-center my-10 text-center">Résultat du 1er Trimestre de la <?=$salleclasse->codeClasse.$salleclasse->indiceSalleClasse ?></h2>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Numero</th>
                <th>Nom et Prenom</th>

                <?php foreach ($matieres as $matiere) { ?>
                    <th><?= $matiere->codeMatiere ?></th>
                <?php } ?>

                <th>Total</th>
                <th>Coeffs.</th>
                <th>Moyenne</th>
                <th>Rang</th>
                <th>Decision</th>
                <th>Mension</th>
            </tr>
            <tr>
                <th></th>
                <th></th>
                <?php foreach ($matieres as $matiere) { ?>
                    <th><span><?= $matiere->coefficientClasseMatiere ?? 0 ?></span></th>
                <?php } ?>
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
                    <td>
                        <center><?= $bulletin->eleve->numeroInscrit ?></center>
                    </td>
                    <td><span>
                            <?= $bulletin->eleve->nom ?>
                        </span> <br> <span>
                            <?= $bulletin->eleve->isme ?>
                        </span></td>

                    <?php foreach ($bulletin->getMatieresWithNotesAndMoyenne() as $matiere) { ?>
                        <td><span>
                                <?= $matiere->c1 ?? 0 ?>
                            </span>
                            <br>

                            <span>
                                <?= $matiere->moyenne ?? 0 ?>
                            </span>
                        </td>
                    <?php } ?>

                    <td>
                        <span>
                            <?= $bulletin->getSommeMoyenne() ?>
                        </span>
                        /
                        <span><?= $bulletin->getTotalPoints() ?></span>
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

</body>

</html>