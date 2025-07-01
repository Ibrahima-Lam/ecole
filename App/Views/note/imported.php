
<div class="space-around my-10">
    <h3><?=__("Classe")?> <a class="link-default" href="?p=salleclasse/profil/<?= $examen->codeSalleClasse ?>"><?= $examen->pseudoSalleClasse ?></a></h3>
   <h3><?=__("Matiere")?> : <?= $examen->codeMatiere ?></h3>
    <select name="" id="changeExamen" class="field">
        <?php foreach ($examens as $ex): ?>
            <option value="<?= $ex->codeExamen ?>" <?= $ex->codeExamen == $examen->codeExamen ? 'selected' : '' ?>><?= $ex->codeEvaluation?></option>
        <?php endforeach ?>
    </select>
</div>
<br>

<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
            <th><input type="checkbox" class="field" id="checkAll"></th>
                <th>Status</th>
                <th>Matricule</th>
                <th>Numero</th>
                <th>Nom</th>
                <th>Code Examen</th>
                <th>Note</th>
                <th>Note Existante</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $row) : ?>
                <tr>
                    <form action="" class="form">
                        <input type="hidden" name="codeExamen" value="<?= $codeExamen ?>">
                        <input type="hidden" name="edit" value="<?= $row['statut'] ?? null ?>">
                        <input type="hidden" name="matricule" value="<?= $row['matricule']??null ?>">
                        <input type="hidden" name="id" value="<?= $row['id']??null ?>">
                    <td><input type="checkbox" class="check" name="check" value="true" <?= !($row['statut'] ?? null) ? 'checked' : '' ?>></td>
                        <td>
                        <?php if ($row['statut']??false): ?>
                            <i class="bi-check text-success"></i>
                        <?php else: ?>
                            <i class="bi-question-circle text-warning"></i>
                        <?php endif ?>
                    </td>
                    <td><?= $row['matricule'] ?? null ?></td>
                    <td><?= $row['num'] ?></td>
                    <td><?= $row['nom'] ?></td>
                    <td class="codes"><?= $codeExamen ?></td>
                    <td><input type="text" class="field note" name="note" value="<?= $row['note'] ?? 0 ?>"></td>
                    <td class="dbNote"><?= $row['note2'] ?? null ?></td>
                    </form>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<div class="center my-10">
    <button type="submit" id="save" class="btn btn-success">Enregistrer</button>
</div>

<script type="module" src="js/note/imported.js" defer></script>

    