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
                <td><h4><?=$paramettre->getEtablissemment()?></h4></td>
                <td class="center" ><div >
                    <u>
                        <strong>
                            Bulletin de Notes
                        </strong>
                    </u>
                </div>
            </td>
            <td class="right" dir="rtl" ><h4  ><?=$paramettre->getEtablissemmentArabe()?></h4></td>
        </tr>
    </tbody>
    </table>

<div class="text-center">
    <u>
        <small>
            Composition du 2ème Trimestre
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
    <table class="table mini <?= $paramettre->striped ? 'table-striped' : '' ?> <?= $paramettre->bordered ? 'table-bordered' : '' ?>">
        <thead>
            <tr>
                <th>Matiere</th>
                <th></th>
                <th><span>Interro*3 &nbsp;</span></th>
                <th><span> C1*1 &nbsp;</span></th>
                <th><span> C2*2 &nbsp;</span></th>
                <th><span> C3*3 &nbsp;</span></th>
                <th><span>Total</span></th>
                <th><span>MD</span></th>
                <th><span>Coeff.</span></th>
                <th><span>MD*Coeff</span></th>
                <th><span>Observation. et disc.</span></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($bulletin->getMatieresWithNotesAndMoyenne() as $matiere) { ?>
                <tr>
                    <td> <span><?=$matiere->matiere->nomMatiere?></span> </td>
                     <td class="right"> <span  dir="rtl"><?=$matiere->matiere->ismeMatiere?></span></td>
                     <td> <span> <?=$matiere->totalInterrogation?> </span> </td>
                    <td> <span> <?=$matiere->c1x1?> </span> </td>
                    <td> <span> <?=$matiere->c2x2?> </span> </td>
                    <td> <span> <?=$matiere->c3x3?> </span> </td>
                    <td><span> <?=$matiere->total?> </span></td>
                    <td><span> <?=$matiere->moyenne?> </span></td>
                    <td><span> <?=$matiere->matiere->coefficientClasseMatiere ?> </span></td>
                    <td><span> <?=$matiere->points ?> </span></td>
                    <td></td>
                    
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
                <td><strong><?=$bulletin->getTotalCoeff() ?></strong></td>
                <td><strong><?=$bulletin->getPoints()?></strong></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
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