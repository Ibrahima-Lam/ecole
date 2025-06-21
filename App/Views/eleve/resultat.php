
<?= $subsidebar ?>


    
    
    <div class="table-container">
        <table class="table" dir="ltr">
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
                    <td colspan="2"><a href="?p=inscrit/classe/<?= $notematieres->eleve->codeSalleClasse ?>"><center><?=$notematieres->eleve->codeClasse.$notematieres->eleve->indiceSalleClasse?></center></a></td>
                    <th dir="rtl" class="right">القسم</th>
                </tr>
            </tbody>
        </table>
    </div>
    
    
    
    
    <h3 class='title text-center my-10'> <u><?=__("Relevé des Notes")?>
    </u></h3>
 
    <div class="space-between text-center">
      
      
        <p>
         <?=__("NB :les moyennes sont calculées sur le trimestre")?> <?=__format(" : %s",$trimestre)?>
        </p>
         <p><?=__('Veuillez changer le trimestre pour s\'y référer le calcul') ?></p>

    <select class="field" name="trimestre" id="trimestre">
        <option value="1" <?= $trimestre == 1 ? "selected" : "" ?>>1er Trimestre</option>
        <option value="2" <?= $trimestre == 2 ? "selected" : "" ?>>2eme Trimestre</option>
        <option value="3" <?= $trimestre == 3 ? "selected" : "" ?>>3eme Trimestre</option>
    </select>
    
</div>
    <?php foreach($notematieres->getNotes() as $notematiere):?>
       
        <h4 class='title text-center my-10'dir="ltr"><?=$notematiere->matiere->nomMatiere?>&nbsp;<span dir="rtl"><?=$notematiere->matiere->ismeMatiere?></span></h4>
        <div class="table-container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Matiere</th>
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
                    <td> <span> <?=$notematiere->mi?> </span> <br> <span> <?=$notematiere->miX3?> </span> </td>
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
               <?php if($_admin):?>
                 <tr>
                     <td scope="row">
                         <div  data-matiere="<?=$notematiere->matiere->codeMatiere?>" class="my-5 addnote" title="Ajouter une note"><i class="fa fa-plus btn-success circle"></i></div>
                     </td>
                     
                    <?php if($notematiere->i1):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->i1->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->i1->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?>
                   
                     <?php if($notematiere->i2):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->i2->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->i2->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?>
                   
                     <?php if($notematiere->i3):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->i3->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->i3->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?>
                   
                     <?php if($notematiere->i4):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->i4->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->i4->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?>
                   
                     <?php if($notematiere->i5):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->i5->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->i5->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?>
                   
                     <?php if($notematiere->i6):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->i6->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->i6->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?>
                   <td></td>
                     <?php if($notematiere->c1):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->c1->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->c1->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?>
                   
                     <?php if($notematiere->c2):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->c2->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->c2->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?> <?php if($notematiere->c3):?>
                         <td>
                             <div class="left">
                                 <div data-id="<?=$notematiere->c3->idNote?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                 <div data-id="<?=$notematiere->c3->idNote?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                             </div>
                         </td>
                    <?php endif?>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                   
                     
                 </tr>
               <?php endif?>
            </tbody>
        </table>
        
</div>
    <?php endforeach?>
    <div class="fixed-action">
        <a target="_blank" href="?p=pdf/eleve/resultat/<?= $eleve->matricule ?? null ?>&trimestre=<?= $trimestre ?? 3 ?>" class="btn btn-success circle"><i class="fa fa-file-pdf"></i></a>
    </div>
    
       <input type="hidden" id="id" value="<?= $inscription->idInscrit ?? null ?>">
    <input type="hidden" id="matricule" value="<?= $eleve->matricule ?? null ?>">
    
       <dialog id="dialog-note" class="dialog">
        <div class="dialod-head">
            <h3 class="text-center title">Formulaire</h3>
        </div>
        <div class="dialog-body">
            
        </div>
        <div class="dialog-foot">
            <button class="btn btn-danger" id="close-note">Fermer</button>
        </div>
    </dialog>
       <script type="module" defer>
        import {NoteFormDialog} from "./js/note/note_module.js";
    
    let idInscrit = document.querySelector('#id').value;
    let matricule = document.querySelector('#matricule').value;
    function editNote(params) {
        let dialog = new NoteFormDialog(document.querySelector("#dialog-note"), params);
        dialog.show();
        document.querySelector('#close-note')?.addEventListener('click', e => dialog.close());
        }
    
        document.querySelectorAll('.addnote')?.forEach(elmt =>
        
         elmt?.addEventListener('click', e =>{
          editNote({matricule: matricule, idInscrit: idInscrit, codeMatiere: elmt.dataset.matiere})}));
    
        document.querySelectorAll('.editer')?.forEach(elmt =>
        
         elmt?.addEventListener('click', e =>{
          editNote({idNote: elmt.dataset.id})}));
    
        document.querySelectorAll('.supprimer')?.forEach(elmt =>
        
         elmt?.addEventListener('click', e =>{
          NoteFormDialog.onDelete(elmt.dataset.id)}));

          document.querySelector('#trimestre')?.addEventListener('change', e =>{
            let trimestre = e.target.value;
            location.href = `?p=eleve/resultat/${matricule}&trimestre=${trimestre}`;
          })
       </script>
    
