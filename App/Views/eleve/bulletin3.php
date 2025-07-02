<h2 class="title text-center my-10">Bulletin de Notes</h2>
<p class="text-center"><u> Composition du 3ème trimestre </u></p>
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
                      <td colspan="2"><center><a href="?p=salleclasse/profil/<?=$notematieres->eleve->codeSalleClasse?>"><?=$notematieres->eleve->pseudoSalleClasse?></a></center></td>
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
                <th>I1</th>
                <th>I2</th>
                <th>I3</th>
                <th>I4</th>
                <th>I5</th>
                <th>I6</th>
                <th>
                    <span>Interro.</span>
                    <br>
                    <span>Interro*3</span>
                </th>
                <th>
                    <span>C1</span>
                    <br>
                    <span>C1*1</span>
                </th>
                <th>
                    <span>C2</span>
                    <br>
                    <span>C2*2</span>
                </th>
                <th>
                    <span>C3</span>
                    <br>
                    <span>C3*3</span>
                </th>
                <th>Total</th>
                <th>MD</th>
                <th>Coeff.</th>
                <th>MD*Coeff</th>
                <th colspan="2">Obs. disc.</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($notematieres->getNotes() as $matiere) { ?>
                <tr>
                    <td>
                    

                            <div class="space-between">
                                <span><?=$matiere->matiere->nomMatiere?></span> 
                                <span  dir="rtl"><?=$matiere->matiere->ismeMatiere?></span>
                            </div>
                        
                     </td>
                    <td class="<?=$matiere->i1?->statutExamen==0?"text-warning":""?>"><?=$matiere->i1?->note?:""?></td>
                    <td class="<?=$matiere->i2?->statutExamen==0?"text-warning":""?>"><?=$matiere->i2?->note?:""?></td>
                    <td class="<?=$matiere->i3?->statutExamen==0?"text-warning":""?>"><?=$matiere->i3?->note?:""?></td>
                    <td class="<?=$matiere->i4?->statutExamen==0?"text-warning":""?>"><?=$matiere->i4?->note?:""?></td>
                    <td class="<?=$matiere->i5?->statutExamen==0?"text-warning":""?>"><?=$matiere->i5?->note?:""?></td>
                    <td class="<?=$matiere->i6?->statutExamen==0?"text-warning":""?>"><?=$matiere->i6?->note?:""?></td>
                   
                    <td> <span> <?=$matiere->mi?> </span> <br> <span> <?=$matiere->miX3?> </span> </td>
                    <td class="<?=$matiere->c1?->statutExamen==0?"text-warning":""?>"> <span> <?=$matiere->c1?->note?> </span> <br> <span> <?=$matiere->c1x1?> </span> </td>
                    <td class="<?=$matiere->c2?->statutExamen==0?"text-warning":""?>"> <span> <?=$matiere->c2?->note?> </span> <br> <span> <?=$matiere->c2x2?> </span> </td>
                    <td  class="<?=$matiere->c3?->statutExamen==0?"text-warning":""?>"> <span> <?=$matiere->c3?->note?> </span> <br> <span> <?=$matiere->c3x3?> </span> </td>
                    <td><?=$matiere->total?></td>
                    <td><?=$matiere->moyenne?></td>
                    <td><?=$matiere->matiere->coefficientClasseMatiere ?></td>
                    <td><?=$matiere->points ?></td>
                    <td colspan="2"></td>
                </tr>
            <?php } ?>
            <tr>
                <td><strong>Total</strong></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><strong><?=$notematieres->getTotalCoeff() ?></strong></td>
                <td><strong><?=$notematieres->getPoints()?></strong></td>
                <td></td>
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
        <?php if($paramettre->rang):?>
          <tr>
            <th>Rang</th>
            <td><strong><?=$notematieres->getRang()?></strong></td>
            <th dir="rtl">الترتيب</th>
        </tr> 
        <?php endif?>
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
    <a target="_blank" href="?p=pdf/eleve/bulletin3/<?=$eleve->matricule??""?>" class="btn btn-success circle"><i class="fa fa-file-pdf"> </i></a>
</div>