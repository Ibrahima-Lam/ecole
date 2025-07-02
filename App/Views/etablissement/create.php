<form action="?p=etablissement/store" method="post" class="form">
    <div class="form-group">
        <label for="nomEtablissement"><?=__("Nom de l'établissement")?>
        </label>
        <input type="text" class="form-control" id="nomEtablissement" name="nomEtablissement" placeholder="Nom de l'établissement" value="<?= $etablissement->getNomEtablissement() ?>">
    </div>
    <div class="form-group">
        <label for="ismeEtablissement"><?=__("Isme de l'établissement")?>
        </label>
        <input type="text" class="form-control" id="ismeEtablissement" name="ismeEtablissement" placeholder="Isme de l'établissement" value="<?= $etablissement->getIsmeEtablissement() ?>">
    </div>
    <div class="form-group">
        <label for="adresseEtablissement"><?=__("Adresse de l'établissement")?>
        </label>
        <input type="text" class="form-control" id="adresseEtablissement" name="adresseEtablissement" placeholder="Adresse de l'établissement" value="<?= $etablissement->getAdresseEtablissement() ?>">
    </div>
    <div class="form-group">
        <label for="villeEtablissement"><?=__("Ville de l'établissement")?>
        </label>
        <input type="text" class="form-control" id="villeEtablissement" name="villeEtablissement" placeholder="Ville de l'établissement" value="<?= $etablissement->getVilleEtablissement() ?>">
    </div>
    <div class="form-group">
        <label for="telEtablissement"><?=__("Téléphone de l'établissement")?>
        </label>
        <input type="text" class="form-control" id="telEtablissement" name="telEtablissement" placeholder="Téléphone de l'établissement" value="<?= $etablissement->getTelEtablissement() ?>">
    </div>
    <div class="form-group">
        <label for="emailEtablissement"><?=__("Email de l'établissement")?>
        </label>
        <input type="email" class="form-control" id="emailEtablissement" name="emailEtablissement" placeholder="Email de l'établissement" value="<?= $etablissement->getEmailEtablissement() ?>">
    </div>
    <div class="form-group">
        <input type="hidden" class="form-control" id="imagePathEtablissement" name="imagePathEtablissement">
    </div>
    <div class="form-action">
        <button type="reset" class="btn btn-default"><?=__("Annuler")?></button>
        <button type="submit" class="btn btn-primary"><?=__("Enregistrer")?></button>
    </div>
</form>