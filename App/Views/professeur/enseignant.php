<?=$subsidebar??'' ?>


<h2 class="title text-center">Classe et Matiere</h2>

<div class="table-container">

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Classe</th>
            <th>Code Matiere</th>
            <th>Matiere</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($enseignants as $enseignant):?>
        <tr>
            <td><?= $enseignant->pseudoSalleClasse ?></td>
            <td><?= $enseignant->codeMatiere ?></td>
            <td><?= $enseignant->nomMatiere ?></td>
            <td>
                <?php if($_admin):?>
                    <button class="btn  edit" data-id="<?=$enseignant->idEnseigner?>"><i class="fa fa-edit text-primary"></i></button>
                    <button class="btn  delete" data-id="<?=$enseignant->idEnseigner?>"><i class="fa fa-trash text-danger"></i></button>
                <?php endif?>
            </td>
        </tr>
        <?php endforeach;?>
    </tbody>
</table>
    </div>
    <div class="fixed-action">
    <?php if($_admin):?>
        <button type="button" id="add" class="btn btn-success circle"><i class="fa fa-plus"></i></button>
    <?php endif?>
</div>
<dialog class="dialog" id="dialog">
   
        <h3 class="text-center">Formulaire</h3>
    
    <div class="dialog-body">
        <form id="form" action="">
            <div class="form-group">
                <label for="matricule">Matricule</label>
                <select name="matricule" id="matricule" class="form-control">
                    <?php foreach($profs as $prof):?>
                    <option value="<?=$prof->matriculeProfesseur ?>"><?=$prof->nomProfesseur ?></option>
                    <?php endforeach?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeMatiere">Code Matiere</label>
                <select name="codeMatiere" id="codeMatiere" class="form-control">
                    <?php foreach($matieres as $matiere):?>
                    <option value="<?=$matiere->codeMatiere ?>"><?=$matiere->codeMatiere ?></option>
                    <?php endforeach?>
                </select>
            </div>
            <div class="form-group">
                    <label for="codeSalleClasse">Code Salle Classe</label>
                <select name="codeSalleClasse" id="codeSalleClasse" class="form-control">
                    <option value="">Selectionner</option>
                    <?php foreach($salles as $salle):?>
                    <option value="<?=$salle->codeSalleClasse ?>"><?=$salle->codeSalleClasse ?></option>
                    <?php endforeach?>
                </select>
            </div>
            <div class="form-action">
                <button type="reset" class="btn btn-default">Annuler</button>
                <button type="submit" class="btn btn-primary">Enregistrer</button>
            </div>

        </form>
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close">Fermer</button>
    </div>
</dialog>
<script src="./js/professeur/enseignant.js" type="module" defer></script>
