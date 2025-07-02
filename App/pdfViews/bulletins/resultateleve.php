 
    <h3 class='title text-center my-10'> <u><?=__("Relevé de Notes")?>
    </u></h3>
<div class="table-container">
        <table class="table" dir="ltr">
            <tbody>
            <tr>
                <th style="width: 16%;">Numero</th>
                <th style="width: 30%;">&nbsp;</th>
                <th class="border" style="width: 8%;"><h3 ><center><?=$notematieres->eleve->numeroInscrit?></center></h3></th>
               <th style="width: 30%;"></th>
                <th style="width: 16%;" dir="rtl" class="right" >الرقم</th>
            </tr>
             <?php if($paramettre->matricule):?>
                <tr>
                 <th>Matricule</th>
                 <th>&nbsp;</th>
                 <td><center><?=$notematieres->eleve->matricule?></center></td>
                 <th>&nbsp;</th>
                 <th dir="rtl" class="right">المتريكول</th>
             </tr>
             <?php endif?>
             <?php if($paramettre->nni):?>
                   <tr>
                       <th>NNI</th>
                       <th>&nbsp;</th>
                       <td><center><strong><?=$notematieres->eleve->nni?></strong></center></td>
                       <th>&nbsp;</th>
                       <th dir="rtl"class="right" scope="row">الرقم الوطني</th>
                   </tr>
             <?php endif?>
                <tr>
                    <th>Nom</th>
                    <td><?=$notematieres->eleve->nom?></td>
                    <th>&nbsp;</th>

                    <td><?=$notematieres->eleve->isme?></td>
                    <th dir="rtl" class="right">الاسم</th>
                </tr>
                <tr>
                    <th>Classe</th>
                    <th>&nbsp;</th>
                    <td><center><?=$notematieres->eleve->pseudoSalleClasse?></center></td>
                    <th>&nbsp;</th>
                    <th dir="rtl" class="right">القسم</th>
                </tr>
            </tbody>
        </table>
    </div>
    
    
    
   
 
    
    <?php foreach($notematieres->getNotes() as $notematiere):?>
       <?php if($codeMatiere == $notematiere->matiere->codeMatiere||!($codeMatiere??false)):?>
     
         <div class="table-container my-20">
         <table class="table table-striped">
             <thead>
                 <tr>
                     <th scope="col"><?=__("Matiere")?>
                     </th>
                   <?php if($notematiere->i1):?>
                       <th scope="col">I1</th>
                   <?php endif?>
                   <?php if($notematiere->i2):?>
                       <th scope="col">I2</th>
                   <?php endif?>
                   <?php if($notematiere->i3):?>
                       <th scope="col">I3</th>
                   <?php endif?>
                   <?php if($notematiere->i4):?>
                       <th scope="col">I4</th>
                   <?php endif?>
                   <?php if($notematiere->i5):?>
                       <th scope="col">I5</th>
                   <?php endif?>
                   <?php if($notematiere->i6):?>
                       <th scope="col">I6</th>
                   <?php endif?>
                 
                       <th scope="col">MI</th>
                   
                   <?php if($notematiere->c1):?>
                       <th scope="col">C1</th>
                   <?php endif?>
                   <?php if($notematiere->c2):?>
                       <th scope="col">C2</th>
                   <?php endif?>
                   <?php if($notematiere->c3):?>
                       <th scope="col">C3</th>
                   <?php endif?>
                   <th>Total</th>
                   <th>MD</th>
                   <th>Coeff.</th>
                   <th>MD*Coeff</th>
                 
                 
                 </tr>
             </thead>
             <tbody>
                 <tr>
                     <td scope="row"><?=$notematiere->matiere->codeMatiere ?></td>
                   <?php if($notematiere->i1):?>
                     <td class="<?=$notematiere->i1->statutExamen==0?"text-warning":""?>">
                        
                             <?=$notematiere->i1->note?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i2):?>
                     <td class="<?=$notematiere->i2->statutExamen==0?"text-warning":""?>">
                         
                             <?=$notematiere->i2->note?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i3):?>
                     <td class="<?=$notematiere->i3->statutExamen==0?"text-warning":""?>">
                         
                             <?=$notematiere->i3->note?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i4):?>
                     <td class="<?=$notematiere->i4->statutExamen==0?"text-warning":""?>">
                         
                             <?=$notematiere->i4->note?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i5):?>
                     <td class="<?=$notematiere->i5->statutExamen==0?"text-warning":""?>">
                         
                             <?=$notematiere->i5->note?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i6):?>
                     <td class="<?=$notematiere->i6->statutExamen==0?"text-warning":""?>">
                             <?=$notematiere->i6->note?>
                     </td>
                     <?php endif?>
                     <td> <span> <?=$notematiere->mi?></span></td>
                     <?php if($notematiere->c1):?>
                     <td class="<?=$notematiere->c1->statutExamen==0?"text-warning":""?>">
                             <?=$notematiere->c1->note?>
                     </td>
                     <?php endif?>
                     <?php if($notematiere->c2):?>
                     <td class="<?=$notematiere->c2->statutExamen==0?"text-warning":""?>">
                             <?=$notematiere->c2->note?>
                     </td>
                     <?php endif?>
                     <?php if($notematiere->c3):?>
                     <td class="<?=$notematiere->c3->statutExamen==0?"text-warning":""?>">
                             <?=$notematiere->c3->note?>
                     </td>
                     <?php endif?>
                     <td> <span> <?=$notematiere->total?> </span> </td>
                     <td> <span> <?=$notematiere->moyenne?> </span> </td>
                     <td> <span> <?=$notematiere->matiere->coefficientClasseMatiere?> </span> </td>
                     <td> <span> <?=$notematiere->points?> </span> </td>
 
                 </tr> 
               
             </tbody>
         </table>
         
 </div>
       <?php endif?>
    <?php endforeach?>
    
    <p> <?=__("NB : Les moyennes sont calculées par la méthode du trimestre")?> <?=__format(" : %s",$trimestre)?></p>
<br>

<table class="table">
    <tbody>
        <tr>
            <td class="text-center"><h4><?=__format("Date : %s",date("d-m-Y")) ?></h4></td>
            <td>
<div class='text-center' ><h4><u><?=__("Signature")?></u></h4></div>

            </td>
        </tr>
    </tbody>
</table>