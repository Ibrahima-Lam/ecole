<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/pdfstyle.css">
    <title>Bulletin</title>
</head>

<body>
    <table class="table">
        <tbody>
            <tr>

                <td style="width: 45%;">
                    <h4 class="title my-10">République Islamique de Mauritanie</h4>
                    <span>Honneur - fraternité - justice</span><br>
                    <h4 class="title my-10">Ministère de l’Education Nationale Et de la Réforme du Système Educatif
                    </h4>
                    <p><u>Etablissement : <?= $paramettre::getEtablissementName() ?></u></p> 


                </td>
                <td style="width: 15%;">
                    <center> <img src="images/logo_ministere.jpeg" style="width: 50px; height: 50px;"> </center>
                </td>

                <td class="right" style="width: 45%;">
                    <h4 dir="rtl" class="text-center">الجمهورية الاسلامية الموريتانية</h4>
                    <span dir="rtl" class="text-center mx-10">شرف -الإخاء - العدل </span>
                    <h4 dir="rtl" class="text-center">وزارة التهذيب الوطني وإصلاح النظام التعليمي</h4>
                    <p dir="rtl" class="text-center"><u>المؤسسة
                        <span dir="rtl" class="text-center mx-10"> : <?= $paramettre::getEtablissementNameArabe() ?></span></u></p>

                </td>

            </tr>
            <tr>
                <th>Année Scolaire : <?= $paramettre::AnneeScolaire() ?></th>
                <th>&nbsp;</th>
                <th dir="rtl" class="right">السنة الدراسية : <?= $paramettre::AnneeScolaire() ?></th>
            </tr>
        </tbody>
    </table>
   
    <div class="text-center ">
        <u>
            <strong>
               <?=__("Bulletin de Notes")?>
               
            </strong>
        </u>
    </div>
    <div class="text-center">
        <u>
            <small>

            <?=__format("Composition du %sème Trimestre",3)?>
                
            </small>
        </u>
    </div>
    
<div class="table-container mx-10">
    <table class="table">
        <tbody>
            <tr>
               <td style="width: 45%;">
                <table>
                    <tbody>
                        <tr>
                            <th>Numero</th>
                            <th>&nbsp;</th>
                            <th class="border"><center><?=$bulletin->eleve->numeroInscrit?></center></th>
                            <th>&nbsp;</th>
                            <th dir="rtl" class="right" scope="row">الرقم</th>
                        </tr>
                       
                        <tr>
                            <th>Nom et Prenom</th>
                            <td dir="ltr" class="centered"><?=$bulletin->eleve->nom?></td>
                            <td>&nbsp;</td>
                            <td dir="rtl" class="centered"><?=$bulletin->eleve->isme?></td>
                            <th dir="rtl" class="right">الاسم كامل</th>   
                        </tr>
                       
                    </tbody>
                </table>
               </td>
               <td style="width: 10%; height: 70px;">
               <?php if($paramettre->image):?>
     
  
      <?php if(file_exists("profiles/eleve/".($bulletin->eleve->imagePath))&&$bulletin->eleve->imagePath):?>
                  <img class="border" style="width: 70px; height: 70px;object-fit: cover; " src="profiles/eleve/<?= $bulletin->eleve->imagePath ?>" alt="<?= $bulletin->eleve->nom ?>">
              <?php else:?>
                  <img class="border" style="width: 70px; height: 70px;object-fit: cover; " src="images/img_default.jpg" alt="<?= $bulletin->eleve->nom ?>">
  
              <?php endif?>
      
   
   <?php endif?>
               </td>
               <td style="width: 45%;">
                <table class="table">
                    <tbody>
                      <?php if($paramettre->matricule):?>
                          <tr>
                              <th>Matricule</th>
                              <th>&nbsp;</th>
                              <th><center><?=$bulletin->eleve->matricule?></center></th>
                              <th>&nbsp;</th>
                              <th dir="rtl" class="right" scope="row">المتريكول</th>
                          </tr>
                         
                      <?php endif?>
                      <?php if($paramettre->nni):?>
                            <tr>
                            <th>NNI</th>
                            <td>&nbsp;</td>
                            <td dir="ltr" class="centered"><?=$bulletin->eleve->nni?></td>
                            <td>&nbsp;</td>
                            <th dir="rtl" class="right">الرقم الوطني</th>   
                        </tr>
                        <?php endif?>
                        <tr>
                            <th>Classe</th>
                            <td>&nbsp;</td>
                            <td dir="ltr" class="centered"><?=$bulletin->eleve->pseudoSalleClasse?></td>
                            <td>&nbsp;</td>
                            <th dir="rtl" class="right">القسم</th>   
                        </tr>
                    </tbody>
                </table>
               </td>
            </tr>
        </tbody>
    </table>
</div>
<div class="table-container">
    <table class="table <?= $paramettre->striped ? 'table-striped' : '' ?> <?= $paramettre->bordered ? 'table-bordered' : '' ?>">
        <thead>
            <tr>
                <th>Matiere</th>
                <th></th>
                <th>I1</th>
                <th>I2</th>
                <th>I3</th>
                <th>I4</th>
                <th>I5</th>
                <th>I6</th>
                <th> <span>MI*3</span> </th>
                <th> <span>C1*1</span> </th>
                <th> <span>C2*2</span> </th>
                <th> <span>C3*3</span> </th>
                <th>Total</th>
                <th>MD</th>
                <th>Coeff.</th>
                <th>MD*Coeff</th>
                <th style="width: 20%;">Observation et disc.</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($bulletin->getNotes() as $matiere) : ?>
                <tr>
                    <td> <span><?=$matiere->matiere->nomMatiere?></span> </td>
                    <td class="right"> <span  dir="rtl"><?=$matiere->matiere->ismeMatiere?></span></td>
                    <td><?=$matiere->i1?->note?></td>
                    <td><?=$matiere->i2?->note?></td>
                    <td><?=$matiere->i3?->note?></td>
                    <td><?=$matiere->i4?->note?></td>
                    <td><?=$matiere->i5?->note?></td>
                    <td><?=$matiere->i6?->note?></td>
                    <td> <span> <?=$matiere->miX3?> </span> </td>
                    <td> <span> <?=$matiere->c1x1?> </span> </td>
                    <td> <span> <?=$matiere->c2x2?> </span> </td>
                    <td> <span> <?=$matiere->c3x3?> </span> </td>
                    <td><?=$matiere->total?></td>
                    <td><?=$matiere->moyenne?></td>
                    <td><?=$matiere->matiere->coefficientClasseMatiere ?></td>
                    <td><?=$matiere->points ?></td>
                    <td></td>
                </tr>
            <?php endforeach ?>
        </tbody>
        <tfoot>
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
                <td></td>
                <td><strong><?=$bulletin->getTotalCoeff() ?></strong></td>
                <td><strong><?=$bulletin->getPoints()?></strong></td>
                <td></td>
                <td></td>
            </tr>
        </tfoot>
    </table>
</div>


<table>
     <tr>
         <td>
         
             <table class="table" style="width: 300px">
                 <tbody>
                 <tr>
                         <th>Moyenne</th>
                         <td><?= $bulletin->getMoyenne(2) ?></td>
                         <th dir="rtl">المعدل</th>
                     </tr>
                     
                     <tr>
                         <th> <?php if($paramettre->rang):?>Rang <?php else:?>&nbsp; <?php endif?> </th>
                         <td><?php if($paramettre->rang):?>
                            <?= $bulletin->getRang() ?>
                            <?php else:?>&nbsp; <?php endif?></td>
                         <th dir="rtl"> <?php if($paramettre->rang):?>الترتيب<?php else:?>&nbsp; <?php endif?> </th>
                     </tr>
                    
                 </tbody>
             </table>
     </td>
     <td>
        <table class="table" style="width: 300px">
            <tbody>
            <tr>
                          <th> <?php if($paramettre->decision):?>Décision<?php else:?>&nbsp; <?php endif?> </th>
                          <td><?php if($paramettre->decision):?>
                            <?=$paramettre->mention_decision ?$bulletin->getDecisionMention(): $bulletin->getDecision() ?>
                         <?php else:?>&nbsp; <?php endif?></td>
                          <th dir="rtl"> <?php if($paramettre->decision):?>القرار<?php else:?>&nbsp; <?php endif?> </th>
                      </tr>
                   
                  
                     <tr>
                         <th> <?php if($paramettre->mention):?>Mention<?php else:?>&nbsp; <?php endif?> </th>
                         <td><?php if($paramettre->mention):?>
                            <?= $bulletin->getMension() ?>
                         <?php else:?>&nbsp; <?php endif?></td>
                         <th dir="rtl"> <?php if($paramettre->mention):?>المقرار<?php else:?>&nbsp; <?php endif?> </th>
                     </tr>
            </tbody>
        </table>
     </td>
     <td style="width: 300px"></td>
             <td style="width: 300px" class="inline-block">
                 <table class="table" >
                     <tbody>
                     <tr>
                             <th> <?php if($paramettre->absences):?>Absence<?php endif?> </th>
                             <td><?php if($paramettre->absences):?>
                                <?= $bulletin->getAbsencesToString() ?>
                             <?php endif?></td>
                             <th dir="rtl" class="right"> <?php if($paramettre->absences):?>غياب<?php endif?> </th>
                         </tr>
                        
                         <tr>
                            <th> <?php if($paramettre->observations):?>Observation et discipline<?php endif?> </th>
                            <td></td>
                            <th dir="rtl" class="right"> <?php if($paramettre->observations):?>الملاحظة والانضباط<?php endif?> </th>
                         </tr>
                         
                     </tbody>
                 </table>
             </td>
     </tr>
   </table>
    <br>
   
    <div class="mx-10">

        <table class='table mx-10'>
            <tr>
                <td>
                    <h3><u> <?=__("Directeur Général")?>
                    </u></h3>
                </td>
                <td>
                    <h3><u> <?=__("Directeur Des Etudes")?>
                    </u></h3>
                </td>
                <td>
                    <h3><u> <?=__("Tuteur")?>
                    </u></strong>
                </td>
            </tr>
        </table>
    </div>
</body>

</html>