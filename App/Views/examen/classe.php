<?php
$classe??=null;
?>
<input type="hidden" id="classe" name="classe" value="<?=$classe ? $classe->codeSalleClasse ?? null : null ?>">

<script type="module" src="js/examen/classe.js" defer></script>
<h2 class="title text-center my-10">Les Examens <?=$classe ? 'de la classe '.$classe->codeClasse.$classe->indiceSalleClasse:'' ?></h2>

<?php foreach($data->getMatiereExamen() as $matiere):?>

<h3 class="title text-center my-10"><u><?=$matiere->matiere->nomMatiere?></u></h3>
<div class="table-container">
    <table class="table table-striped my-10">
        <thead>
            <tr>
                <th>Code</th>
                <th>Classe</th>
                <th>Matiere</th>
                <th>Type</th>
                <th>Date</th>
                <th>Actions</th>   
            </tr>
        </thead>
        <tbody>
            <?php
           
            foreach ($matiere->examens as $examen): ?>
                <tr>
                    <td><?= $examen->codeExamen ?></td>
                    <td><?= $examen->codeClasse ?><?= $examen->indiceSalleClasse ?></td>
                    <td><?= $examen->codeMatiere ?></td>
                    <td><?= $examen->nomEvaluation ?></td>
                    <td><?= $examen->dateExamen ?></td>
                    <td>
                        <div class="center">
                        <a class="edit" data-code="<?= $examen->codeExamen ?>"><i class="bi-pencil"></i></a>
                        <a class="delete" data-code="<?= $examen->codeExamen ?>"><i class="bi-trash text-danger"></i></a>
                        </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<?php endforeach?>

<div class="fixed-action">
    <button title="ajouter un examen" class="btn btn-success circle" id="add">
        <i class="bi-plus"></i>
    </button>
    <a id="paramettre" title="ajouter plusieurs examens" class="btn btn-primary circle" href="?p=examen/forms/<?=$classe->codeSalleClasse?>"><i class="bi-briefcase"></i></a>
</div>

<dialog id="dialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body">
        
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close">Fermer</button>
    </div>
</dialog>
