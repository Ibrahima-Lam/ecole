<h2 class="text-center my-10"><?=__format("Formulaire des fichiers de notes de la classe %s pour la matiere %s", $salleClasse->pseudoSalleClasse,$classeMatiere->codeMatiere)?>
            </h2>


            <form action="?p=note/traitement_matiere_file/<?=$codeSalleClasse?>/<?=$codeMatiere?>" class="form" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for=""><?=__("Colonne Numero ou Matricule")?>
                    </label>
                    <select name="numColonne" id="">
                        <?php foreach ($cols as $col) : ?>
                            <option value="<?= $col ?>"><?= $col ?></option>
                        <?php endforeach; ?>
                    </select>
                </div> 
                <div class="form-group">
                    <label for=""><?=__("Premier  Colonne des Note")?>
                    </label>
                    <select name="noteColonne1" id="">
                        <?php foreach ($cols as $col) : ?>
                            <option value="<?= $col ?>"><?= $col ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for=""><?=__("Derniere  Colonne des Note")?>
                    </label>
                    <select name="noteColonne2" id="">
                        <?php foreach ($cols as $col) : ?>
                            <option value="<?= $col ?>"><?= $col ?></option>
                        <?php endforeach; ?>
                    </select>
                </div> 
                <div class="form-group">
                    <label for=""><?=__("premier ligne")?>
                    </label>
                    <select name="premierLigne" id="">
                        <?php foreach ($rows as $row) : ?>
                            <option value="<?= $row ?>"><?= $row ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for=""><?=__("Derniere ligne")?>
                    </label>
                    <select name="dernierLigne" id="">
                        <?php foreach ($rows as $row) : ?>
                            <option value="<?= $row ?>"><?= $row ?></option>
                        <?php endforeach; ?>
                    </select>
                </div> 
                <div class="form-group">
                    <label for=""><?=__("Fichier")?>
                    </label>
                    <input type="file" name="fichier" id="fichier" class="form-control">
                </div> 
               
                <button type="reset" name="envoyer" class="btn btn-default">Annuler</button>
                <button type="submit" name="envoyer" class="btn btn-primary">Envoyer</button>
            </form>