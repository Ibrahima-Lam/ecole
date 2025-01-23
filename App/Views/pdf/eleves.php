<!DOCTYPE html>
<html lang="ar">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/pdfstyle.css">
    <title>Les eleves</title>
</head>

<body>

    <h1 class="title text-center">Les Eleves</h1>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Matricule</th>
                <th >Nom</th>
                <th>Sexe</th>
                <th>Date de naissance</th>
                <th>Adresse</th>
                <th>NNI</th>

            </tr>
        </thead>
        <tbody>

            <?php
            $eleves = $data;
            foreach ($eleves as $eleve): ?>

                <tr>
                    <td><?= $eleve->matricule ?></td>
                    <td><?= $eleve->nom ?><br><span dir="rtl"><?= $eleve->isme ?></span></td>
                    <td><?= $eleve->sexe ?></td>
                    <td><?= $eleve->dateNaissance ?></td>
                    <td><?= $eleve->adresse ?></td>
                    <td><?= $eleve->nni ?></td>

                </tr>
            <?php
            endforeach;
            ?>
        </tbody>
    </table>
</body>

</html>