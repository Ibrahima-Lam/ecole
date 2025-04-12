<h2 class="title center my-10">La liste des eleves de la classe <?=$classe? $classe->codeClasse.$classe->indiceSalleClasse:'' ?></h2>

<div class="table-container">
    <table class="table table-striped my-10">
        <thead>
            <tr>
               <?php if($paramettre->matricule):?>
                 <th>Matricule</th>
               <?php endif?>
               <?php if($paramettre->numero):?>
                 <th>Numero</th>
               <?php endif?>
               <?php if($paramettre->nom):?>
                 <th>Nom</th>
               <?php endif?>
               <?php if($paramettre->isme):?>
                 <th>الاسم</th>
               <?php endif?>
                <?php if($paramettre->sexe):?>
                    <th>Sexe</th>
                <?php endif?>
                <?php if($paramettre->dateNaissance):?>
                    <th>Date de naissance</th>
                <?php endif?>
                <?php if($paramettre->adresse):?>
                    <th>Adresse</th>
                <?php endif?>
                <?php if($paramettre->nni):?>
                    <th>NNI</th>
                <?php endif?>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($inscrits as $inscrit): ?>
                <tr class="inscritRow" data-matricule="<?= $inscrit->matricule ?>">
                    <?php if($paramettre->matricule):?>
                        <td><?= $inscrit->matricule ?></td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td><?= $inscrit->numeroInscrit ?></td>
                    <?php endif?>
                    <?php if($paramettre->nom):?>
                        <td><?= $inscrit->nom ?>
                      <?php if($paramettre->nom_isme):?>
                         <br> <span> <?= $inscrit->isme ?></span>
                      <?php endif?>
                    </td>
                    <?php endif?>
                   <?php if($paramettre->isme):?>
                     <td dir="rtl"><?= $inscrit->isme ?></td>
                   <?php endif?>
                   <?php if($paramettre->sexe):?>
                    <td><?= $inscrit->sexe ?></td>
                   <?php endif?>
                   <?php if($paramettre->dateNaissance):?>
                    <td><?= $inscrit->dateNaissance ?></td>
                   <?php endif?>
                   <?php if($paramettre->adresse):?>
                    <td><?= $inscrit->adresse ?></td>
                   <?php endif?>
                   <?php if($paramettre->nni):?>
                    <td><?= $inscrit->nni ?></td>
                   <?php endif?>
                    <td><a href="?p=eleve/profil/<?= $inscrit->matricule ?>"><i class="bi-eye"></i></a></td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<div class="fixed-action">
    <a title="Imprimer" href="?p=pdf/inscrit/classe/<?= $classe->codeSalleClasse ?>" class="btn btn-success circle"><i class="bi-filetype-pdf"></i></a>
    <button id="paramettre" title="paramettre d'affichage" class="btn btn-primary circle"><i class="bi-gear"></i></button>
    <a id="export" title="Exporter en excel" id="export" href="?p=inscrit/export/<?= $classe->codeSalleClasse ?>" class="btn btn-success circle"><i class="bi-filetype-xls"></i></a>
</div>

<dialog id="dialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title">Paramettre d'affichage</h3>
    </div>
    <div class="dialog-body">
    <form class="form" id="form" action="" method="post">
<ul class="list-group">
    <li class="list-group-item">
        <label for="matricule">Matricule</label>
        <input type="checkbox" name="matricule" id="matricule" value="true" <?=$paramettre->matricule?'checked' : ''?>>
    </li> 
    <li class="list-group-item">
        <label for="numero">Numero</label>
        <input type="checkbox" name="numero" id="numero" value="true" <?=$paramettre->numero?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nom">Nom</label>
        <input type="checkbox" name="nom" id="nom" value="true" <?=$paramettre->nom?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="isme">Isme</label>
        <input type="checkbox" name="isme" id="isme" value="true" <?=$paramettre->isme?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nom_isme">Nom et Isme</label>
        <input type="checkbox" name="nom_isme" id="nom_isme" value="true" <?=$paramettre->nom_isme?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="sexe">Sexe</label>
        <input type="checkbox" name="sexe" id="sexe" value="true" <?=$paramettre->sexe?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="dateNaissance">Date de naissance</label>
        <input type="checkbox" name="dateNaissance" id="dateNaissance" value="true" <?=$paramettre->dateNaissance?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="lieuNaissance">Lieu de naissance</label>
        <input type="checkbox" name="lieuNaissance" id="lieuNaissance" value="true" <?=$paramettre->lieuNaissance?'checked' : ''?>>
    </li>
    
    <li class="list-group-item">
        <label for="adresse">Adresse</label>
        <input type="checkbox" name="adresse" id="adresse" value="true" <?=$paramettre->adresse?'checked' : ''?>>
    </li>
    <li class="list-group-item">
        <label for="nni">NNI</label>
        <input type="checkbox" name="nni" id="nni" value="true" <?=$paramettre->nni?'checked' : ''?>>
    </li>
</ul>
<button type="submit" class="btn btn-primary">Enregistrer</button>
</form>
    </div>
    <div class="dialog-foot">
        <button id="close" class="btn btn-danger">Fermer</button>
    </div>
</dialog>


<script type="module">
    import {fetchText} from "./js/src/fetch.js";

    const paramettre = document.getElementById('paramettre')
    const close = document.getElementById('close')
    const dialog = document.getElementById('dialog')
    paramettre.addEventListener('click',function () {
        dialog.showModal()
    })
    close.addEventListener('click',function () {
        dialog.close()
    })
    

    document.getElementById('form').addEventListener('submit',async function (e) {
        e.preventDefault();
        let formData = new FormData(e.target);
        let dtSring = new URLSearchParams(formData).toString()
        console.log(dtSring);
        
        await fetchText(`?p=api/paramettre/classe&` + dtSring).then(data => {
            console.log(data);
            window.location.reload();
        }).catch(error => {
            console.log(error);
        });
    });

    document.getElementById('export').addEventListener('click',function (e) {
        e.preventDefault();
        window.open(`?p=inscrit/export/<?= $classe->codeSalleClasse ?>`)
    })

    const inscritRows = document.querySelectorAll('.inscritRow');
    inscritRows.forEach(row => {
        row.addEventListener('click', function () {
            window.location.href = `?p=eleve/profil/${this.dataset.matricule}`;
        });
    });
</script>