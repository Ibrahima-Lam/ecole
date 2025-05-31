<?php
$title = "Relevé de notes";

?>
<h2 class="text-center my-10">Relevé de notes</h2>
<div class="space-around my-10">
    <p>
        <strong>Classe :</strong> <?= $salleClasse->codeClasse. $salleClasse->indiceSalleClasse ?>
    </p>
    <p>
        <strong>Matière :</strong> <?= $data->matiere->nomMatiere ?>
    </p>
</div>

<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <?php if($paramettre->matricule):?>
                    <th>Matricule</th>
                <?php endif?>
                <?php if($paramettre->numero):?>
                    <th>Numéro</th>
                <?php endif?>
                <?php if($paramettre->nom):?>
                    <th>Nom</th>
                <?php endif?>
                <?php if($paramettre->isme):?>
                    <th>Nom en Arabe</th>
                <?php endif?>
                <?php foreach ($data->examens as $examen) : ?>
                    <th><?= $examen->codeEvaluation ?></th>
                <?php endforeach; ?>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data->getClasseResultat() as $eleve) : ?>
                <tr>
                    <?php if($paramettre->matricule):?>
                        <td><?= $eleve->matricule ?></td>
                    <?php endif?>
                    <?php if($paramettre->numero):?>
                        <td><?= $eleve->numeroInscrit ?></td>
                    <?php endif?>
                    <?php if($paramettre->nom):?>
                        <td><?= $eleve->nom ?>
                    <?php if($paramettre->nom_isme):?>
                        <br>
                        <?= $eleve->isme ?>
                    <?php endif?>
                    </td>
                    <?php endif?>
                    <?php if($paramettre->isme):?>
                        <td><?= $eleve->isme ?></td>
                    <?php endif?>
                    <?php foreach ($data->examens as $examen) : ?>
                        <td><?= $eleve->notes[$examen->codeEvaluation]->note??0 ?></td>
                    <?php endforeach; ?>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<div class="fixed-action">
    <a class="btn btn-success circle" target="_blank" title="Imprimer" href="?p=pdf/note/releve/<?= $salleClasse->codeSalleClasse ?>/<?= $data->matiere->codeMatiere ?>">
        <i class="fa fa-file-pdf"></i>
    </a>
    <button id="excel" class="btn btn-success circle" title="Excel" >
        <i class="bi-file-earmark-excel"></i>
    </button>
    <button class="btn btn-primary circle" title="Paramétre" id="parametre">
        <i class="bi-gear"></i>
    </button>
</div>


<dialog class="dialog" id="parametreDialog">
    <div class="dialog-content">
        <div class="dialog-header">
            <h3 class="title text-center">Paraméttre</h3>
        </div>
        <div class="dialog-body">
            <form id="parametreForm">
                <div class="form-group">
                    <label for="matricule">Matricule</label>
                    <input type="checkbox" id="matricule" name="matricule" <?= $paramettre->matricule ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="numero">Numero</label>
                    <input type="checkbox" id="numero" name="numero" <?= $paramettre->numero ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="nom">Nom</label>
                    <input type="checkbox" id="nom" name="nom" <?= $paramettre->nom ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="isme">Nom en Arabe</label>
                    <input type="checkbox" id="isme" name="isme" <?= $paramettre->isme ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="nom_isme">Nom en Français et Arabe</label>
                    <input type="checkbox" id="nom_isme" name="nom_isme" <?= $paramettre->nom_isme ? 'checked' : '' ?>>
                </div>
                <div class="form-group">
                    <label for="sort">Tri</label>
                    <select id="sort" name="sort" class="form-control">
                        <option value="numeroInscrit" <?= $paramettre->sort == 'numero' ? 'selected' : '' ?>>Numero</option>
                        <option value="note" <?= $paramettre->sort == 'note' ? 'selected' : '' ?>>Note</option>
                        <option value="createdAt" <?= $paramettre->sort == 'createdAt' ? 'selected' : '' ?>>Crée le</option>
                        <option value="updatedAt" <?= $paramettre->sort == 'updatedAt' ? 'selected' : '' ?>>Modifiée le</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="order">Ordre</label>
                    <select id="order" name="order" class="form-control">
                    <option value="ASC" <?= $paramettre->order == 'ASC' ? 'selected' : '' ?>>Ascendant</option>
                    <option value="DESC" <?= $paramettre->order == 'DESC' ? 'selected' : '' ?>>Descendant</option>
                </select>
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-success" >Enregistrer</button>
            </div>
            </form>
        </div>
        <div class="dialog-footer">
            <div class="right my-10 mx-10">
                <button class="btn btn-danger" id="closeParametreDialog">Fermer</button>
            </div>
        </div>
    </div>
</dialog>

<script type="module" defer>
    import {fetchJson} from './js/src/fetch.js'
    document.getElementById('excel')?.addEventListener('click', function() {
        window.location.href = "?p=note/releveExcel/<?= $salleClasse->codeSalleClasse ?>/<?= $data->matiere->codeMatiere ?>";
    });

    document.getElementById('parametre')?.addEventListener('click', function() {
        document.getElementById('parametreDialog').showModal();
    });

    document.getElementById('closeParametreDialog')?.addEventListener('click', function() {
        document.getElementById('parametreDialog').close();
    });
    const form = document.getElementById('parametreForm');
    const dialogParametre = document.getElementById('parametreDialog');
    form?.addEventListener('submit',async function(e){
    e.preventDefault();
    const data = new FormData(form);
    const params = Object.fromEntries(data.entries());
    const dataString = (new URLSearchParams(params)).toString();
     await fetchJson('?p=api/note/changeParametre&' + dataString);

    dialogParametre.close();
    window.location.reload();
});
</script>