
<?=$subsidebar??'' ?>

<h2 class="title text-center my-10">Matieres</h2>

<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Matricule</th>
                <th>Code Matiere</th>
                <th>Matiere</th>
                <th>action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($profmatieres as $profmatiere):?>
            <tr>
                <td><?=$profmatiere->matriculeProfesseur ?></td>
                <td><?=$profmatiere->codeMatiere ?></td>
                <td><?=$profmatiere->nomMatiere ?></td>
                <td>
                    <?php if($_admin):?>
                    <div class="center">
                        <button type="button" data-matricule="<?=$profmatiere->matriculeProfesseur ?>" data-code="<?=$profmatiere->codeMatiere ?>" class="btn edit"><i class="fa fa-pencil text-primary"></i></button>
                        <button type="button" data-matricule="<?=$profmatiere->matriculeProfesseur ?>" data-code="<?=$profmatiere->codeMatiere ?>" class="btn delete"><i class="fa fa-trash text-danger"></i></button>
                    </div>
                    <?php endif?>
                </td>
            </tr>
            <?php endforeach?>
        </tbody>
    </table>
</div>
<div class="fixed-action">
    <?php if($_admin):?>
        <button type="button" id="add" class="btn btn-success circle"><i class="fa fa-plus"></i></button>
    <?php endif?>
</div>
<dialog class="dialog" id="dialog">
    <div class="dialog-head" >
        <h3 class="text-center title">Formulaire</h3>
    </div>
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
                    <option value="">Selectionner</option>
                    <?php foreach($matieres as $matiere):?>
                    <option value="<?=$matiere->codeMatiere ?>"><?=$matiere->codeMatiere ?></option>
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

<script src="./js/professeur/matiere.js" type="module" defer></script>
