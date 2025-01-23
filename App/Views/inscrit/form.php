<form action="?p=inscrit/traitement" method="post" class="form">
    <input type="hidden" name="idInscrit" value="<?= $eleveinscrit->idInscrit ?? null ?>">
    <input type="hidden" name="edit" value="<?= $eleveinscrit->idInscrit ?? null ?>">
    <div class="form-group">
        <label for="matricule">Matricule</label>
        <select name="matricule" id="matricule" class="form-control" required>
            <?= $elevehtml ?>
        </select>
    </div>
    <div class="form-group">
        <label for="codeSalleClasse"> salle classe</label>
        <select name="codeSalleClasse" id="codeSalleClasse" class="form-control" required>
            <?= $classetml ?>
        </select>
    </div>
    <div class="form-group">
        <label for="numeroInscrit">Numero inscrit</label>
        <input type="text" class="form-control" id="numeroInscrit" name="numeroInscrit" placeholder="Entrer le numero d'inscrit" value="<?= $eleveinscrit->numeroInscrit ?? $number ?>" required>
    </div>
    <div class="form-group">
        <label for="typeInscrit">Type inscrit</label>
        <select class="form-control" id="typeInscrit" name="typeInscrit">
            <option value="passant">Passant</option>
            <option value="redoublant">Redoublant</option>
            <option value="entrant">Entrant</option>
            <option value="nouveau-passant">Nouveau passant</option>
            <option value="nouveau-redoublant">Nouveau redoublant</option>
        </select>
    </div>
    <div class="form-group">
        <label for="dateInscription">Date d'inscription</label>
        <input type="date" class="form-control" id="dateInscription" name="dateInscription" value="<?= $eleveinscrit->dateInscription ?? $today ?>" placeholder="Entrer la date d'incription" required>
    </div>
    <div class="form-action">
        <button type="reset" class="btn btn-default">Annuler</button>
        <button type="submit" class="btn btn-primary"><?= isset($eleveinscrit->idInscrit) ? "Modifier" : "Enregistrer" ?></button>
    </div>
</form>