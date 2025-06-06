<?=$subsidebar??'' ?>

<h2 class="title text-center my-10"><?=__("Profil du Professeur")?>
</h2>
<div class="center">
        <div class="profile">

            <?php if(file_exists("profiles/professeur/".($prof->imagePathProfesseur))&&$prof->imagePathProfesseur):?>
                <img src="profiles/professeur/<?= $prof->imagePathProfesseur ?>" alt="<?= $prof->nomProfesseur ?>">
            <?php else:?>
                <i class="fas fa-user" style="font-size: 8rem; color: gray;"></i>
            <?php endif?>
           
            <h3><?= $prof->nomProfesseur ?></h3>
            <h3 dir="rtl"><?= $prof->ismeProfesseur ?></h3>
            <?php if($_admin):?>
              <form id="editImageForm" method="post" action="?p=professeur/traitementImage" enctype="multipart/form-data">
                <input type="hidden" name="matricule" value="<?= $prof->matriculeProfesseur ?>">
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
                <th data-sort="matriculeProfesseur" class="sortable"><?=__("Matricule")?></th>
                <th data-sort="nomProfesseur" class="sortable"><?=__("Nom")?></th>
                <th data-sort="ismeProfesseur" class="sortable"><?=__("Nom en arabe")?></th>
                <th data-sort="statutProfesseur" class="sortable"><?=__("Code Specialite")?></th>
                <th data-sort="codeSpecialite" class="sortable"><?=__("Cycle")?></th>
                <th data-sort="statutProfesseur" class="sortable"><?=__("statut")?></th>
                <th data-sort="dateDebut" class="sortable"><?=__("date de début")?></th>
                <th data-sort="dateArrivee" class="sortable"><?=__("date d'arrivée")?></th>
                <th><?=__("Actions")?></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                    <td><?=$prof->matriculeProfesseur ?></td>
                    <td><?=$prof->nomProfesseur ?></td>
                    <td><?=$prof->ismeProfesseur ?></td>
                    <td><?=$prof->codeSpecialite ?></td>
                    <td><?=__format($prof->cycleProfesseur==1?'%sère Cycle':'%sème Cycle',$prof->cycleProfesseur) ?></td>
                    <td><?=$prof->statutProfesseur ?></td>
                   
                    <td><?=$prof->dateDebutProfesseur ?></td>
                    <td><?=$prof->dateArriveeProfesseur ?></td>
                    <td>
                        <?php if($_admin):?>
                            <div class="center">
                                <button type="button" id="edit" data-matricule="<?=$prof->matriculeProfesseur ?>" class="btn"><i class="fa fa-edit text-primary"></i></button>
                            </div>
                        <?php endif?>
                    </td>

            </tr>
           
        </tbody>
    </table>
</div>
<br>
<h3 class="title text-center"><?=__("Contact")?></h3>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th><?=__("Matricule")?></th>
                <th><?=__("Tel")?></th>
                <th><?=__("Email")?></th>
                <th><?=__("Adresse")?></th>
                <th><?=__("NNI")?></th>
            </tr>
           
        </thead>
        <tbody>
            <tr>
            <td><?=$prof->matriculeProfesseur ?></td>
            <td><?=$prof->telProfesseur ?></td>
                    <td><?=$prof->emailProfesseur ?></td>
                    <td><?=$prof->adresseProfesseur ?></td>
                    <td><?=$prof->nniProfesseur ?></td>
            </tr>
        </tbody>
    </table>
</div>
<br>
<h3 class="title text-center"><?=__("Matieres")?></h3>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th><?=__("Matricule")?></th>
                <th><?=__("Code Matiere")?></th>
                <th><?=__("Matiere")?></th>
                <th><?=__("Actions")?></th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($matieres as $matiere):?>
            <tr>
                <td><?=$matiere->matriculeProfesseur ?></td>
                <td><?=$matiere->codeMatiere ?></td>
                <td><?=$matiere->nomMatiere ?></td>
                <td>
                   
                </td>
            </tr>
        <?php endforeach?>
        </tbody>
    </table>
</div>



<dialog id="dialog" class="dialog">
    <div class="dialod-head">
        <h3 class="text-center title"><?=__("Formulaire")?></h3>
    </div>
    <div class="dialog-body">
        <form class="form" action="?p=professeur/traitement" method="post">
            <input type="hidden" name="edit">
            <div class="form-group">
                <label for="matricule"><?=__("Matricule")?></label>
                <input type="text" class="form-control" id="matricule" name="matricule" placeholder="Entrer le matricule"  required>
            </div>
            <div class="form-group">
                <label for="nom"><?=__("Nom et Prénom")?></label>
                <input type="text" class="form-control" id="nom" name="nom" placeholder="Entrer le nom et prénom" required>
            </div>
            <div class="form-group" lang="ar">
                <!-- Nom en Arabe -->
                <label for="isme">
                    <span>Nom en Arabe</span> <span>الاسم</span>
                </label>
                <input type="text" dir="rtl" class="form-control" id="isme" name="isme" placeholder="الاسم Nom en Arabe">
            </div>
            <div class="form-group">
                <label for="sexe"><?=__("Sexe")?></label>
                <div class="form-radio">
                    <input type="radio" id="sexeM" name="sexe" value="M" required>
                    <label for="sexeM"><?=__("Masculin")?></label>
                    <input type="radio" id="sexeF" name="sexe" value="F" required>
                    <label for="sexeF"><?=__("Feminin")?></label>
                </div>
            </div>
            <div class="form-group">
                <label for="nni"><?=__("NNI")?></label>
                <input type="text" class="form-control" id="nni"  name="nni" placeholder="Entrer le NNI" required>
            </div>
            <div class="form-group">
                <label for="adresse"><?=__("Adresse")?></label>
                <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Entrer l'adresse" >
            </div>
          
            <div class="form-group">
                <label for="tel"><?=__("Tel")?></label>
                <input type="text" class="form-control" id="tel" name="tel" placeholder="Entrer le tel">
            </div>
            <div class="form-group">
                <label for="email"><?=__("Email")?></label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Entrer l'email">
            </div>
            <div class="form-group">
                <label for="cycle"><?=__("Cycle")?></label>
                <select name="cycle" id="cycle">
                    <option value="1" selected><?=__format("%sère Cycle",1)?></option>
                    <option value="2"><?=__format("%sème Cycle",2)?></option>
                </select>
            </div>
            <div class="form-group">
                <label for="dateDebut"><?=__("Date de début")?></label>
                <input type="date" class="form-control" id="dateDebut" name="dateDebut" value='2000-01-01' placeholder="Entrer la date de début" required>
            </div>
            <div class="form-group">
                <label for="dateArrivee"><?=__("Date d'arrivée")?></label>
                <input type="date" class="form-control" id="dateArrivee" name="dateArrivee" value='2000-01-01' placeholder="Entrer la date d'arrivée" required>
            </div>
            <div class="form-group">
                <label for="statut"><?=__("Statut")?></label>
               <select name="statut" id="statut">
                <option value="actif" selected><?=__("Actif")?></option>
                <option value="inactif"><?=__("Inactif")?></option>
                <option value="malade"><?=__("Malade")?></option>
                <option value="suspendu"><?=__("Suspendu")?></option>
                <option value="exclu"><?=__("Exclu")?></option>
                <option value="abandonne"><?=__("Abandonne")?></option>
                <option value="autre"><?=__("Autre")?></option>
               </select>
            </div>
            <div class="form-group">
                <label for="codeSpecialite"><?=__("Code Specialite")?></label>
                <select name="codeSpecialite" id="codeSpecialite">
                    <?php foreach($specialites as $specialite):?>
                        <option value="<?=$specialite->codeSpecialite?>"><?=$specialite->nomSpecialite?></option>
                    <?php endforeach?>
                </select>
            </div>
           
           
            <div class="form-action">
                <button type="reset" class="btn btn-default"><?=__("Annuler")?></button>
                <button type="submit" class="btn btn-primary"><?=__("Enregistrer")?></button>
            </div>

        </form>
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close"><?=__("Fermer")?></button>
    </div>
</dialog>

<script type="module" defer>
    import ProfesseurForm from "./js/professeur/professeur_form.js";
    import { fetchJson } from "./js/src/fetch.js";
    document.querySelector("#edit").addEventListener("click", () => {
        let dialog = new ProfesseurForm(document.querySelector(".dialog"), "<?=$prof->matriculeProfesseur ?>");
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