<h2 class="title text-center"><?=__("Les Professeurs")?></h2>

<div class="space-between my-10">
<select id="statutfilter" class="field">
    <option value=""><?=__("Tous les statuts")?>
    </option>
                <option value="actif"><?=__("Actif")?></option>
                <option value="inactif"><?=__("Inactif")?></option>
                <option value="malade"><?=__("Malade")?></option>
                <option value="suspendu"><?=__("Suspendu")?></option>
                <option value="exclu"><?=__("Exclu")?></option>
                <option value="abandonne"><?=__("Abandonne")?></option>
                <option value="autre"><?=__("Autre")?></option>
               </select>
    <input type="search" class="field" id="srch" placeholder="<?=__("Rechercher un professeur")?>" />
    <select id="cyclefilter" class="field">
        <option value=""><?=__("Tous les cycles")?>
        </option>
                    <option value="1"><?=__format("%sère Cycle",1)?></option>
                    <option value="2"><?=__format("%sème Cycle",2)?></option>
                </select>
</div>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th></th>
                <th data-sort="matriculeProfesseur" class="sortable"><?=__("Matricule")?></th>
                <th data-sort="nomProfesseur" class="sortable"><?=__("Nom")?></th>
                <th data-sort="ismeProfesseur" class="sortable"><?=__("Nom en arabe")?></th>
                <th data-sort="codeSpecialite" class="sortable"><?=__("Cycle")?></th>
                <th data-sort="statutProfesseur" class="sortable"><?=__("statut")?></th>
                <th data-sort="telProfesseur" class="sortable"><?=__("Tel")?></th>
                <th data-sort="emailProfesseur" class="sortable"><?=__("Email")?></th>
                <th data-sort="nniProfesseur" class="sortable"><?=__("NNI")?></th>
                <th><?=__("Actions")?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($profs as $prof):?>
                <tr data-matricule="<?=$prof->matriculeProfesseur ?>">
                <td>
                        <div class="center img-circle">
                        <?php if(file_exists("profiles/professeur/".$prof->imagePathProfesseur)&&$prof->imagePathProfesseur): ?>
                        <img src="profiles/professeur/<?= $prof->imagePathProfesseur ?>" >
                        <?php else: ?>
                         <div class="center">
                            <i class="fa fa-user"></i>
                         </div>
                         <?php endif ?>
                        </div>
                    </td>
                    <td><?=$prof->matriculeProfesseur ?></td>
                    <td><?=$prof->nomProfesseur ?></td>
                    <td><?=$prof->ismeProfesseur ?></td>
                    <td><?=__format($prof->cycleProfesseur==1?'%sère Cycle':'%sème Cycle',$prof->cycleProfesseur) ?></td>
                    <td><?=$prof->statutProfesseur ?></td>
                    <td><?=$prof->telProfesseur ?></td>
                    <td><?=$prof->emailProfesseur ?></td>
                    <td><?=$prof->nniProfesseur ?></td>
                    <td>
                        <?php if($_admin):?>
                            <div class="center">
                                <button type="button" data-matricule="<?=$prof->matriculeProfesseur ?>" class="btn edit"><i class="fa fa-edit text-primary"></i></button>
                                <button type="button" data-matricule="<?=$prof->matriculeProfesseur ?>" class="btn delete"><i class="fa fa-trash text-danger"></i></button>
                            </div>
                        <?php endif?>
                    </td>

                </tr>
            <?php endforeach?>
        </tbody>
    </table>
</div>

<div class="fixed-action">
    <?php if($_admin):?>
    <button type="button" id="add" class="btn btn-primary circle"><i class="fa fa-plus"></i></button>
    <?php endif?>
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
                    <span><?=__("Nom en Arabe")?></span> <span>الاسم</span>
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
        <button class="btn btn-danger" id="close"><?=__("Fermer")?>
        </button>
    </div>
</dialog>

<script src="./js/professeur/liste.js" type="module" defer></script>