<h2 class="title text-center">Les Classes et les Matieres</h2>


<table class="table table-striped">

    <thead>

        <tr>

            <th>code</th>

            <th>Nom de la matiere</th>

            <th>Nom en Arabe</th>

            <th>code de la classe</th>

            <th>Nom de la classe</th>

            <th>Horaire</th>

            <th>Coefficient</th>


        </tr>

    </thead>

    <tbody>

        <?php foreach ($data as $matiere): ?>

            <tr>

                <td><?= $matiere->codeClasseMatiere ?></td>

                <td><?= $matiere->nomMatiere ?></td>

                <td dir="rtl"><?= $matiere->ismeMatiere ?></td>

                <td><?= $matiere->codeClasse ?></td>

                <td><?= $matiere->nomClasse ?></td>

                <td><?= $matiere->horaireClasseMatiere ?></td>

                <td><?= $matiere->coefficientClasseMatiere ?></td>


            </tr>

        <?php endforeach ?>
        <?php if (isset($codeC)): ?>

            <tr>

                <td colspan="5">Total</td>

                <td><?= $horaires ?></td>

                <td><?= $coeffients ?></td>

                <td></td>

            </tr>

        <?php endif ?>

    </tbody>

</table>

<div class="center">
    <?php if (isset($codeM) && $_admin): ?>

        <a href="?p=classematiere/matiereform/<?= $codeM ?>" class="link">Editer en fonction de la matiere</a>

    <?php elseif (isset($codeC) && $_admin): ?>
        <a href="?p=classematiere/classeform/<?= $codeC ?>" class="link">Editer en fonction de la classe</a>

    <?php endif ?>

</div>