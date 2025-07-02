
<?= $subsidebar ?>


    
    
    <div class="table-container">
        <table class="table" dir="ltr">
            <tbody>
                <tr>
                    <th>Numero</th>
                    <td colspan="2"><center><strong><?=htmlspecialchars($notematieres->eleve->numeroInscrit, ENT_QUOTES, 'UTF-8')?></strong></center></td>
                    <th dir="rtl"class="right" scope="row">الرقم</th>
                </tr>
                <tr>
                    <th>Matricule</th>
                    <td colspan="2"><center><strong><?=htmlspecialchars($notematieres->eleve->matricule, ENT_QUOTES, 'UTF-8')?></strong></center></td>
                    <th dir="rtl"class="right">المتريكول</th>
                </tr>
                <tr>
                    <th>NNI</th>
                    <td colspan="2"><center><strong><?=htmlspecialchars($notematieres->eleve->nni, ENT_QUOTES, 'UTF-8')?></strong></center></td>
                    <th dir="rtl"class="right" scope="row">الرقم الوطني</th>
                </tr>
                <tr>
                    <th>Nom</th>
                    <td><?=htmlspecialchars($notematieres->eleve->nom, ENT_QUOTES, 'UTF-8')?></td>
                    <td><?=htmlspecialchars($notematieres->eleve->isme, ENT_QUOTES, 'UTF-8')?></td>
                    <th dir="rtl" class="right">الاسم</th>
                </tr>
                <tr>
                    <th>Classe</th>
                    <td colspan="2"><a href="?p=salleclasse/profil/<?= htmlspecialchars($notematieres->eleve->codeSalleClasse, ENT_QUOTES, 'UTF-8') ?>"><center><?=htmlspecialchars($notematieres->eleve->pseudoSalleClasse, ENT_QUOTES, 'UTF-8')?></center></a></td>
                    <th dir="rtl" class="right">القسم</th>
                </tr>
            </tbody>
        </table>
    </div>
    
    
    
    
    <h3 class='title text-center my-10'> <u><?=htmlspecialchars(__("Relevé ds Notes"), ENT_QUOTES, 'UTF-8')?>
    </u></h3>
 
    <div class="space-between text-center">
      
      
        <p>
         <?=htmlspecialchars(__("NB : Les moyennes sont calculées par la méthode du trimestre"), ENT_QUOTES, 'UTF-8')?> <?=htmlspecialchars(__format(" : %s",$trimestre), ENT_QUOTES, 'UTF-8')?>
        </p>
         <p><?=htmlspecialchars(__('Veuillez changer le trimestre pour s\'y référer le calcul'), ENT_QUOTES, 'UTF-8') ?></p>

    <select class="field" name="trimestre" id="trimestre">
        <option value="1" <?= $trimestre == 1 ? "selected" : "" ?>>1er Trimestre</option>
        <option value="2" <?= $trimestre == 2 ? "selected" : "" ?>>2eme Trimestre</option>
        <option value="3" <?= $trimestre == 3 ? "selected" : "" ?>>3eme Trimestre</option>
    </select>
    <select class="field" name="matiere" id="matiereFilter">
        <option value="">Toutes les matieres</option>
        <?php foreach($matieres as $matiere):?>
        <option value="<?=htmlspecialchars($matiere->codeMatiere, ENT_QUOTES, 'UTF-8')?>" <?= $codeMatiere == $matiere->codeMatiere ? "selected" : "" ?>><?=htmlspecialchars($matiere->codeMatiere, ENT_QUOTES, 'UTF-8')?></option>
        <?php endforeach?>
    </select>
    
</div>
    <?php foreach($notematieres->getNotes() as $notematiere):?>
       <?php if($notematiere->matiere->codeMatiere == $codeMatiere || !$codeMatiere ):?>
        
         <h4 class='title text-center my-10'dir="ltr"><?=htmlspecialchars($notematiere->matiere->nomMatiere, ENT_QUOTES, 'UTF-8')?>&nbsp;<span dir="rtl"><?=htmlspecialchars($notematiere->matiere->ismeMatiere, ENT_QUOTES, 'UTF-8')?></span></h4>
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
                     <td scope="row"><?=htmlspecialchars($notematiere->matiere->codeMatiere, ENT_QUOTES, 'UTF-8') ?></td>
                   <?php if($notematiere->i1):?>
                     <td class="<?=$notematiere->i1->statutExamen==0?"text-warning":""?>">
                        
                             <?=htmlspecialchars($notematiere->i1->note, ENT_QUOTES, 'UTF-8')?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i2):?>
                     <td class="<?=$notematiere->i2->statutExamen==0?"text-warning":""?>">
                         
                             <?=htmlspecialchars($notematiere->i2->note, ENT_QUOTES, 'UTF-8')?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i3):?>
                     <td class="<?=$notematiere->i3->statutExamen==0?"text-warning":""?>">
                         
                             <?=htmlspecialchars($notematiere->i3->note, ENT_QUOTES, 'UTF-8')?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i4):?>
                     <td class="<?=$notematiere->i4->statutExamen==0?"text-warning":""?>">
                         
                             <?=htmlspecialchars($notematiere->i4->note, ENT_QUOTES, 'UTF-8')?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i5):?>
                     <td class="<?=$notematiere->i5->statutExamen==0?"text-warning":""?>">
                         
                             <?=htmlspecialchars($notematiere->i5->note, ENT_QUOTES, 'UTF-8')?>
                         
                     </td>
                     <?php endif?>
                   <?php if($notematiere->i6):?>
                     <td class="<?=$notematiere->i6->statutExamen==0?"text-warning":""?>">
                             <?=htmlspecialchars($notematiere->i6->note, ENT_QUOTES, 'UTF-8')?>
                     </td>
                     <?php endif?>
                     <td> <span> <?=htmlspecialchars($notematiere->mi, ENT_QUOTES, 'UTF-8')?> </span> <br> <span> <?=htmlspecialchars($notematiere->miX3, ENT_QUOTES, 'UTF-8')?> </span> </td>
                     <?php if($notematiere->c1):?>
                     <td class="<?=$notematiere->c1->statutExamen==0?"text-warning":""?>">
                             <?=htmlspecialchars($notematiere->c1->note, ENT_QUOTES, 'UTF-8')?>
                     </td>
                     <?php endif?>
                     <?php if($notematiere->c2):?>
                     <td class="<?=$notematiere->c2->statutExamen==0?"text-warning":""?>">
                             <?=htmlspecialchars($notematiere->c2->note, ENT_QUOTES, 'UTF-8')?>
                     </td>
                     <?php endif?>
                     <?php if($notematiere->c3):?>
                     <td class="<?=$notematiere->c3->statutExamen==0?"text-warning":""?>">
                             <?=htmlspecialchars($notematiere->c3->note, ENT_QUOTES, 'UTF-8')?>
                     </td>
                     <?php endif?>
                     <td> <span> <?=htmlspecialchars($notematiere->total, ENT_QUOTES, 'UTF-8')?> </span> </td>
                     <td> <span> <?=htmlspecialchars($notematiere->moyenne, ENT_QUOTES, 'UTF-8')?> </span> </td>
                     <td> <span> <?=htmlspecialchars($notematiere->matiere->coefficientClasseMatiere, ENT_QUOTES, 'UTF-8')?> </span> </td>
                     <td> <span> <?=htmlspecialchars($notematiere->points, ENT_QUOTES, 'UTF-8')?> </span> </td>
 
                 </tr> 
                <?php if($_admin):?>
                  <tr>
                      <td scope="row">
                          <div  data-matiere="<?=htmlspecialchars($notematiere->matiere->codeMatiere, ENT_QUOTES, 'UTF-8')?>" class="my-5 addnote" title="Ajouter une note"><i class="fa fa-plus btn-success circle"></i></div>
                      </td>
                      
                     <?php if($notematiere->i1):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->i1->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->i1->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                              </div>
                          </td>
                     <?php endif?>
                    
                      <?php if($notematiere->i2):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->i2->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->i2->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                              </div>
                          </td>
                     <?php endif?>
                    
                      <?php if($notematiere->i3):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->i3->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->i3->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                              </div>
                          </td>
                     <?php endif?>
                    
                      <?php if($notematiere->i4):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->i4->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->i4->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                              </div>
                          </td>
                     <?php endif?>
                    
                      <?php if($notematiere->i5):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->i5->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->i5->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                              </div>
                          </td>
                     <?php endif?>
                    
                      <?php if($notematiere->i6):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->i6->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->i6->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                              </div>
                          </td>
                     <?php endif?>
                    <td></td>
                      <?php if($notematiere->c1):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->c1->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->c1->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                              </div>
                          </td>
                     <?php endif?>
                    
                      <?php if($notematiere->c2):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->c2->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->c2->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
                              </div>
                          </td>
                     <?php endif?> <?php if($notematiere->c3):?>
                          <td>
                              <div class="left">
                                  <div data-id="<?=htmlspecialchars($notematiere->c3->idNote, ENT_QUOTES, 'UTF-8')?>" class="editer" title="Modifier la note"><i class="fa fa-edit text-primary"></i></div>
                                  <div data-id="<?=htmlspecialchars($notematiere->c3->idNote, ENT_QUOTES, 'UTF-8')?>" class="supprimer" title="Supprimer la note"><i class="fa fa-trash text-danger"></i></div>
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
       <?php endif?>
    <?php endforeach?>
    <div class="fixed-action">
        <a target="_blank" href="?p=pdf/eleve/resultat/<?= htmlspecialchars($eleve->matricule ?? null, ENT_QUOTES, 'UTF-8') ?>&trimestre=<?= htmlspecialchars($trimestre ?? 3, ENT_QUOTES, 'UTF-8') ?>&matiere=<?= htmlspecialchars($codeMatiere ?? null, ENT_QUOTES, 'UTF-8') ?>" class="btn btn-success circle"><i class="fa fa-file-pdf"></i></a>
    </div>
    
       <input type="hidden" id="id" value="<?= htmlspecialchars($inscription->idInscrit ?? null, ENT_QUOTES, 'UTF-8') ?>">
    <input type="hidden" id="matricule" value="<?= htmlspecialchars($eleve->matricule ?? null, ENT_QUOTES, 'UTF-8') ?>">
    
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
            let matiere = document.querySelector('#matiereFilter').value;
            location.href = `?p=eleve/resultat/${matricule}&trimestre=${trimestre}&matiere=${matiere}`;
          })

          document.querySelector('#matiereFilter')?.addEventListener('change', e =>{
            let matiere = e.target.value;
            let trimestre = document.querySelector('#trimestre').value;
            location.href = `?p=eleve/resultat/${matricule}&matiere=${matiere}&trimestre=${trimestre}`;
          })
       </script>
    
