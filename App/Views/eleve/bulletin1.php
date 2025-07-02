
<div class="center">
      <select  id="changeEleve" class="field">
        <option value=""><?=__("Choisir un eleve")?></option>
        <?php foreach($collegues as $collegue):?>
        <option value="<?=htmlspecialchars($collegue->matricule, ENT_QUOTES, 'UTF-8')?>" <?= $collegue->matricule == $notematieres->eleve->matricule ? "selected" : "" ?>><?=htmlspecialchars($collegue->numeroInscrit."-".$collegue->nom, ENT_QUOTES, 'UTF-8')?></option>
        <?php endforeach?>
      </select>
</div>
<br>
<h2 class="title text-center my-10"><?=__("Bulletin de Notes")?></h2>
<p class="text-center"><u><?=__format("Composition du %ser trimestre",1)?></u></p>
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
                <th><?=__("Matiere")?></th>
                <th><?=__("I1")?></th>
                <th><?=__("I2")?></th>
                <th><?=__("MI")?></th>
                <th><?=__("C1")?></th>
                <th><?=__("MD")?></th>
                <th><?=__("Coefficient")?></th>
                <th><?=__("MD*Coeff")?></th>
                <th colspan="2"><?=__("Observations et discipline")?></th>
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
                    <td><?=$matiere->i1?->note?></td>
                    <td><?=$matiere->i2?->note?></td>
                    <td><?=$matiere->mi?></td>
                    <td><?=$matiere->c1?->note?></td>
                    <td><?=$matiere->moyenne?></td>
                    <td><?=$matiere->matiere->coefficientClasseMatiere ?></td>
                    <td><?=$matiere->points?></td>
                    <td colspan="2"></td>
                </tr>
            <?php } ?>
          
        </tbody>
        <tfoot>
        <tr>
                <td><strong>Total</strong></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><strong><?=$notematieres->getTotalCoeff() ?></strong></td>
                <td><strong><?=$notematieres->getPoints()?></strong></td>
                <td></td>
            </tr>
        </tfoot>
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
        <?php if($paramettre->rang){ ?>
        <tr>
            <th>Rang</th>
            <td><strong><?=$notematieres->getRang()?></strong></td>
            <th dir="rtl">الترتيب</th>
        </tr> 
        <?php } ?>
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
    <a target="_blank" href="?p=pdf/eleve/bulletin1/<?=$eleve->matricule??""?>" class="btn btn-success circle"><i class="fa fa-file-pdf"> </i></a>
</div>

<script>
     document.querySelector('#changeEleve')?.addEventListener('change', e =>{
            if(!e.target.value)return;
            let matricule = e.target.value;
            let url = `?p=eleve/bulletin1/${matricule}`;
            location.href = url;
          })
</script>