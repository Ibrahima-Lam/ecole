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
                    <td><?= $codeExamen ?></td>
                    <td><input type="text" class="field" name="note" value="<?= $row['note'] ?? 0 ?>"></td>
                    <td><?= $row['note2'] ?? null ?></td>
                    </form>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<div class="center my-10">
    <button type="submit" id="save" class="btn btn-success">Enregistrer</button>
</div>

<script type="module" src="js/note/exported.js" defer></script>

    