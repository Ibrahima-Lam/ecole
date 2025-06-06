
    <?=$subsidebar ?>
<h2 class="title text-center"><?=__format("Les Salles de classes de l'Annee Scolaire %s", $annee->nomAnnee)?></h2>

<?php if (sizeof($data) > 0): ?>
    <table class="table table-striped">
        <thead>
            <tr>
                <th><?=__("Code Salle Classe")?>
                </th>
                <th><?=__("Code Classe")?>
                </th>
                <th><?=__("Classe")?>
                </th>
                <th><?=__("Salle")?>
                </th>
                <th><?=__("Actions")?>
                </th>
            </tr>
        </thead>
        <tbody>

            <?php
            $salleclasses = $data;
            foreach ($salleclasses as $salle): ?>

                <tr class="list-element" data-code="<?= $salle->codeSalleClasse ?>">
                    <td><?= $salle->codeSalleClasse ?></td>
                    <td><?= $salle->codeClasse ?><sub><?= $salle->indiceSalleClasse ?? '' ?></sub></td>
                    <td dir="ltr"><?= $salle->nomClasse ?>&nbsp;<?= $salle->indiceSalleClasse ?? '' ?></td>
                    <td><?= $salle->nomSalle ?></td>
                    <td>
                       <div class="center">
                         <a title="<?=__("Voir")?>" href="?p=salleclasse/profil/<?= $salle->codeSalleClasse ?>"><i class="fa fa-eye text-info"></i></a>
                      <?php if($_admin):?>
                           <div title="<?=__("Modifier")?>" data-code="<?= $salle->codeSalleClasse ?>" class="edit"><i class="fa fa-edit text-primary"></i></div>
                           <div title="<?=__("Supprimer")?>" data-code="<?= $salle->codeSalleClasse ?>" class="delete"><i class="fa fa-trash text-danger"></i></div>
                       
                      <?php endif?>
                       </div></td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
<?php else: ?>
    <div class="center">
        <p class="title text-center"><?=__format("Aucune salle de classe trouvé pour l'année scolaire %s", $annee->nomAnnee)?></p>
    </div>
<?php endif; ?>
<?php if($_admin):?>
    <div class="fixed-action">
        <button title="<?=__("Ajouter")?>" type="button" id="add" class="btn btn-success circle">
            <i class="fa fa-plus"></i>
        </button>
    </div>
<?php endif?>
<dialog class="dialog" id="dialog">
    
        <h3 class="title text-center"><?=__("Formulaire")?></h3>
   
    <div class="dialog-body">
        <form action="" class="form" id="form">
            <input type="hidden" name="edit">
            <input type="hidden" name="codeSalleClasse">
            <div class="form-group">
                <label for="classe"><?=__("Classe Niveau")?>
                </label>
                <select name="codeClasse" id="classe" class="form-control">
                    <?php foreach ($classes as $classe): ?>
                        <option value="<?= $classe->codeClasse ?>"><?= $classe->nomClasse ?>&nbsp;<?= $classe->indiceClasse ?? '' ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="salle"><?=__("Salle")?>
                </label>
                <select name="codeSalle" id="salle" class="form-control">
                    <?php foreach ($salles as $salle): ?>
                        <option value="<?= $salle->codeSalle ?>"><?= $salle->nomSalle ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="codeAnnee"><?=__("Code Annee Scolaire")?>
                </label>
                <input type="text" name="codeAnnee" id="codeAnnee" class="form-control" value="<?= $annee->codeAnnee ?>" readonly>
            </div>
            <div class="form-group">
                <label for="indiceSalleClasse"><?=__("Indice Salle de Classe")?>
                </label>
                <input type="number" name="indiceSalleClasse" id="indiceSalleClasse" class="form-control">
            </div>
            <div class="form-group">
                <button title="<?=__("Ajouter")?>" type="submit" class="btn btn-primary"><?=__("Ajouter")?>
                </button>
            </div>
        </form>
    </div>
   
    <div class="dialog-footer mx-10 right">
        <button title="<?=__("Fermer")?>" type="submit" id="close" class="btn btn-danger my-10"><?=__("Fermer")?>
        </button>
    </div>
</dialog>


<script type="module" defer>
    import { fetchJson } from "./js/src/fetch.js";


  const dialog =  document.getElementById("dialog")
  const form = document.getElementById("form");
    document.getElementById("add")?.addEventListener("click", function () {
        form.reset();
        form.edit.value=null
        dialog.showModal();
    });
    document.getElementById("close")?.addEventListener("click", function () {
        dialog.close();
    });

   form?.addEventListener("submit", function (e) {
        e.preventDefault();
        const formData = new FormData(this);
        const dataString=new URLSearchParams(formData).toString();
        const url=form.edit.value?"?p=api/salleclasse/update&"+dataString:"?p=api/salleclasse/insert&"+dataString;
        fetchJson(url)
        .then(data => {
            if (data.response === "ok") {
                dialog.close();
                location.reload();
            }
        })
        .catch(error => console.error(error));
    });

    const edits=document.querySelectorAll('.edit')
    edits.forEach(edit => {
    edit.addEventListener("click", function () {
        const code = this.dataset.code;
        fetchJson("?p=api/salleclasse/one/" + code)
            .then(data => {
                form.edit.value=true
                form.codeSalleClasse.value = data.codeSalleClasse;
                form.codeClasse.value = data.codeClasse;
                form.codeSalle.value = data.codeSalle;
                form.codeAnnee.value = data.codeAnnee;
                form.indiceSalleClasse.value = data.indiceSalleClasse;
                dialog.showModal();
            })
            .catch(error => console.error(error));
    });
    });
    const deletes=document.querySelectorAll('.delete')
    deletes.forEach(elmt => {
    elmt.addEventListener("click", function () {
        const code = this.dataset.code;
      if(confirm("Voulez-vous vraiment supprimer cette salle de classe ?"))  fetchJson("?p=api/salleclasse/delete/" + code)
            .then(data => {
                if (data.response === "ok") {
                    location.reload();
                }
            })
            .catch(error => console.error(error));
    });
    });
    const listElements=document.querySelectorAll('.list-element')
    listElements.forEach(listElement => {
    listElement.addEventListener("click", function () {
        const code = this.dataset.code;
       window.location.href="?p=salleclasse/profil/"+code;
    });
    });
</script>