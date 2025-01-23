

<div class="table-container">
    <table class="table">
        <tbody>
            <tr>
                <th>Numero</th>
                <td colspan="2"><center><strong><?=$notematieres->eleve->numeroInscrit?></strong></center></td>
                <th dir="rtl"class="right" scope="row">الرقم</th>
            </tr>
            <tr>
                <th>Matricule</th>
                <td colspan="2"><center><strong><?=$notematieres->eleve->matricule?></strong></center></td>
                <th dir="rtl"class="right">المتريكول</th>
            </tr>
            <tr>
                <th>NNI</th>
                <td colspan="2"><center><strong><?=$notematieres->eleve->nni?></strong></center></td>
                <th dir="rtl"class="right" scope="row">الرقم الوطني</th>
            </tr>
            <tr>
                <th>Nom</th>
                <td><?=$notematieres->eleve->nom?></td>
                <td><?=$notematieres->eleve->isme?></td>
                <th dir="rtl" class="right">الاسم</th>
            </tr>
            <tr>
                <th>Classe</th>
                <td colspan="2"><center><?=$notematieres->eleve->codeClasse?></center></td>
                <th dir="rtl" class="right">القسم</th>
            </tr>
        </tbody>
    </table>
</div>




<h3 class='title text-center my-10'> <u>Les Notes</u></h3>
<?= $subsidebar ?>

<?php foreach($notematieres->getMatieresWithNotes() as $notematiere):?>
   
    <h4 class='title text-center my-10'><?=$notematiere->matiere->nomMatiere?>&nbsp;<span dir="rtl"><?=$notematiere->matiere->ismeMatiere?></span></h4>
    <div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Matiere</th>
                <?php foreach($notematiere->notes as $note):?>
                <th scope="col"><?=ucwords($note->nomEvaluation)?></th>
                <?php endforeach?>
               
            </tr>
        </thead>
        <tbody>
            <tr>
                <td scope="row"><?=$notematiere->matiere->codeMatiere ?></td>
                <?php foreach($notematiere->notes as $note):?>
                <td>
                    <?php if($note->statutExamen==0):?>
                        <strike> <?=$note->note?></strike>
                    <?php else:?>
                        <?=$note->note?>
                    <?php endif?>
                </td>
                <?php endforeach?>
            </tr>
        </tbody>
    </table>
    </div>
   <?php endforeach?>

