<h2 class="title text-center">Les Classes et les Matieres</h2>
<script type="module" src="js/classematiere/forms.js" defer></script>
<table class="table table-striped">
    <thead>
        <tr>
            <th></th>
            <th><?=__("Statut")?></th>
            <th><?=__("code")?></th>
            <th><?=__("code de la classe")?></th>
            <th><?=__("code de la matiere")?></th>
            <th><?=__("Horaire")?></th>
            <th><?=__("Coefficient")?></th>
            <th><?=__("Annee S.")?></th>
            <th><?=__("Statut")?></th>
            <th><?=__("Actions")?>
            </th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $matiere): ?>
            <?php
            $checked = !empty($matiere->codeClasseMatiere)
            ?>
            <tr>
                <form action="" class="form classematiereform" method="post">
                    <input type="hidden" name="edit" value="<?= $matiere->codeClasseMatiere ?? null ?>">
                    <input type="hidden" name="code" value="<?= $matiere->codeClasseMatiere ?? null ?>">
                    <input type="hidden" name="annee" value="<?= $anneescolaire->codeAnnee ?? null ?>">
                    <td><input type="checkbox" class="check" name="check" value="true"></td>
                    <td>
                        <?php if ($checked): ?>
                            <i class="fa fa-check text-success"></i>
                        <?php else: ?>
                            <i class="fa fa-question-circle text-warning"></i>
                        <?php endif ?>
                    </td>
                    <td><?= $matiere->codeClasseMatiere ?? '' ?></td>
                    <td><select name="classe" class="field">
                        <option  selected ><?= $matiere->codeClasse ?? ''?></option>
                    </select></td>
                    <td><select name="matiere" class="field">
                        <option selected ><?= $matiere->codeMatiere ?? '' ?></option>
                    </select>
                </td>
                    <td><input type="text" name="horaire" class="field" value="<?= $matiere->horaireClasseMatiere ?? '' ?>"></td>
                    <td><input type="text" name="coefficient" class="field" value="<?= $matiere->coefficientClasseMatiere ?? '' ?>"></td>
                  <td>
                  <?= $anneescolaire->nomAnnee ?? '' ?>
                  </td>
                  <td>
                    <select name="statut" class="field">
                        <option value="1" <?= ($matiere->statutClasseMatiere??-1)==1?'selected':'' ?>><?=__("Ouvert")?></option>
                        <option value="0" <?= ($matiere->statutClasseMatiere??-1)==0?'selected':'' ?>><?=__("Fermer")?></option>
                    </select>
                  </td>
                    <td>
                    <button type="submit"><i class="fa fa-paper-plane btn btn-success"></i></button>
                    <?php if($checked&&$_admin):?>
                        <a class='delete' href="#"  data-code="<?= $matiere->codeClasseMatiere ?? '' ?>" ><i class="fa fa-trash btn btn-danger"></i></button>
                    <?php endif?>   
                </td>
                </form>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<div class="right"><button class="btn btn-success my-10" id="send" disabled><?=__("Envoyer Tous")?></button></div>

<br>
<br><?php if($length<=5):?>
    
    <h3 class="title text-center"><?=__("Importer des coefficients ")?></h3>
    <div class="table-container">
        <table class="table">
            <tbody>
                <tr>
                    <form action="?p=classematiere/import" method="post" id="importform">
                        <td><input type="hidden" name="classe" value="<?= $codeC ?? null ?>"></td>
                        <td><input type="hidden" name="matiere" value="<?= $codeM ?? null ?>"></td>
                        <td><select name="annee" class="field" required>
                            <option value=""><?=__("Annee Scolaire")?></option>
                            <option value="none"><?=__("Application")?></option>
                            <?php foreach ($annees as $annee): ?>
                                <?php
                                if($annee['codeAnnee']==$anneescolaire->codeAnnee){
                                    continue;
                                }
                                ?>
                                <option value="<?= $annee['codeAnnee'] ?>"><?= $annee['nomAnnee'] ?></option>
                            <?php endforeach ?>
                        </select></td>
                        <td><input id="import" type="submit" name='import' class="btn btn-success" value="<?=__("Importer")?>"></td>
                        <td><input id="importtous" type="submit" name='importtous' class="btn btn-success" value="<?=__("Importer Tous")?>"></td>
                    </form>
                </tr>
            </tbody>
        </table>
    </div>
<?php endif?>