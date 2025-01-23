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
                <td><h4>Etablissemment</h4></td>
                <td class="center" ><div >
                    <u>
                        <strong>
                            Bulletin de Notes
                        </strong>
                    </u>
                </div>
            </td>
            <td class="right" dir="rtl" ><h4  >المؤسسة</h4></td>
        </tr>
    </tbody>
    </table>

<div class="text-center">
    <u>
        <small>

            Composition du 1er Trimestre
        </small>
    </u>
</div>
<div class="table-container mx-10">
    <table class="table">
        <tbody>
            <tr>
                <th>Numero</th>
                <td colspan="2"><center><?=$bulletin->eleve->numeroInscrit?></center></td>
                <th dir="rtl" class="right" scope="row">الرقم</th>
            </tr>
            <tr>
                <th>Nom et Prenom</th>
                <td><?=$bulletin->eleve->nom?></td>
                <td><?=$bulletin->eleve->isme?></td>
                <th dir="rtl" class="right">الاسم كامل</th>   
            </tr>
            <tr>
                <th>Classe</th>
                <td colspan="2"><center><strong><?=$bulletin->eleve->codeClasse?><?=$bulletin->eleve->indiceSalleClasse?></strong></center></td>
                <th dir="rtl" class="right">القسم</th>
            </tr>
        </tbody>
    </table>
</div>
<div class="table-container">
    <table class="table mini table-striped">
        <thead>
            <tr>
                <th>Matiere</th>
                <th></th>
                
                <th>Interro.</th>
                <th>Compos.</th>
                <th>Coeff.</th>
                <th>Compos*Coeff</th>
                <th >Observations</th>
                
            </tr>
        </thead>
        <tbody>
            <?php foreach ($bulletin->getMatieresWithNotesAndMoyenne() as $matiere) { ?>
                <tr>
                    <td>
                                <span><?=$matiere->matiere->nomMatiere?></span> 
                     </td>
                     <td class="right"> <span  dir="rtl"><?=$matiere->matiere->ismeMatiere?></span></td>
                    
                    <td><?=$matiere->interrogation?></td>
                    <td><?=$matiere->examen?></td>
                    <td><?=$matiere->matiere->coefficientClasseMatiere ?></td>
                    <td><?=$matiere->moyenne?></td>
                    <td ></td>
                    
                </tr>
            <?php } ?>
            <tr>
                <td><strong>Total</strong></td>
                <td></td>
                <td></td>
                <td></td>
                <td><strong><?=$bulletin->getTotalCoeff() ?></strong></td>
                <td><strong><?=$bulletin->getSommeMoyenne()?></strong></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><Strong>Moyenne: <?=$bulletin->getMoyenne(2)?></Strong></td>
                <td><strong> Rang: <?=$bulletin->getRang()?></strong></td>
                <td><strong><?=$bulletin->getDecision()?></strong></td>
            </tr>
        </tbody>
    </table>
</div> 
<br>
<br>
<table class='table mini mx-30'>
    <tr>
        <td  ><strong><u> Directeur Général</u></strong></td>
        <td  ><strong><u> Directeur Des Etudes</u></strong></td>
        <td  ><strong><u> Parent D'élève</u></strong></td>
    </tr>
</table>
<br>
<br>
</body>
</html>