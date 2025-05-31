<h2 class="title text-center">Les Classes et les Matieres</h2>
<script type="module" src="js/classematiere/forms.js" defer></script>
<table class="table table-striped">
    <thead>
        <tr>
            <th></th>
            <th>Statut</th>
            <th>code</th>
            <th>code de la classe</th>
            <th>code de la matiere</th>
            <th>Horaire</th>
            <th>Coefficient</th>
            <th>date</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $matiere): ?>
            <?php
            $checked = !empty($matiere->codeClasseMatiere)
            ?>
            <tr>
                <form action="" class="form" method="post">
                    <input type="hidden" name="edit" value="<?= $matiere->codeClasseMatiere ?? null ?>">
                    <input type="hidden" name="code" value="<?= $matiere->codeClasseMatiere ?? null ?>">
                    <td><input type="checkbox" class="check" name="check" value="true"></td>
                    <td>
                        <?php if ($checked): ?>
                            <i class="bi-check text-success"></i>
                        <?php else: ?>
                            <i class="bi-question-circle text-warning"></i>
                        <?php endif ?>
                    </td>
                    <td><?= $matiere->codeClasseMatiere ?? '' ?></td>
                    <td><select name="classe" class="field">
                        <option ><?= $matiere->codeClasse ?? '' ?></option>
                    </select></td>
                    <td><select name="matiere" class="field">
                        <option ><?= $matiere->codeMatiere ?? '' ?></option>
                    </select>
                </td>
                    <td><input type="text" name="horaire" class="field" value="<?= $matiere->horaireClasseMatiere ?? '' ?>"></td>
                    <td><input type="text" name="coefficient" class="field" value="<?= $matiere->coefficientClasseMatiere ?? '' ?>"></td>
                    <td><input type="date" name="date" class="field" value="<?= $matiere->dateClasseMatiere ?? '2024-10-01' ?>"></td>
                    <td>
                    <button type="submit"><i class="bi-send btn btn-success"></i></button>
                    <?php if($checked&&$_admin):?>
                        <a class='delete' href="#"  data-code="<?= $matiere->codeClasseMatiere ?? '' ?>" ><i class="fa fa-trash btn btn-danger"></i></button>
                    <?php endif?>
                </td>
                </form>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<div class="right"><button class="btn btn-success my-10" id="send" disabled>Envoyer Tous</button></div>