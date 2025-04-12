<?php
$title = "Relevé de notes";

?>
<h2 class="text-center my-10">Relevé de notes</h2>
<div class="space-around my-10">
    <p>
        <strong>Classe :</strong> <?= $salleClasse->codeClasse. $salleClasse->indiceSalleClasse ?>
    </p>
    <p>
        <strong>Matière :</strong> <?= $data->matiere->nomMatiere ?>
    </p>
</div>

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

<div class="fixed-action">
    <a class="btn btn-success circle" title="Imprimer" href="?p=pdf/note/releve/<?= $salleClasse->codeSalleClasse ?>/<?= $data->matiere->codeMatiere ?>">
        <i class="bi-printer"></i>
    </a>
    <button id="excel" class="btn btn-success circle" title="Excel" >
        <i class="bi-file-earmark-excel"></i>
    </button>
    <button class="btn btn-primary circle" title="Paramétre" id="parametre">
        <i class="bi-gear"></i>
    </button>
</div>
<script>
    document.getElementById('excel').addEventListener('click', function() {
        window.location.href = "?p=note/releveExcel/<?= $salleClasse->codeSalleClasse ?>/<?= $data->matiere->codeMatiere ?>";
    });
</script>