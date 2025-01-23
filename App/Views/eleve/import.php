<form action="?p=eleve/traitementExcel" method="post" class="form" enctype="multipart/form-data">
    <div class="form-group">
        <label for="file">Fichier excel</label>
        <input type="file" name="fichier" id="file" placeholder="Fichier excel" accept=".xlsx">
    </div>
    <div class="form-action">
        <button type="reset" class="btn btn-danger">Effacer</button>
        <button type="submit" name="import" class="btn btn-primary">Importer</button>
    </div>
</form>