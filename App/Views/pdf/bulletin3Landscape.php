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

                <th style="width: 45%;">
                    <h4 class="title my-10">République Islamique de Mauritanie</h4>
                    <span>Honneur - fraternite - justice</span><br>
                    <h4 class="title my-10">Ministère de l’Education Nationale Et de la Réforme du Système Educatif
                    </h4>


                </th>
                <th style="width: 15%;">
                    <center> <img src="images/logo_ministere.jpeg" style="width: 40px; height: 40px;"> </center>
                </th>

                <th class="right" style="width: 45%;">
                    <h4 dir="rtl" class="text-center">الجمهورية الاسلامية الموريتانية</h4>
                    <span dir="rtl" class="text-center mx-10">شرف -الإخاء - العدل </span>
                    <h4 dir="rtl" class="text-center">وزارة التهذيب الوطني و الإصلاح</h4>
                </th>

            </tr>
            <tr>
                <td> <span>Etablissement : </span> <span><?= $paramettre::ETABLISSEMENT ?></span></td>
                <td>
                    <h3>
                        <center> N<sup>o</sup>&nbsp;<?= $bulletin->eleve->numeroInscrit ?> </center>
                    </h3>
                </td>
                <td class="right"><span> المؤسسة</span><span> : <?= $paramettre::ETABLISSEMENT_ARABE ?></span> </td>
            </tr>
        </tbody>
    </table>
   
    <div class="text-center ">
        <u>
            <strong>
               <?=__(" Bulletin de Notes")?>
               
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
                <th>Numero</th>
                <th colspan="2"><center><?=$bulletin->eleve->numeroInscrit?></center></th>
                <th dir="rtl" class="right" scope="row">الرقم</th>
            
                <th><?php if($paramettre->matricule):?> Matricule <?php endif?></th>
                <td colspan="2"><?php if($paramettre->matricule):?> <center><?=$bulletin->eleve->matricule?></center> <?php endif?></td>
                <th dir="rtl" class="right"><?php if($paramettre->matricule):?> المتريكول <?php endif?></th>  
            
                <th><?php if($paramettre->nni):?> الرقم الوطني <?php endif?></th>
                <td colspan="2"><?php if($paramettre->nni):?> <center><?=$bulletin->eleve->nni?></center> <?php endif?></td>
                <th dir="rtl" class="right"><?php if($paramettre->nni):?> الرقم الوطني <?php endif?></th>
            </tr>
            <tr>
                <th>Nom et Prenom</th>
                <td><?=$bulletin->eleve->nom?></td>
                <td><?=$bulletin->eleve->isme?></td>
                <th dir="rtl" class="right">الاسم كامل</th>   
                <td></td>
                <td></td>
                <th>Classe</th>
                <td colspan="2"><center><strong><?=$bulletin->eleve->codeClasse?><?=$bulletin->eleve->indiceSalleClasse?></strong></center></td>
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
                <th>D1</th>
                <th>D2</th>
                <th>D3</th>
                <th> <span>Interro*3</span> </th>
                <th> <span>C1*1</span> </th>
                <th> <span>C2*2</span> </th>
                <th> <span>C3*3</span> </th>
                <th>Total</th>
                <th>MD</th>
                <th>Coeff.</th>
                <th>MD*Coeff</th>
                <th>Observation et disc.</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($bulletin->getMatieresWithNotesAndMoyenne() as $matiere) : ?>
                <tr>
                    <td> <span><?=$matiere->matiere->nomMatiere?></span> </td>
                    <td class="right"> <span  dir="rtl"><?=$matiere->matiere->ismeMatiere?></span></td>
                    <td><?=$matiere->d1?></td>
                    <td><?=$matiere->d2?></td>
                    <td><?=$matiere->d3?></td>
                    <td> <span> <?=$matiere->totalInterrogation?> </span> </td>
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
                         <td><strong><?= $bulletin->getMoyenne(2) ?></strong></td>
                         <th dir="rtl">المعدل</th>
                     </tr>
                     <tr>
                         <th>Rang</th>
                         <td><strong><?= $bulletin->getRang() ?></strong></td>
                         <th dir="rtl">الترتيب</th>
                     </tr>
                     <tr>
                         <th>Decision</th>
                         <td><strong><?= $bulletin->getDecision() ?></strong></td>
                         <th dir="rtl">القرار</th>
                     </tr>
                     <tr>
                         <th>Mension</th>
                         <td><strong><?= $bulletin->getMension() ?></strong></td>
                         <th dir="rtl">المقرار</th>
                     </tr>
                 </tbody>
             </table>
     </td>
     <td style="width: 100px"></td>
             <td style="width: 300px" class="inline-block">
                 <table class="table" >
                     <tbody>
                         <tr>
                             <th>Abscence</th>
                             <td><?= $bulletin->getAbsencesToString() ?></td>
                             <th dir="rtl">غياب</th>
                         </tr>
                         <tr><td>&nbsp;</td><td></td><td></td></tr>
                         <tr><td>&nbsp;</td><td></td><td></td></tr>
                         <tr><td>&nbsp;</td><td></td><td></td></tr>
                        
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
                    <h3><u> <?=__("Parent D'élève")?>
                    </u></strong>
                </td>
            </tr>
        </table>
    </div>
</body>

</html>