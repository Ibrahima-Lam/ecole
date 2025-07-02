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
                    <h4 class="title my-10">Ministère de l’Education Nationale Et<br> de la Réforme du Système Educatif
                    </h4>
                    <p><u>Etablissement : <?= $paramettre::ETABLISSEMENT ?></u></p> 


                </td>
                <td style="width: 10%;">
                    <center> <img src="images/logo_ministere.jpeg" style="width: 70px; height: 70px;"> </center>
                </td>

                <td class="right" style="width: 45%;">
                    <h4 dir="rtl" class="text-center">الجمهورية الاسلامية الموريتانية</h4>
                    <span dir="rtl" class="text-center mx-10">شرف -الإخاء - العدل </span>
                    <h4 dir="rtl" class="text-center">وزارة التهذيب الوطني<br> وإصلاح النظام التعليمي</h4>
                    <p dir="rtl" class="text-center"><u>المؤسسة
                        <span dir="rtl" class="text-center mx-10"> : <?= $paramettre::ETABLISSEMENT_ARABE ?></span></u></p>

                </td>

            </tr>
            <tr>
                <th>Année Scolaire : <?= $paramettre::AnneeScolaire() ?></th>
                <th>&nbsp;</th>
                <th dir="rtl" class="right">السنة الدراسية : <?= $paramettre::AnneeScolaire() ?></th>
            </tr>
        </tbody>
    </table>
   
    <div class="text-center">
        <u>
            <strong>
               <?=__("Bulletin de Notes")?>
               
            </strong>
        </u>
    </div>
    <div class="text-center">
        <u>
            <small>

            <?=__format("Composition du %sème Trimestre",2)?>
                
            </small>
        </u>
    </div>
   <?php if($paramettre->image):?>
     <div class="text-center">
  
      <?php if(file_exists("profiles/eleve/".($bulletin->eleve->imagePath))&&$bulletin->eleve->imagePath):?>
                  <img class="border" style="width: 70px; height: 70px;object-fit: cover; " src="profiles/eleve/<?= $bulletin->eleve->imagePath ?>" alt="<?= $bulletin->eleve->nom ?>">
              <?php else:?>
                  <img class="border" style="width: 70px; height: 70px;object-fit: cover; " src="images/img_default.jpg" alt="<?= $bulletin->eleve->nom ?>">
  
              <?php endif?>
      
    </div>
   <?php endif?>

<div class="table-container mx-10 my-5">
    <table class="table">
        <tbody>
            <tr>
                <th style="width: 16%;">Numero</th>
                <th style="width: 30%;">&nbsp;</th>
                <th class="border" style="width: 8%;"><h3 ><center><?=$bulletin->eleve->numeroInscrit?></center></h3></th>
               <th style="width: 30%;"></th>
                <th style="width: 16%;" dir="rtl" class="right" >الرقم</th>
            </tr>
           <?php if($paramettre->matricule):?>
             <tr>
                 <th>Matricule</th>
                 <th>&nbsp;</th>
                 <td><center><?=$bulletin->eleve->matricule?></center></td>
                 <th>&nbsp;</th>
                 <th dir="rtl" class="right">المتريكول</th>
             </tr>
           <?php endif?>
           <?php if($paramettre->nni):?>
             <tr>
                 <th>NNI</th>
                 <th>&nbsp;</th>
                 <td><center><?=$bulletin->eleve->nni?></center></td>
                 <th>&nbsp;</th>
                 <th dir="rtl" class="right">الرقم الوطني</th>
             </tr>
           <?php endif?>
            <tr>
                <th>Nom et Prenom</th>
                <td dir="ltr" class="centered"><?=$bulletin->eleve->nom?></td>
                <th>&nbsp;</th>
                <td dir="rtl" class="centered"><?=$bulletin->eleve->isme?></td>
                <th dir="rtl" class="right">الاسم كامل</th>   
            </tr>
            <tr>
                <th>Classe</th>
                <th></th>
                <td ><center><strong><?=$bulletin->eleve->pseudoSalleClasse?></strong></center></td>
                <th></th>
                <th dir="rtl" class="right">القسم</th>
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
                <th>MI</th>
                <th>C1</th>
                <th>C2</th>
                <th>MD</th>
                <th>Coeff.</th>
                <th>MD*Coeff</th>
                <th style="width: 100px;">Obs. et disc.</th>
                
            </tr>
        </thead>
        <tbody>
            <?php foreach ($bulletin->getNotes() as $matiere) : ?>
                <tr>
                    <td>
                                <span><?=$matiere->matiere->nomMatiere?></span> 
                     </td>
                     <td class="right"> <span  dir="rtl"><?=$matiere->matiere->ismeMatiere?></span></td>
                    
                    <td><?=$matiere->i1?->note?></td>
                    <td><?=$matiere->i2?->note?></td>
                    <td><?=$matiere->mi?></td>
                    <td><?=$matiere->c1?->note?></td>
                    <td><?=$matiere->c2?->note?></td>
                    <td><?=$matiere->moyenne?></td>
                    <td><?=$matiere->matiere->coefficientClasseMatiere ?></td>
                    <td><?=$matiere->points?></td>
                    <td ></td>
                    
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
                <td><strong><?=$bulletin->getTotalCoeff() ?></strong></td>
                <td><strong><?=$bulletin->getPoints()?></strong></td>
                <td></td>
            </tr>
        </tfoot>
    </table>
</div>
<br>

<table>
     <tr>
         <td>
         
             <table class="table" style="width: 300px">
                 <tbody>
                     <tr>
                         <th>Moyenne</th>
                         <td><strong><?= $bulletin->getMoyenne(2) ?></strong></td>
                         <th dir="rtl">المعدل</th>
                     </tr>
                     
                     <tr>
                         <th> <?php if($paramettre->rang):?>Rang <?php else:?>&nbsp; <?php endif?> </th>
                         <td><?php if($paramettre->rang):?>
                            <?= $bulletin->getRang() ?>
                            <?php else:?>&nbsp; <?php endif?></td>
                         <th dir="rtl"> <?php if($paramettre->rang):?>الترتيب<?php else:?>&nbsp; <?php endif?> </th>
                     </tr>
                 
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
     <td style="width: 100px"></td>
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
                         <tr><td>&nbsp;</td><td></td><td></td></tr>
                         <tr><td>&nbsp;</td><td></td><td></td></tr>
                        
                        
                     </tbody>
                 </table>
             </td>
     </tr>
   </table>
    <br>
    <br>
    <br>
    <div class="mx-10">

        <table class='table mx-10'>
            <tr>
                <td>
                    <h3><u> <?=__("Directeur Général")?>
                    </u></h3>
                </td>
                <td>
                    <h3><u> <?=__("Directeur des Études")?>
                    </u></h3>
                </td>
                <td>
                    <h3><u> <?=__("Tuteur")?>
                    </u></h3>
                </td>
            </tr>
        </table>
    </div>
</body>

</html>