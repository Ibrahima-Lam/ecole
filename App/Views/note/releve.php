
<div class="space-around">
<?php
    $trimestre=isset($_REQUEST['trimestre'])?(int)$_REQUEST['trimestre']:3;
    ?>
<?php if($_admin):?>
     <a  class="btn btn-primary link" title="<?=__("importer les notes")?>" href="?p=note/matiere_file_form/<?= htmlspecialchars($codeSalleClasse) ?>/<?= htmlspecialchars($codeMatiere) ?>"><i class="fa fa-file"></i>&nbsp;<span><?=__("Importer les notes")?></span></a>
     <a class="btn btn-success link" title="<?=__("Ajouter plusieurs notes")?>" href="?p=note/matiere_forms/<?= htmlspecialchars($codeSalleClasse) ?>/<?= htmlspecialchars($codeMatiere) ?>"><i class="fa fa-layer-group"></i>&nbsp;<span><?=__("Ajouter plusieurs notes")?></span></a>
 
     <?php endif?>
    
    <select class="field " id="changeSalleClasse">
        <?php foreach ($sallesClasse as $sc): ?>
            <option value="<?= htmlspecialchars($sc->codeSalleClasse) ?>" <?= $sc->codeSalleClasse == $codeSalleClasse ? 'selected' : '' ?>><?= htmlspecialchars($sc->pseudoSalleClasse) ?></option>
        <?php endforeach ?>
    </select> 
    <select class="field " id="changeMatiere">
        <?php foreach ($matieres as $matiere): ?>
            <option value="<?= htmlspecialchars($matiere->codeMatiere) ?>" <?= $matiere->codeMatiere == $codeMatiere ? 'selected' : '' ?>><?= htmlspecialchars($matiere->codeMatiere) ?></option>
        <?php endforeach ?>
    </select>
   
    <select class="field width-50px" id="changeTrimestre">
        <option value="1" <?= $trimestre == 1 ? 'selected' : '' ?>><?=__("Trimestre 1")?></option>
        <option value="2" <?= $trimestre == 2 ? 'selected' : '' ?>><?=__("Trimestre 2")?></option>
        <option value="3" <?= $trimestre == 3 ? 'selected' : '' ?>><?=__("Trimestre 3")?></option>
    </select>
    <div class="center">
        <input type="checkbox" id="merite" name="merite" value="1" <?php if(!empty($_REQUEST['merite'])) echo 'checked'; ?>>
        <label for="merite"><?=__("Tri par merite")?></label>
    </div>

    </div>
<?php
$title = __("Relevé de notes");

?>
<input type="hidden"id="codeSalleClasse" name="codeSalleClasse" value="<?= htmlspecialchars($codeSalleClasse) ?>">
<input type="hidden"id="codeMatiere" name="codeMatiere" value="<?= htmlspecialchars($codeMatiere) ?>">
<br>
<p class="center"><?=__format("NB : Les calculs font référence au %se trimestre. Veillez changer le trimestre pour un choix différent!",$trimestre)?></p>

<h2 class="text-center my-10"><?=__("Relevé de notes")?></h2>
<div class="space-around my-10">
    <p>
        <strong><?=__("Classe")?> :</strong> <a class='link-default' href="?p=salleClasse/profil/<?= htmlspecialchars($codeSalleClasse) ?>"><?= htmlspecialchars($salleClasse->pseudoSalleClasse) ?></a>
    </p>
    <p>
        <strong><?=__("Matière")?> :</strong> <?= htmlspecialchars($data->matiere->nomMatiere) ?>
    </p>
</div>
<?php
$examens=$data->examens[$data->matiere->codeMatiere];
?>
<div class="table-container">
    <table class="table table-striped" id="tableReleve">
        <thead>
            <tr class="tr-copy">
                <?php if($paramettre->matricule):?>
                    <th class="make-copy"><?=__("Matricule")?></th>
                <?php endif?>
                <?php if($paramettre->numero):?>
                    <th class="make-copy"><?=__("Numéro")?></th>
                <?php endif?>
                <?php if($paramettre->nom):?>
                    <th ><span class="make-copy"><?=__("Nom")?></span><span class="make-copy">&nbsp;</span></th>
                <?php endif?>
                <?php if($paramettre->isme):?>
                    <th class="make-copy"><?=__("Nom en Arabe")?></th>
                <?php endif?>
                <?php foreach ($examens as $examen) : ?>
                    <th class="make-copy"><a href="?p=examen/details/<?= htmlspecialchars($examen->codeExamen) ?>"><?= htmlspecialchars($examen->codeEvaluation) ?></a></th>
                <?php endforeach; ?>
                <?php if($paramettre->moyenne_interro):?>
                    <th class="make-copy"><?=__("MI")?></th>
                <?php endif?>
                <?php if($paramettre->total):?>
                    <th class="make-copy"><?=__("Tot.")?></th>
                <?php endif?> 
                <?php if($paramettre->moyenne):?>
                    <th class="make-copy"><?=__("Moy.")?></th>
                <?php endif?> 
                <?php if($paramettre->coefficient):?>
                    <th class="make-copy"><?=__("Coeff.")?></th>
                <?php endif?>
                 <?php if($paramettre->points):?>
                    <th class="make-copy"><?=__("Points")?></th>
                <?php endif?> 
                  <?php if($paramettre->rang):?>
                    <th class="make-copy"><?=__("Rang")?></th>
                <?php endif?> 
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data->getClasseResultat() as $eleve) : ?>
                <tr>
                    <?php if($paramettre->matricule):?>
                        <td class="make-copy"><?= htmlspecialchars($eleve->matricule) ?></td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td class="make-copy"><?= htmlspecialchars($eleve->numeroInscrit) ?></td>
                    <?php endif?>
                    <?php if($paramettre->nom):?>
                        <td>
                            <a href="?p=eleve/profil/<?=htmlspecialchars($eleve->matricule)?>"><span class='make-copy'><?= htmlspecialchars($eleve->nom) ?></span></a>
                        
                    <?php if($paramettre->nom_isme):?>
                        <br>
                        <span class='make-copy'><?= htmlspecialchars($eleve->isme) ?></span>
                    <?php endif?>
                    </td>
                    <?php endif?>
                    <?php if($paramettre->isme):?>
                        <td class="make-copy"><?= htmlspecialchars($eleve->isme) ?></td>
                    <?php endif?>
                    <?php foreach ($examens as $examen) : ?>
                        <td title="<?= htmlspecialchars($examen->codeEvaluation) ?>" data-codeExamen="<?= htmlspecialchars($examen?->codeExamen) ?>" data-id="<?=htmlspecialchars($data->notes[$eleve->matricule][$examen->codeEvaluation]?->idNote??"") ?>" class="clickable make-copy td-note <?=!$examen->statutExamen?"text-warning":""?>"><?= htmlspecialchars($data->notes[$eleve->matricule][$examen->codeEvaluation]?->note??0) ?></td>
                    <?php endforeach; ?>
                    <?php if($paramettre?->moyenne_interro):?>
                        <td title="MI" class="make-copy"><?= htmlspecialchars($eleve?->mi??0) ?></td>
                    <?php endif?>
                    <?php if($paramettre?->total):?>
                        <td title="Total" class="make-copy"><?= htmlspecialchars($eleve?->total??0) ?></td>
                    <?php endif?>
                    <?php if($paramettre?->moyenne):?>
                        <td title="Moyenne" class="make-copy"><?= htmlspecialchars($eleve?->moyenne??0) ?></td>
                    <?php endif?> 
                    <?php if($paramettre?->coefficient):?>
                        <td title="Coefficient" class="make-copy"><?= htmlspecialchars($eleve?->coefficient??0) ?></td>
                    <?php endif?> 
                    <?php if($paramettre?->points):?>
                        <td title="Points" class="make-copy"><?= htmlspecialchars($eleve?->points??0) ?></td>
                    <?php endif?>
                    <?php if($paramettre?->rang):?>
                        <td title="Rang" class="make-copy"><?= htmlspecialchars($eleve?->rang??0) ?></td>
                    <?php endif?> 
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>
<br>
<?php if($paramettre->statistiques):?>
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
    'note_inferieure_9',
    'note_superieure_ou_egale_9',
    'note_inferieure_10',
    'note_superieure_ou_egale_10',
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
            <th>&lt; 9</th>
            <th>≥ 9</th>
            <th>&lt; 10</th>
            <th>≥ 10</th>
            <th>Min</th>
            <th>Max</th>
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $row): ?>
            <tr>
                <td class="make-copy"><?= htmlspecialchars(strtoupper($row)) ?></td>
                <?php foreach ($labels as $key): ?>
                    <td class="make-copy"><?= htmlspecialchars($statistiques[$row][$key] ?? 0) ?></td>
                <?php endforeach; ?>
                <td class="make-copy"><?= htmlspecialchars($statistiques['total']) ?></td>
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
    'note_inferieure_9',
    'note_superieure_ou_egale_9',
    'note_inferieure_10',
    'note_superieure_ou_egale_10',
];
?>
<br>
<br>
<table class='table table-bordered'>
    <thead>
        <tr>
            <th>Indice</th>
            <th class="make-copy">= 0</th>
            <th class="make-copy">0–5</th>
            <th class="make-copy">5–10</th>
            <th class="make-copy">10–15</th>
            <th class="make-copy">15–20</th>
            <th class="make-copy">&lt; 9</th>
            <th class="make-copy">≥ 9</th>
            <th class="make-copy">&lt; 10</th>
            <th class="make-copy">≥ 10</th>
           
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $row): ?>
            <tr>
                <td class="make-copy"><?= htmlspecialchars(strtoupper($row)) ?></td>
                <?php foreach ($labels as $key): ?>
                    <td class="make-copy"><?= htmlspecialchars(round(($statistiques[$row][$key] ?? 0)*100/($statistiques['total']?:1),2)) ?>%</td>
                <?php endforeach; ?>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

    </div>
<?php endif?>

<div class="fixed-action">
    <?php
    $href="?p=pdf/note/releve/".$salleClasse->codeSalleClasse."/".$data->matiere->codeMatiere;
    if(!empty($_REQUEST['trimestre'])){
        $href .= '&trimestre=' . $_REQUEST['trimestre'];
    }
    if(!empty($_REQUEST['merite'])){
        $href .= '&merite=true';
    }
    ?>
    <a class="btn btn-success circle" target="_blank" title="<?=__("Imprimer")?>" href="<?= htmlspecialchars($href) ?>">
        <i class="fa fa-file-pdf"></i>
    </a>
    <button id="excel" class="btn btn-success circle" title="<?=__("Excel")?>" >
        <i class="bi-file-earmark-excel"></i>
    </button>
    <button id="copy" class="btn btn-primary circle" title="<?=__("Copier")?>" >
        <i class="bi-clipboard"></i>
    </button>
    <button class="btn btn-primary circle" title="<?=__("Paramétre")?>" id="parametre">
        <i class="bi-gear"></i>
    </button>
</div>


<dialog class="dialog dialog-big" id="parametreDialog">
    <div class="dialog-content">
        <div class="dialog-header">
            <h3 class="title text-center"><?=__("Paraméttre")?></h3>
        </div>
        <div class="dialog-body">
           
<form class="form" id="paramettreForm">
<ul class="list-group grid-2">
    <li class="list-group-item">
        <label for="matricule"><?=__("Matricule")?></label>
        <input type="checkbox" name="matricule" id="matricule" value="true" <?=$paramettre->matricule?'checked' : ''?>>
    </li> 
    <li class="list-group-item">
        <label for="numero"><?=__("Numero")?></label>
        <input type="checkbox" name="numero" id="numero" value="true" <?=$paramettre->numero?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nom"><?=__("Nom")?></label>
        <input type="checkbox" name="nom" id="nom" value="true" <?=$paramettre->nom?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="isme"><?=__("Isme")?></label>
        <input type="checkbox" name="isme" id="isme" value="true" <?=$paramettre->isme?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nom_isme"><?=__("Nom et Isme")?></label>
        <input type="checkbox" name="nom_isme" id="nom_isme" value="true" <?=$paramettre->nom_isme?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nni"><?=__("NNI")?></label>
        <input type="checkbox" name="nni" id="nni" value="true" <?=$paramettre->nni?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="merite"><?=__("Merite")?></label>
        <input type="checkbox" name="merite" id="merite" value="true" <?=$paramettre->merite?'checked' : ''?>>
    </li> 
    <li class="list-group-item">
        <label for="statistiques"><?=__("Statistiques")?></label>
        <input type="checkbox" name="statistiques" id="statistiques" value="true" <?=$paramettre->statistiques?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="striped"><?=__("Striped")?></label>
        <input type="checkbox" name="striped" id="striped" value="true" <?=$paramettre->striped?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="bordered"><?=__("Bordered")?></label>
        <input type="checkbox" name="bordered" id="bordered" value="true" <?=$paramettre->bordered?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="moyenne"><?=__("Moyenne")?></label>
        <input type="checkbox" name="moyenne" id="moyenne" value="true" <?=$paramettre->moyenne?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="moyenne_interro"><?=__("Moyenne interro")?></label>
        <input type="checkbox" name="moyenne_interro" id="moyenne_interro" value="true" <?=$paramettre->moyenne_interro?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="coefficient"><?=__("Coefficient")?></label>
        <input type="checkbox" name="coefficient" id="coefficient" value="true" <?=$paramettre->coefficient?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="points"><?=__("Points")?></label>
        <input type="checkbox" name="points" id="points" value="true" <?=$paramettre->points?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="total"><?=__("Total")?></label>
        <input type="checkbox" name="total" id="total" value="true" <?=$paramettre->total?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="sort"><?=__("Sort")?></label>
        <select name="sort" id="sort">
            <option value="merite" <?=$paramettre->sort=='merite'?'selected' : ''?>><?=__("Merite")?></option>
            <option value="numero" <?=$paramettre->sort=='numero'?'selected' : ''?>><?=__("Numero")?></option>
            <option value="nom" <?=$paramettre->sort=='nom'?'selected' : ''?>><?=__("Nom")?></option>
            <option value="matricule" <?=$paramettre->sort=='matricule'?'selected' : ''?>><?=__("Matricule")?></option>
        </select>
    </li>
    <li class="list-group-item">
        <label for="order"><?=__("Order")?></label>
        <select name="order" id="order">
            <option value="ASC" <?=$paramettre->order=='ASC'?'selected' : ''?>><?=__("ASC")?></option>
            <option value="DESC" <?=$paramettre->order=='DESC'?'selected' : ''?>><?=__("DESC")?></option>
        </select>
    </li>
    <li>
        <button type="submit" class="btn btn-primary"><?=__("Enregistrer")?></button>
    </li>
</ul>
</form>
        </div>
        <div class="dialog-footer">
            <div class="right my-10 mx-10">
                <button class="btn btn-danger" id="closeParametreDialog"><?=__("Fermer")?></button>
            </div>
        </div>
    </div>
</dialog>

<script type="module" defer>
    import {fetchJson} from './js/src/fetch.js'
    document.getElementById('excel')?.addEventListener('click', function() {
        window.location.href = "?p=note/releveExcel/<?= htmlspecialchars($salleClasse->codeSalleClasse) ?>/<?= htmlspecialchars($data->matiere->codeMatiere) ?>";
    });
    document.getElementById('copy')?.addEventListener('click', function() {
        const table = document.getElementById('tableReleve');
       let trs = table.querySelectorAll('tr');
       let copy = '';
       trs.forEach(tr => {
           let tds = tr.querySelectorAll('.make-copy');
           tds.forEach((td,index) => {
               copy += td.innerText ;
               if(index < tds.length - 1){
                   copy += '\t';
               }
           });
           copy += '\n';
       });
       navigator.clipboard.writeText(copy);
       this.classList.add('copied');
       setTimeout(() => {
           this.classList.remove('copied');
           alert("Copié");
       }, 2000);
    });

    document.getElementById('parametre')?.addEventListener('click', function() {
        document.getElementById('parametreDialog').showModal();
    });

    document.getElementById('closeParametreDialog')?.addEventListener('click', function() {
        document.getElementById('parametreDialog').close();
    });
    const form = document.getElementById('paramettreForm');
    const dialogParametre = document.getElementById('parametreDialog');
    form?.addEventListener('submit',async function(e){
    e.preventDefault();
    const data = new FormData(form);
    const params = Object.fromEntries(data.entries());
    const dataString = (new URLSearchParams(params)).toString();
     await fetchJson('?p=api/paramettre/releve/true&' + dataString);
    dialogParametre.close();
    window.location.reload();
});
const changeTrimestre = document.querySelector('#changeTrimestre');
const changeSalleClasse = document.querySelector('#changeSalleClasse');
const changeMatiere = document.querySelector('#changeMatiere');
const merite = document.querySelector('#merite');

changeSalleClasse?.addEventListener('change', function (e) {
    const codeSalleClasse = e.target.value;
    const codeMatiere = changeMatiere.value;
    const trimestre = changeTrimestre.value;
       
        let url = '?p=note/releve/' + codeSalleClasse + '/' + codeMatiere 
        if(trimestre){
            url += '&trimestre=' + trimestre;
        }
        if(merite.checked){
            url += '&merite=true';
        }
        window.location.href = url
    })
changeMatiere?.addEventListener('change', function (e) {
        let url = '?p=note/releve/' + changeSalleClasse.value + '/' + e.target.value
        const trimestre = changeTrimestre.value;
        if(trimestre){
            url += '&trimestre=' + trimestre;
        }
        if(merite.checked){
            url += '&merite=true';
        }
        window.location.href = url
    })
changeTrimestre?.addEventListener('change', function (e) {
        let url = '?p=note/releve/' + changeSalleClasse.value + '/' + changeMatiere.value;
        const trimestre = changeTrimestre.value;
        if(trimestre){
            url += '&trimestre=' + trimestre;
        }
        if(merite.checked){
            url += '&merite=true';
        }
        window.location.href = url
    })

    merite?.addEventListener('change', function() {
        let url = '?p=note/releve/' + document.querySelector('#codeSalleClasse').value + '/' + document.querySelector('#codeMatiere').value ;
        if(this.checked){
            url += '&merite=true';
        }
        window.location.href = url;
    });
</script>