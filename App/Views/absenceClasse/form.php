<?php
$absenceClasse??=new stdClass;
?>
    
    <h2 class="title text-center"><?=__("Formulaire d'absence par classe")?>
    </h2>
    <div class="center">
        <form action="" class="form" id="form">
            <div class="form-group">
                <label for="codeSalleClasse"><?=__("Classe")?></label>
                <select class="form-control" id="codeSalleClasse" name="codeSalleClasse">
                    <?php foreach ($salleclasses as $salleclasse) : ?>
                        <option value="<?= $salleclasse->codeSalleClasse ?>" <?= (($absenceClasse?->codeSalleClasse??null) == $salleclasse->codeSalleClasse) ? 'selected' : '' ?>>
                            <?= $salleclasse->pseudoSalleClasse ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeHoraire"><?=__("Horaire")?></label>
                <select class="form-control" id="codeHoraire" name="codeHoraire">
                    <?php foreach ($horaires as $horaire) : ?>
                        <option value="<?= $horaire->codeHoraire ?>" <?= (($absenceClasse?->codeHoraire??null) == $horaire->codeHoraire) ? 'selected' : '' ?>>
                            <?= $horaire->nomHoraire ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="dateAbsenceClasse"><?=__("Date d'absence")?></label>
                <input type="date" class="form-control" id="dateAbsenceClasse" name="dateAbsenceClasse" value="<?= $absenceClasse->dateAbsenceClasse ?? '' ?>">
            </div>
            <div class="form-group">
                <label for="absents"><?=__("Absents (numero d'inscrit séparés par des virgules)")?></label>
                <textarea class="form-control" id="absents" name="absents" rows="3"><?= $absenceClasse->absents ?? '' ?></textarea>
            </div>
            <div class="form-group">
                <label for="justifies"><?=__("Justifies (numero d'inscrit séparés par des virgules)")?></label>
                <textarea class="form-control" id="justifies" name="justifies" rows="3"><?= $absenceClasse->justifies ?? '' ?></textarea>
            </div>
            <input type="hidden" name="idAbsenceClasse" value="<?= $absenceClasse->idAbsenceClasse ?? '' ?>">
            <button type="submit" class="btn btn-primary"><?=__("Enregistrer")?></button>
        </form>
    </div>
</div>

<script>
    document.getElementById('form').addEventListener('submit', function (e) {
        e.preventDefault();
        const formData = new FormData(this);
        let idAbsenceClasse = formData.get('idAbsenceClasse');
        let data = new URLSearchParams(formData).toString();
        let url = idAbsenceClasse ? '?p=api/absenceClasse/update/' + idAbsenceClasse : '?p=api/absenceClasse/insert';
        fetch(url+"&" + data)
        .then(response => response.json())
        .then(data => {
            if (data.status === 1) {
                alert(data.message);
                window.location.href = '?p=absenceClasse/liste';
            } else {
                alert(data.error);
            }
        })
       
    });
</script>

