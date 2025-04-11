<?php
$title="Notes";
?>

<h2 class="title text-center my-10">Releve de notes</h2>
<div class="space-between my-10">
   <p><strong>Classe</strong>:<div><?= $examen->codeClasse ?><?= $examen->indiceSalleClasse ?></div></p>
   <p><strong>Matière</strong>:<div><?= $examen->codeMatiere ?></div></p>
   <p><strong>Examen</strong>:<div><?= $examen->nomEvaluation ?></div></p>
   <p><strong>Date</strong>:<div><?= $examen->dateExamen ?></div></p>
</div>

<table class="table table-striped">
    <thead>
        <tr>
            <th>Matricule</th>
            <th>Numero</th>
            <th>Nom</th>
            <th>Code Examen</th>
            <th>Note</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($notes as $note): ?>
            <tr>
                <td><?= $note->matricule ?></td>
                <td><?= $note->numeroInscrit ?></td>
                <td><?= $note->nom ?></td>
                <td><?= $note->codeExamen ?></td>
                <td><?= $note->note ?></td>
                <td>
                    <div class="center">
                        <a class="edit" title="Editer" data-code="<?= $note->idNote ?>"><i class="bi-pencil text-primary"></i></a>
                        <a class="delete" title="Supprimer" data-code="<?= $note->idNote ?>"><i class="bi-trash text-danger"></i></a>
                    </div>
                </td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>

<script src="./js/note/examen.js" defer></script>