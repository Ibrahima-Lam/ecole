<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relevé de notes</title>
    <link rel="stylesheet" href="css/pdfstyle.css">
</head>

<body>
    <h3 class="title text-center">Relevé de notes</h3>
    <table class="table">
        <tbody class="space-evenly my-10 mx-10">
            <tr>
                <td class="mx-10"><strong>Classe :</strong>
                    <span><?= $examen->codeClasse ?><?= $examen->indiceSalleClasse ?></span>
                </td>
                <td class="mx-10"><strong>Matière :</strong>
                    <span><?= $examen->codeMatiere ?></span>
                </td>
                <td class="mx-10"><strong>Examen :</strong>
                    <span><?= $examen->nomEvaluation ?></span>
                </td>
            </tr>
        </tbody>
    </table>
    <table class="table table-striped">
        <thead>
            <tr>
                <?php if($noteParam->matricule): ?>
                    <th>Matricule</th>
                <?php endif; ?>
                <?php if($noteParam->numero): ?>
                    <th>Numero</th>
                <?php endif; ?>
                <?php if($noteParam->nom): ?>
                    <th>Nom</th>
                <?php endif; ?>
                <?php if($noteParam->isme): ?>
                    <th>Nom en Arabe</th>
                <?php endif; ?>
                <th>Note</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($notes as $note): ?>
                <tr>
                    <?php if($noteParam->matricule): ?>
                        <td><?= $note->matricule ?></td>
                    <?php endif; ?>
                    <?php if($noteParam->numero): ?>
                        <td><?= $note->numeroInscrit ?></td>
                    <?php endif; ?>
                    <?php if($noteParam->nom): ?>
                        <td><?= $note->nom ?>
                        <?php if($noteParam->nom_isme): ?>
                            <br>
                            <?= $note->isme ?>
                        <?php endif; ?>
                    </td>
                    <?php endif; ?>
                    <?php if($noteParam->isme): ?>
                        <td dir="rtl"><?= $note->isme ?></td>
                    <?php endif; ?>
                    <td><?= $note->note ?></td>
                </tr>
            <?php endforeach ?>

        </tbody>
    </table>

</body>

</html>