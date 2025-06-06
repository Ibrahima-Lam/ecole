<?=$subsidebar??'' ?>

<h2 class="title text-center my-10"><?=__("Profil du Correspondant")?>
</h2>
<div class="center">
        <div class="profile">

            <?php if(file_exists("profiles/correspondant/".($correspondant->imagePathCorrespondant))&&$correspondant->imagePathCorrespondant):?>
                <img src="profiles/correspondant/<?= $correspondant->imagePathCorrespondant ?>" alt="<?= $correspondant->nomCorrespondant ?>">
            <?php else:?>
                <i class="fas fa-user" style="font-size: 8rem; color: gray;"></i>
            <?php endif?>
           
            <h3><?= $correspondant->nomCorrespondant ?></h3>
            <h3 dir="rtl"><?= $correspondant->ismeCorrespondant ?></h3>
            <?php if($_admin):?>
              <form id="editImageForm" method="post" action="?p=correspondant/traitementImage" enctype="multipart/form-data">
                <input type="hidden" name="id" value="<?= $correspondant->idCorrespondant ?>">
                <div class="edit-image">
                 <label for="editImageInput">
                  <i class="fa fa-pen text-primary" style="font-size: 1rem;"></i>
              </label>

                 <input type="file" id="editImageInput" name="image" accept="image/*">
              </div>
              </form>
            <?php endif?>
           
        </div>
    </div>
    <br>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th data-sort="idCorrespondant" class="sortable"><?=__("id")?></th>
                <th data-sort="nomCorrespondant" class="sortable"><?=__("Nom")?></th>
                <th data-sort="ismeCorrespondant" class="sortable"><?=__("Nom en arabe")?></th>
                <th data-sort="telCorrespondant" class="sortable"><?=__("Tel")?></th>
                <th data-sort="emailCorrespondant" class="sortable"><?=__("Email")?></th>
                <th data-sort="nniCorrespondant" class="sortable"><?=__("NNI")?></th>
                <th data-sort="adresseCorrespondant" class="sortable"><?=__("Adresse")?></th>
                <th><?=__("Actions")?></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                    <td><?=$correspondant->idCorrespondant ?></td>
                    <td><?=$correspondant->nomCorrespondant ?></td>
                    <td><?=$correspondant->ismeCorrespondant ?></td>
                    <td><?=$correspondant->telCorrespondant ?></td>
                    <td><?=$correspondant->emailCorrespondant ?></td>
                    <td><?=$correspondant->nniCorrespondant ?></td>
                    <td><?=$correspondant->adresseCorrespondant ?></td>
                    <td>
                        <?php if($_admin):?>
                            <div class="center">
                                <button type="button" id="edit" data-id="<?=$correspondant->idCorrespondant ?>" class="btn"><i class="fa fa-edit text-primary"></i></button>
                            </div>
                        <?php endif?>
                    </td>

            </tr>
           
        </tbody>
    </table>
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


<script type="module" defer>
    import CorrespondantForm from "./js/Correspondant/Correspondant_form.js";
    import { fetchJson } from "./js/src/fetch.js";
    document.querySelector("#edit").addEventListener("click", () => {
        let dialog = new CorrespondantForm(document.querySelector(".dialog"), "<?=$correspondant->idCorrespondant ?>");
        dialog.setEditable('true');
        dialog.show();
    });

    document.querySelector('#editImageInput')?.addEventListener('change',async function (e) {
        let message=await fetchJson("?p=api/home/translate/"+"Êtes-vous sûr de vouloir modifier l'image ?")
     if(confirm(message.res)){
        await document.querySelector('#editImageForm')?.submit();
     }
    });
    
</script>