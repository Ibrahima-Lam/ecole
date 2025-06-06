<h2 class="title text-center">Liste des inscrits</h2>
<table class="table table-striped">
    <thead>
        <tr>
            <th></th>
            <th>Matricule</th>
            <th>Numero inscrit</th>
            <th>Nom</th>
            <th>Code classe</th>
            <th>Type inscrit</th>
            <th>Date inscription</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($inscrits as $inscrit): ?>
            <tr class="inscritRow" data-matricule="<?= $inscrit->matricule ?>">
                <td>
                    <div class="center img-circle">
                    <?php if(file_exists("profiles/eleve/".$inscrit->imagePath)&&$inscrit->imagePath): ?>
                    <img src="profiles/eleve/<?= $inscrit->imagePath ?>" >
                    <?php else: ?>
                     <div class="center">
                        <i class="fa fa-user"></i>
                     </div>
                     <?php endif ?>
                    </div>
                </td>
                <td><?= $inscrit->matricule ?></td>
                <td><?= $inscrit->numeroInscrit ?></td>
                <td><?= $inscrit->nom ?><br><span><?= $inscrit->isme ?></span></td>
                <td><?= $inscrit->codeClasse . $inscrit->indiceSalleClasse ?></td>
                <td><?= $inscrit->typeInscrit ?></td>
                <td><?= $inscrit->dateInscription ?></td>
                <td>
                    <?php if ($_admin): ?>
                        <button title="Editer l'inscription" data-id="<?= $inscrit->idInscrit ?>" data-matricule="<?= $inscrit->matricule ?>" class="btn btn-primary inscrire"><i class="fa fa-edit"></i></button>
                    <?php endif ?>
                </td>   
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<div class="inscrit-form"></div>
<?php if ($_admin): ?>

    <div class="fixed-action">
        <a href="?p=inscrit/form" class="btn btn-success circle"><i class="fa fa-plus"></i> </a>
    </div>
<?php endif ?>

<script type="module">
    import FormModule from './js/inscrit/formModule.js';
    const inscritRows = document.querySelectorAll('.inscritRow');
    inscritRows.forEach(row => {
        row?.addEventListener('click', function () {
            window.location.href = `?p=eleve/profil/${this.dataset.matricule}`;
        });
    });

   document.querySelectorAll('.inscrire')?.forEach(button => {
   
        const form = new FormModule(document.querySelector('.inscrit-form'), button, {
        matricule:button.dataset.matricule,
        idInscrit:button.dataset.id
    });
    
    form.show()
});
</script>

