<h2 class="title text-center my-10">Bulletin de Notes</h2>
<?= $subsidebar ?>

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
                <td colspan="2"><center><a href="?p=salleclasse/profil/<?=$notematieres->eleve->codeSalleClasse?>"><?=$notematieres->eleve->codeClasse.$notematieres->eleve->indiceSalleClasse?></a></center></td>

                <th dir="rtl" class="right">القسم</th>
            </tr>
        </tbody>
    </table>
</div>
<br>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Matiere</th>
                <th>Interrogations</th>
                <th>Composition</th>
                <th>Coefficient</th>
                <th>Note*Coeff</th>
                <th colspan="2">Observations et discipline</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($notematieres->getMatieresWithNotesAndMoyenne() as $matiere) { ?>
                <tr>
                    <td>
                    

                            <div class="space-between">
                                <span><?=$matiere->matiere->nomMatiere?></span> 
                                <span  dir="rtl"><?=$matiere->matiere->ismeMatiere?></span>
                            </div>
                        
                     </td>
                    <td><?=$matiere->d1?></td>
                    <td><?=$matiere->c1?></td>
                    <td><?=$matiere->matiere->coefficientClasseMatiere ?></td>
                    <td><?=$matiere->moyenne?></td>
                    <td colspan="2"></td>
                </tr>
            <?php } ?>
            <tr>
                <td><strong>Total</strong></td>
                <td></td>
                <td></td>
                <td><strong><?=$notematieres->getTotalCoeff() ?></strong></td>
                <td><strong><?=$notematieres->getSommeMoyenne()?></strong></td>
                <td></td>
            </tr>
        </tbody>
    </table>
</div>
<br>
<table class="table" style="width: 300px">
    <tbody>
        <tr>
            <th>Moyenne</th>
            <td><strong><?=$notematieres->getMoyenne(2)?></strong></td>
            <th dir="rtl">المعدل</th>
        </tr>
          <tr>
            <th>Rang</th>
            <td><strong><?=$notematieres->getRang([])?></strong></td>
            <th dir="rtl">الترتيب</th>
        </tr> 
        <tr>
            <th>Decision</th>
            <td><strong><?=$notematieres->getDecision()?></strong></td>
            <th dir="rtl">القرار</th>
        </tr>
        <tr>
            <th>Mension</th>
            <td><strong><?=$notematieres->getMension()?></strong></td>
            <th dir="rtl">المقرار</th>
        </tr>
    </tbody>
</table>
<div class="fixed-action">
    <a href="?p=pdf/eleve/bulletin/<?=$eleve->matricule??""?>" class="btn btn-success circle"><i class="bi-filetype-pdf"> </i></a>
</div>