<?php
$title='Formulaire Absence';
$salleclasses??=[];
?>
<br>

<div class="space-around my-10">
    <select class="field" id="changeSalleClasse">
        <?php foreach ($salleclasses as $salleclasse) : ?>
            <option value="<?= $salleclasse->codeSalleClasse ?>" <?= $codeSalleClasse  == $salleclasse->codeSalleClasse ? 'selected' : '' ?>><?= $salleclasse->pseudoSalleClasse ?></option>
        <?php endforeach ?>
    </select>
    <select class="field" id="changeTrimestre">
                        <option value="1" <?= $trimestre  == 1 ? 'selected' : '' ?>>Trimestre 1</option>
                        <option value="2" <?= $trimestre  == 2 ? 'selected' : '' ?>>Trimestre 2</option>
                        <option value="3" <?= $trimestre  == 3 ? 'selected' : '' ?>>Trimestre 3</option>
                    </select>
</div>
<br>
<h3 class="title text-center"><?=__("Formulaire des Absents")?>
</h3>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
            <th><input type="checkbox" class="field" id="checkAll"></th>
                <th>Status</th>
                <th>Matricule</th>
                <th>Numero</th>
                <th>Nom</th>
                <th>Nombre Absence</th>
                <th>Trimestre</th>
                <th>Nombre Absence Existante</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($absences as $row) : ?>
                <tr>
                    <form action="" class="form">
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
                    <td><input type="text" class="field nombreAbsence" name="nombreAbsence" value="<?= $row['nombreAbsence'] ?? '' ?>"></td>
                    <td><select class="field trimestreAbsence" name="trimestreAbsence">
                        <option value="1" <?= $row['trimestreAbsence'] ?? null == 1 ? 'selected' : '' ?>>1</option>
                        <option value="2" <?= $row['trimestreAbsence'] ?? null == 2 ? 'selected' : '' ?>>2</option>
                        <option value="3" <?= $row['trimestreAbsence'] ?? null == 3 ? 'selected' : '' ?>>3</option>
                    </select></td>
                    <td class="dbAbsence"><?= $row['dbAbsence'] ?? null ?></td>
                    </form>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<div class="center my-10">
    <button type="submit" id="save" class="btn btn-success">Enregistrer</button>
</div>

<script type="module" src="js/absence/addAll.js" defer></script>
