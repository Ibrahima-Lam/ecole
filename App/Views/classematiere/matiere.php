<h2 class="title text-center">Les Classes et les Matieres</h2>


<table class="table table-striped">

    <thead>

        <tr>

            <th><?=__("code")?></th>

            <th><?=__("Nom de la matiere")?></th>

            <th><?=__("Nom en Arabe")?></th>

            <th><?=__("code de la classe")?></th>

            <th><?=__("Nom de la classe")?></th>

            <th><?=__("Horaire")?></th>

            <th><?=__("Coefficient")?></th>


        </tr>

    </thead>

    <tbody>

        <?php foreach ($data as $matiere): ?>

            <tr>

                <td><?= htmlspecialchars($matiere->codeClasseMatiere) ?></td>

                <td><a href="?p=classematiere/matiere/<?= htmlspecialchars($matiere->codeMatiere) ?>"><?= htmlspecialchars($matiere->nomMatiere) ?></a></td>

                <td dir="rtl"> <a href="?p=classematiere/matiere/<?= htmlspecialchars($matiere->codeMatiere) ?>"><?= htmlspecialchars($matiere->ismeMatiere) ?></a></td>

                <td><a href="?p=classematiere/classe/<?= htmlspecialchars($matiere->codeClasse) ?>"><?= htmlspecialchars($matiere->codeClasse) ?></a></td>

                <td><a href="?p=classematiere/classe/<?= htmlspecialchars($matiere->codeClasse) ?>"><?= htmlspecialchars($matiere->nomClasse) ?></a></td>

                <td><?= htmlspecialchars($matiere->horaireClasseMatiere) ?></td>

                <td><?= htmlspecialchars($matiere->coefficientClasseMatiere) ?></td>

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

        <a href="?p=classematiere/matiereform/<?= $codeM ?>" class="link"><?=__("Editer en fonction de la matiere")?></a>

    <?php elseif (isset($codeC) && $_admin): ?>
        <a href="?p=classematiere/classeform/<?= $codeC ?>" class="link"><?=__("Editer en fonction de la classe")?></a>

    <?php endif ?>

</div>