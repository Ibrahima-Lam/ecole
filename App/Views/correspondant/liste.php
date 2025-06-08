<?=$subsidebar??'' ?>


<h2 class="title text-center"><?= __("Les correspondants") ?></h2>

<div class="center my-10">

    <input type="search" class="field" id="srch" placeholder="<?= __("Rechercher un correspondant") ?>" />
</div>
    <div class="table-container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th></th>
                    <th data-sort="nomCorrespondant" class="sortable"><?= __("Nom") ?></th>
                    <th data-sort="ismeCorrespondant" class="sortable"><?= __("Nom en arabe") ?></th>
                    <th data-sort="sexeCorrespondant" class="sortable"><?= __("Sexe") ?></th>
                    <th data-sort="adresseCorrespondant" class="sortable"><?= __("Adresse") ?></th>
                    <th data-sort="telCorrespondant" class="sortable"><?= __("Tel") ?></th>
                    <th data-sort="emailCorrespondant" class="sortable"><?= __("Email") ?></th>
                    <th data-sort="nniCorrespondant" class="sortable"><?= __("NNI") ?></th>
                    <th><?= __("Actions") ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($correspondants as $correspondant): ?>
                    <tr data-id="<?= $correspondant->idCorrespondant ?>">
                        <td>
                            <div class="center img-circle">
                                <?php if (file_exists("profiles/correspondant/" . $correspondant->imagePathCorrespondant) && $correspondant->imagePathCorrespondant): ?>
                                    <img src="profiles/correspondant/<?= $correspondant->imagePathCorrespondant ?>">
                                <?php else: ?>
                                    <div class="center">
                                        <i class="fa fa-user"></i>
                                    </div>
                                <?php endif ?>
                            </div>
                        </td>
                        <td><?= $correspondant->nomCorrespondant ?></td>
                        <td><?= $correspondant->ismeCorrespondant ?></td>
                        <td><?= $correspondant->sexeCorrespondant ?></td>
                        <td><?= $correspondant->adresseCorrespondant ?></td>
                        <td><?= $correspondant->telCorrespondant ?></td>
                        <td><?= $correspondant->emailCorrespondant ?></td>
                        <td><?= $correspondant->nniCorrespondant ?></td>
                        <td>
                            <?php if ($_admin): ?>
                                <div class="center">
                                    <button type="button" data-id="<?= $correspondant->idCorrespondant ?>"
                                        class="btn edit"><i class="fa fa-edit text-primary"></i></button>
                                    <button type="button" data-id="<?= $correspondant->idCorrespondant ?>"
                                        class="btn delete"><i class="fa fa-trash text-danger"></i></button>
                                </div>
                            <?php endif ?>
                        </td>

                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>

    <div class="fixed-action">
        <?php if ($_admin): ?>
            <button type="button" id="add" class="btn btn-primary circle"><i class="fa fa-plus"></i></button>
        <?php endif ?>
    </div>


    <dialog id="dialog" class="dialog">
        <div class="dialod-head">
            <h3 class="text-center title"><?= __("Formulaire") ?></h3>
        </div>
        <div class="dialog-body">
            <form class="form" action="?p=correspondant/traitement" method="post">
                <input type="hidden" name="edit">
                <div class="form-group">
                    <label for="nom"><?= __("Nom et Prénom") ?></label>
                    <input type="text" class="form-control" id="nom" name="nom" placeholder="Entrer le nom et prénom"
                        required>
                </div>
                <div class="form-group" lang="ar">
                    <!-- Nom en Arabe -->
                    <label for="isme">
                        <span><?= __("Nom en Arabe") ?></span> <span>الاسم</span>
                    </label>
                    <input type="text" dir="rtl" class="form-control" id="isme" name="isme"
                        placeholder="الاسم Nom en Arabe">
                </div>
                <div class="form-group">
                    <label for="sexe"><?= __("Sexe") ?></label>
                    <div class="form-radio">
                        <input type="radio" id="sexeM" name="sexe" value="M" required>
                        <label for="sexeM"><?= __("Masculin") ?></label>
                        <input type="radio" id="sexeF" name="sexe" value="F" required>
                        <label for="sexeF"><?= __("Feminin") ?></label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="nni"><?= __("NNI") ?></label>
                    <input type="text" class="form-control" id="nni" name="nni" placeholder="Entrer le NNI" required>
                </div>
                <div class="form-group">
                    <label for="adresse"><?= __("Adresse") ?></label>
                    <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Entrer l'adresse">
                </div>

                <div class="form-group">
                    <label for="tel"><?= __("Tel") ?></label>
                    <input type="text" class="form-control" id="tel" name="tel" placeholder="Entrer le tel">
                </div>
                <div class="form-group">
                    <label for="email"><?= __("Email") ?></label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Entrer l'email">
                </div>

                <div class="form-action">
                    <button type="reset" class="btn btn-default"><?= __("Annuler") ?></button>
                    <button type="submit" class="btn btn-primary"><?= __("Enregistrer") ?></button>
                </div>

            </form>
        </div>
        <div class="dialog-foot">
            <button class="btn btn-danger" id="close"><?= __("Fermer") ?>
            </button>
        </div>
    </dialog>

    <script src="./js/correspondant/liste.js" type="module" defer></script>