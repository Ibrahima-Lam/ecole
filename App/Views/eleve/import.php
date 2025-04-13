<form action="?p=eleve/traitementExcel" method="post" class="form" enctype="multipart/form-data">
<div class="form-group">
        <label for="matriculeColonne">Colonne des Matricules</label>
        <select class="form-control" id="matriculeColonne" name="matriculeColonne" required>
           <?php foreach ($cols as $col) : ?>
                <option value="<?= $col ?>" <?= $col === 'A' ? 'selected' : '' ?>><?= $col ?></option>
            <?php endforeach ?>
        </select>
    </div>
     <div class="form-group">
        <label for="nomColonne">Colonne des noms</label>
        <select class="form-control" id="nomColonne" name="nomColonne" required>
           <?php foreach ($cols as $col) : ?>
                <option value="<?= $col ?>" <?= $col === 'B' ? 'selected' : '' ?>><?= $col ?></option>
            <?php endforeach ?>
        </select>
    </div>
    <div class="form-group">
        <label for="ismeColonne">Colonne des noms en arabe</label>
        <select class="form-control" id="ismeColonne" name="ismeColonne" >
            <option value="">Sélectionnez une colonne</option>
           <?php foreach ($cols as $col) : ?>
                <option value="<?= $col ?>"><?= $col ?></option>
            <?php endforeach ?>
        </select>
    </div>
    <div class="form-group">
        <label for="sexeColonne">Colonne des sexes</label>
        <select class="form-control" id="sexeColonne" name="sexeColonne" >
            <option value="">Sélectionnez une colonne</option>
           <?php foreach ($cols as $col) : ?>
                <option value="<?= $col ?>"><?= $col ?></option>
            <?php endforeach ?>
        </select>
    </div>
     <div class="form-group">
        <label for="dateNaissanceColonne">Colonne des dates de naissance</label>
        <select class="form-control" id="dateNaissanceColonne" name="dateNaissanceColonne" >
            <option value="">Sélectionnez une colonne</option>
           <?php foreach ($cols as $col) : ?>
                <option value="<?= $col ?>"><?= $col ?></option>
            <?php endforeach ?>
        </select>
    </div> 
    <div class="form-group">
        <label for="lieuNaissanceColonne">Colonne des lieux de naissance</label>
        <select class="form-control" id="lieuNaissanceColonne" name="lieuNaissanceColonne" >
            <option value="">Sélectionnez une colonne</option>
           <?php foreach ($cols as $col) : ?>
                <option value="<?= $col ?>"><?= $col ?></option>
            <?php endforeach ?>
        </select>
    </div> 
    <div class="form-group">
        <label for="adresseColonne">Colonne des adresses</label>
        <select class="form-control" id="adresseColonne" name="adresseColonne" >
            <option value="">Sélectionnez une colonne</option>
           <?php foreach ($cols as $col) : ?>
                <option value="<?= $col ?>"><?= $col ?></option>
            <?php endforeach ?>
        </select>
    </div>
    <div class="form-group">
        <label for="nniColonne">Colonne des nni</label>
        <select class="form-control" id="nniColonne" name="nniColonne" >
            <option value="">Sélectionnez une colonne</option>
           <?php foreach ($cols as $col) : ?>
                <option value="<?= $col ?>"><?= $col ?></option>
            <?php endforeach ?>
        </select>
    </div>
    <div class="form-group">
        <label for="premierLigne">Premier ligne</label>
        <select class="form-control" id="premierLigne" name="premierLigne" required>
            <option value="">Sélectionnez une ligne</option>
           <?php foreach ($rows as $row) : ?>
                <option value="<?= $row ?>"><?= $row ?></option>
            <?php endforeach ?>
        </select>
    </div> 
     <div class="form-group">
        <label for="dernierLigne">Dernière ligne</label>
        <select class="form-control" id="dernierLigne" name="dernierLigne" required>
            <option value="">Sélectionnez une ligne</option>
           <?php foreach ($rows as $row) : ?>
                <option value="<?= $row ?>"><?= $row ?></option>
            <?php endforeach ?>
        </select>
    </div>
    <div class="form-group">
        <label for="file">Fichier excel</label>
        <input type="file" name="fichier" id="file" placeholder="Fichier excel" accept=".xlsx" required>
    </div>
    <div class="form-action">
        <button type="reset" class="btn btn-danger">Effacer</button>
        <button type="submit" name="import" class="btn btn-primary">Importer</button>
    </div>
</form>