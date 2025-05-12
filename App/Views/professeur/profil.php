<?=$subsidebar??'' ?>

<h3 class="title text-center my-10">Profil du Professeur</h3>

<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th data-sort="matriculeProfesseur" class="sortable">Matricule</th>
                <th data-sort="nomProfesseur" class="sortable">Nom</th>
                <th data-sort="ismeProfesseur" class="sortable">Nom en arabe</th>
                <th data-sort="statutProfesseur" class="sortable">Code Specialite</th>
                <th data-sort="codeSpecialite" class="sortable">specialite</th>
                <th data-sort="statutProfesseur" class="sortable">statut</th>
                <th data-sort="dateDebut" class="sortable">date de début</th>
                <th data-sort="dateArrivee" class="sortable">date d'arrivée</th>
                <th>action</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                    <td><?=$prof->matriculeProfesseur ?></td>
                    <td><?=$prof->nomProfesseur ?></td>
                    <td><?=$prof->ismeProfesseur ?></td>
                    <td><?=$prof->codeSpecialite ?></td>
                    <td><?=$prof->nomSpecialite ?></td>
                    <td><?=$prof->statutProfesseur ?></td>
                   
                    <td><?=$prof->dateDebutProfesseur ?></td>
                    <td><?=$prof->dateArriveeProfesseur ?></td>
                    <td>
                        <?php if($_admin):?>
                            <div class="center">
                                <button type="button" id="edit" data-matricule="<?=$prof->matriculeProfesseur ?>" class="btn"><i class="bi bi-pencil text-primary"></i></button>
                            </div>
                        <?php endif?>
                    </td>

            </tr>
           
        </tbody>
    </table>
</div>
<br>
<h3 class="title text-center">Contact</h3>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Matricule</th>
                <th>Tel</th>
                <th>Email</th>
                <th>Adresse</th>
                <th>NNI</th>
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
<h3 class="title text-center">Matieres</h3>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Matricule</th>
                <th>Code Matiere</th>
                <th>Matiere</th>
                <th>action</th>
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
        <h3 class="text-center title">Formulaire</h3>
    </div>
    <div class="dialog-body">
        <form class="form" action="?p=professeur/traitement" method="post">
            <input type="hidden" name="edit">
            <div class="form-group">
                <label for="matricule">Matricule</label>
                <input type="text" class="form-control" id="matricule" name="matricule" placeholder="Entrer le matricule"  required>
            </div>
            <div class="form-group">
                <label for="nom">Nom et Prénom</label>
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
                <label for="sexe">Sexe</label>
                <div class="form-radio">
                    <input type="radio" id="sexeM" name="sexe" value="M" required>
                    <label for="sexeM">Masculin</label>
                    <input type="radio" id="sexeF" name="sexe" value="F" required>
                    <label for="sexeF">Feminin</label>
                </div>
            </div>
            <div class="form-group">
                <label for="nni">NNI</label>
                <input type="text" class="form-control" id="nni"  name="nni" placeholder="Entrer le NNI" required>
            </div>
            <div class="form-group">
                <label for="adresse">Adresse</label>
                <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Entrer l'adresse" >
            </div>
          
            <div class="form-group">
                <label for="tel">Tel</label>
                <input type="text" class="form-control" id="tel" name="tel" placeholder="Entrer le tel">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Entrer l'email">
            </div>
            <div class="form-group">
                <label for="dateDebut">Date de début</label>
                <input type="date" class="form-control" id="dateDebut" name="dateDebut" value='2000-01-01' placeholder="Entrer la date de début" required>
            </div>
            <div class="form-group">
                <label for="dateArrivee">Date d'arrivée</label>
                <input type="date" class="form-control" id="dateArrivee" name="dateArrivee" value='2000-01-01' placeholder="Entrer la date d'arrivée" required>
            </div>
            <div class="form-group">
                <label for="statut">Statut</label>
               <select name="statut" id="statut">
                <option value="actif" selected>Actif</option>
                <option value="inactif">Inactif</option>
                <option value="malade">Malade</option>
                <option value="suspendu">Suspendu</option>
                <option value="exclu">Exclu</option>
                <option value="abandonne">Abandonne</option>
                <option value="autre">Autre</option>
               </select>
            </div>
            <div class="form-group">
                <label for="codeSpecialite">Code Specialite</label>
                <select name="codeSpecialite" id="codeSpecialite">
                    <?php foreach($specialites as $specialite):?>
                        <option value="<?=$specialite->codeSpecialite?>"><?=$specialite->nomSpecialite?></option>
                    <?php endforeach?>
                </select>
            </div>
           
            <div class="form-action">
                <button type="reset" class="btn btn-default">Annuler</button>
                <button type="submit" class="btn btn-primary">Enregistrer</button>
            </div>

        </form>
    </div>
    <div class="dialog-foot">
        <button class="btn btn-danger" id="close">Fermer</button>
    </div>
</dialog>

<script type="module" defer>
    import ProfesseurForm from "./js/professeur/professeur_form.js";
    document.querySelector("#edit").addEventListener("click", () => {
        let dialog = new ProfesseurForm(document.querySelector(".dialog"), "<?=$prof->matriculeProfesseur ?>");
        dialog.setEditable('true');
        dialog.show();
    });
    
</script>