<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relevé de notes</title>
    <link rel="stylesheet" href="css/pdfstyle.css">
</head>
<body>
<h2 class="text-center my-10">Relevé de notes</h2>
<table class="space-around my-10">
    <tr>
        <td>
            <strong>Classe :</strong> <?= htmlspecialchars($salleClasse->codeClasse. $salleClasse->indiceSalleClasse) ?>
        </td>
        <td>
            <strong>Matière :</strong> <?= htmlspecialchars($data->matiere->nomMatiere) ?>
        </td>
        <td>
            <strong>Date :</strong> <?= htmlspecialchars(date('d/m/Y')) ?>
        </td>
    </tr>
</table>
<?php
$examens=$data->examens[$data->matiere->codeMatiere];
?>
<div class="table-container">
    <table class="table <?=$paramettre->striped?'table-striped':''?> <?=$paramettre->bordered?'table-bordered':''?>">
        <thead>
            <tr>
                <?php if($paramettre->matricule):?>
                    <th>Matricule</th>
                <?php endif?>
                <?php if($paramettre->numero):?>
                    <th>Numéro</th>
                <?php endif?>
                <?php if($paramettre->nom):?>
                    <th>Nom</th>
                <?php endif?>
                <?php if($paramettre->isme):?>
                    <th>Nom en Arabe</th>
                <?php endif?>
                <?php foreach ($examens as $examen) : ?>
                    <th><?= htmlspecialchars($examen->codeEvaluation) ?></th>
                <?php endforeach; ?>
                <?php if($paramettre->moyenne_interro):?>
                    <th><?=__("MI")?></th>
                <?php endif?>
                <?php if($paramettre->total):?>
                    <th><?=__("Tot.")?></th>
                <?php endif?> 
                <?php if($paramettre->moyenne):?>
                    <th><?=__("Moy.")?></th>
                <?php endif?> 
                <?php if($paramettre->coefficient):?>
                    <th><?=__("Coeff.")?></th>
                <?php endif?> 
                <?php if($paramettre->points):?>
                    <th><?=__("Pts")?></th>
                <?php endif?> 
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data->getClasseResultat() as $eleve) : ?>
                <tr>
                    <?php if($paramettre->matricule):?>
                        <td><?= htmlspecialchars($eleve->matricule) ?></td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td><?= htmlspecialchars($eleve->numeroInscrit) ?></td>
                    <?php endif?>
                    <?php if($paramettre->nom):?>
                        <td><?= htmlspecialchars($eleve->nom) ?>
                    <?php if($paramettre->nom_isme):?>
                        <br>
                        <?= htmlspecialchars($eleve->isme) ?>
                    <?php endif?>
                    </td>
                    <?php endif?>
                    <?php if($paramettre->isme):?>
                        <td><?= htmlspecialchars($eleve->isme) ?></td>
                    <?php endif?>
                    <?php foreach ($examens as $examen) : ?>
                        <td><?= htmlspecialchars($data->notes[$eleve->matricule][$examen->codeEvaluation]?->note??0) ?></td>
                    <?php endforeach; ?>
                    <?php if($paramettre->moyenne_interro):?>
                        <td><?= htmlspecialchars($eleve->mi??0) ?></td>
                    <?php endif?>
                    <?php if($paramettre->total):?>
                        <td><?= htmlspecialchars($eleve->total??0) ?></td>
                    <?php endif?>
                        <?php if($paramettre->moyenne):?>
                        <td><?= htmlspecialchars($eleve->moyenne??0) ?></td>
                    <?php endif?> 
                    <?php if($paramettre->coefficient):?>
                        <td><?= htmlspecialchars($eleve->coefficient??0) ?></td>
                    <?php endif?> 
                    <?php if($paramettre->points):?>
                        <td><?= htmlspecialchars($eleve->points??0) ?></td>
                    <?php endif?> 
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>
<br>
<?php if($paramettre->statistiques):?>
    <pagebreak/>  
    <?php
    $statistiques=$data->getStatistiques();
    ?>
    <h3 class="text-center my-10"><?=_("Statistiques des Moyennes") ?></h3>
    <div class="table-container">
    <?php
$rows = ['i1', 'i2', 'i3', 'i4', 'i5', 'i6', 'c1', 'c2', 'c3', 'mi', 'moyenne'];
$labels = [
    'note_egale_0',
    'note_entre_0_et_5',
    'note_entre_5_et_10',
    'note_entre_10_et_15',
    'note_entre_15_et_20',
    'note_superieure_ou_egale_10',
    'note_inferieure_10',
    'min_note',
    'max_note',
];
?>

<table class='table table-bordered'>
    <thead>
        <tr>
            <th>Indice</th>
            <th>= 0</th>
            <th>0–5</th>
            <th>5–10</th>
            <th>10–15</th>
            <th>15–20</th>
            <th>≥ 10</th>
            <th>&lt; 10</th>
            <th>Min</th>
            <th>Max</th>
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $row): ?>
            <tr>
                <td><?= htmlspecialchars(strtoupper($row)) ?></td>
                <?php foreach ($labels as $key): ?>
                    <td><?= htmlspecialchars($statistiques[$row][$key] ?? 0) ?></td>
                <?php endforeach; ?>
                <td><?= htmlspecialchars($statistiques['total']) ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<?php
$labels = [
    'note_egale_0',
    'note_entre_0_et_5',
    'note_entre_5_et_10',
    'note_entre_10_et_15',
    'note_entre_15_et_20',
    'note_superieure_ou_egale_10',
    'note_inferieure_10',
    
];
?>
<br>
<h3 class="title text-center"><?=__("En pourcentage")?>
</h3>
<br>
<table class='table table-bordered'>
    <thead>
        <tr>
            <th>Indice</th>
            <th>= 0</th>
            <th>0–5</th>
            <th>5–10</th>
            <th>10–15</th>
            <th>15–20</th>
            <th>≥ 10</th>
            <th>&lt; 10</th>
           
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $row): ?>
            <tr>
                <td><?= htmlspecialchars(strtoupper($row)) ?></td>
                <?php foreach ($labels as $key): ?>
                    <td><?= htmlspecialchars(round(($statistiques[$row][$key] ?? 0)*100/($statistiques['total']?:1),2)) ?>%</td>
                <?php endforeach; ?>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

    </div>
<?php endif?>
</body>
</html>