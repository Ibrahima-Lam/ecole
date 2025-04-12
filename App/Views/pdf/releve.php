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
    <table class="table table-striped">
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
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
</body>
</html>