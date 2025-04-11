

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
                <td colspan="2"><a href="?p=inscrit/classe/<?= $notematieres->eleve->codeSalleClasse ?>"><center><?=$notematieres->eleve->codeClasse.$notematieres->eleve->indiceSalleClasse?></center></a></td>
                <th dir="rtl" class="right">القسم</th>
            </tr>
        </tbody>
    </table>
</div>




<h3 class='title text-center my-10'> <u>Les Notes</u></h3>
<?= $subsidebar ?>

<?php foreach($notematieres->getMatieresWithNotes() as $notematiere):?>
   
    <h4 class='title text-center my-10'><?=$notematiere->matiere->nomMatiere?>&nbsp;<span dir="rtl"><?=$notematiere->matiere->ismeMatiere?></span></h4>
    <div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Matiere</th>
                <?php foreach($notematiere->notes as $note):?>
                <th scope="col"><?=ucwords($note->nomEvaluation)?></th>
                <?php endforeach?>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td scope="row"><?=$notematiere->matiere->codeMatiere ?></td>
                <?php foreach($notematiere->notes as $note):?>
                <td>
                    <?php if($note->statutExamen==0):?>
                        <strike> <?=$note->note?></strike>
                    <?php else:?>
                        <?=$note->note?>
                    <?php endif?>
                </td>
                <?php endforeach?>
                
            </tr> 
            <tr>
                <td scope="row">
                    <div  data-matiere="<?=$notematiere->matiere->codeMatiere?>" class="my-5 addnote" title="Ajouter une note"><i class="bi bi-plus btn-success circle"></i></div>
                </td>
                <?php foreach($notematiere->notes as $note):?>
                <td>
                    <div class="left">
                        <div data-id="<?=$note->idNote?>" class="editer" title="Modifier la note"><i class="bi bi-pencil text-primary"></i></div>
                        <div data-id="<?=$note->idNote?>" class="supprimer" title="Supprimer la note"><i class="bi bi-trash text-danger"></i></div>
                    </div>
                </td>
                <?php endforeach?>
                
            </tr>
        </tbody>
    </table>
    
</div>
<?php endforeach?>

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
    document.querySelector('#close-note').addEventListener('click', e => dialog.close());
    }

    document.querySelectorAll('.addnote')?.forEach(elmt =>
    
     elmt.addEventListener('click', e =>{
      editNote({matricule: matricule, idInscrit: idInscrit, codeMatiere: elmt.dataset.matiere})}));

    document.querySelectorAll('.editer')?.forEach(elmt =>
    
     elmt.addEventListener('click', e =>{
      editNote({idNote: elmt.dataset.id})}));

    document.querySelectorAll('.supprimer')?.forEach(elmt =>
    
     elmt.addEventListener('click', e =>{
      NoteFormDialog.onDelete(elmt.dataset.id)}));
   </script>
