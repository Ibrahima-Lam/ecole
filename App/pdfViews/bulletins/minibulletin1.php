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
                <td><h4><?=$paramettre->getEtablissementName()?></h4></td>
                <td class="center" ><div >
                    <u>
                        <strong>
                            <?=__("Bulletin de Notes")?>
                            
                        </strong>
                    </u>
                </div>
            </td>
            <td class="right" dir="rtl" ><h4  ><?=$paramettre->getEtablissementNameArabe()?></h4></td>
        </tr>
    </tbody>
    </table>
    <div class="text-center">
    <u>
        <small>

            <?=__("Composition du 1er Trimestre")?>
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
                <th style="width: 25%;">Matiere</th>
                <th style="width: 20%;"></th>
                
                <th>i1</th>
                <th>i2</th>
                <th>MI</th>
                <th>C1</th>
                <th>MD</th>
                <th>Coeff.</th>
                <th>MD*Coeff</th>
                <th style="width: 20%;"><?=__("Observations")?></th>
                
            </tr>
        </thead>
        <tbody>
            <?php foreach ($bulletin->getNotes() as $matiere) : ?>
                <tr>
                    <td> <span><?=$matiere->matiere->nomMatiere?></span> </td>
                     <td class="right"> <span  dir="rtl"><?=$matiere->matiere->ismeMatiere?></span></td>
                    <td><?=$matiere->i1?->note?></td>
                    <td><?=$matiere->i2?->note?></td>
                    <td><?=$matiere->mi?></td>
                    <td><?=$matiere->c1?->note?></td>
                    <td><?=$matiere->moyenne?></td>
                    <td><?=$matiere->matiere->coefficientClasseMatiere ?></td>
                    <td><?=$matiere->points?></td>
                    <td ></td>
                    
                </tr>
            <?php endforeach ?>
            <tr>
                <td><strong><?=__("Total")?></strong></td>
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
                <td><strong><?=__("Moyenne")?>: <?=$bulletin->getMoyenne(2)?></strong></td>
                <td><strong> <?=__("Rang")?>: <?=$bulletin->getRang()?></strong></td>
                <td><strong><?=$bulletin->getDecision()?></strong></td>
            </tr>
        </tbody>
    </table>
</div> 
<br>
<br>
<table class='table mini mx-30'>
    <tr>
        <td  ><strong><u> <?=__("Directeur Général")?>
        </u></strong></td>
        <td  ><strong><u> <?=__("Directeur Des Etudes")?>
        </u></strong></td>
        <td  ><strong><u> <?=__("Tuteur")?>
        </u></strong></td>
    </tr>
</table>
<br>
<br>
</body>
</html>