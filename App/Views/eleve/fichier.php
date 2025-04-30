<script type="module" src="./js/eleve/fichier.js" defer></script>
<?php if (count($data) != 0): ?>
    <table class="table table-striped">
        <thead>
            <tr>
                <th><input type="checkbox" class="field" id="checkAll"></th>
                <th>Matricule</th>
                <th>Nom</th>
                <th>الاسم</th>
                <th>Sexe</th>
                <th>Date de naissance</th>
                <th>Lieu de naissance</th>
                <th>Adresse</th>
                <th>NNI</th>
                <th>Action</th>

            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $eleve): ?>
                <tr data-statut="<?= $eleve['statut'] ?>">
                    <form action="" class="form">
                       
                        <td>
                            <?php if(!$eleve['statut']):?>
                                
                                <input type="checkbox" name="statut"  class="field statut" value="true" checked>
                                <?php else: ?>
                               <button class="btn text-success"><i class="bi bi-check2-all"></i></button>
                                <?php endif ?>
                        </td>
                        <td><input type="text" class="field" name="matricule" value="<?= $eleve['matricule'] ?>"></td>
                        <td><input type="text" class="field" name="nom" value="<?= $eleve['nom'] ?>"></td>
                        <td><input type="text" class="field" name="isme" value="<?= $eleve['isme'] ?>"></td>
                        <td><input type="text" class="field" name="sexe" value="<?= $eleve['sexe'] ?>"></td>
                        <td><input type="date" class="field" name="dateNaissance" value="<?= $eleve['dateNaissance'] ?>"></td>
                        <td><input type="text" class="field" name="lieuNaissance" value="<?= $eleve['lieuNaissance'] ?>"></td>
                        <td><input type="text" class="field" name="adresse" value="<?= $eleve['adresse'] ?>"></td>
                        <td><input type="text" class="field" name="nni" value="<?= $eleve['nni'] ?>"></td>
                        <td>
                            <div class="center">

                                <button type="submit" class="btn btn-success"><i class="bi-send"></i></button>
                                <button type="submit" class="remove btn btn-danger"><i class="bi-x-lg"></i></button>
                            </div>
                        </td>
                    </form>

                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
    <div class="center my-10">
        <button id="send" class="btn btn-success">Enregistrer Tous</button>
        <button id="inscrire" class="btn btn-primary">Inscrire Tous</button>
    </div>

<?php else: ?>
    <div class="center">
        <p class="title text-center">Aucun élève trouvé</p>
    </div>
<?php endif; ?>