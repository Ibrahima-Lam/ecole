<?php
$title="Formulaire";
?>
<form class="form" id="form" action="?p=note/imported" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="codeNote">Code Examen</label>
        <input type="text" class="form-control" id="codeExamen" name="codeExamen" value="<?= $codeExamen ?>" placeholder="Code Examen" required>
    </div>
    <div class="form-group">
        <label for="numColonne">Colonne des numéros</label>
        <select class="form-control" id="numColonne" name="numColonne" required>
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
       <label for="noteColonne">Colonne des notes</label>
       <select class="form-control" id="noteColonne" name="noteColonne" required>
          <?php foreach ($cols as $col) : ?>
               <option value="<?= $col ?>" ><?= $col ?></option>
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
        <label for="fichier">Fichier</label>
        <input type="file" class="form-control" id="fichier" name="fichier" accept=".xlsx">
    </div>
    <div class="form-action">
        <button type="reset" class="btn btn-default">Annuler</button>
        <button type="submit" class="btn btn-primary">Importer</button>
    </div>
</form>