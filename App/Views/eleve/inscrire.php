
<input type="hidden" id="cl">
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th><input type="checkbox" name="checkAll" id="checkAll" checked></th>
                <th>Matricule</th>
                <th>Nom</th>
                <th>Classe</th>
                <th>Numero</th>
                <th>Date</th>
                <th>Type</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $eleve): ?>
                <tr>
                    <form action="">
                        <input type="hidden" name="matricule" value="<?= $eleve['matricule']; ?>">
                    <td>
                    <?php if($eleve['statut']):?>
                        <i class="bi bi-check2-all text-success"></i>
                    <?php else:?>
                            <input type="checkbox" class="check" name="check" id="inscrit" checked value="true">
                    <?php endif?> 
                </td>
                    <td><?php echo $eleve['matricule'] ?? null; ?></td>
                    <td><?php echo $eleve['nom'] ?? null; ?></td>
                    <td><select name="codeSalleClasse" id="" class="classe field">
                            <?php foreach ($classes as $classe): ?>
                                <option value="<?= $classe->codeSalleClasse; ?>">
                                    <?= $classe->codeClasse . $classe->indiceSalleClasse; ?></option>
                            <?php endforeach ?>
                        </select></td>
                    <td>
                        <input class="numero field" type="number" name="numeroInscrit" id="numero">
                    </td>
                    <td>
                        <input class="field" type="date" name="dateInscription" id="date" value="<?= date('Y-m-d'); ?>">
                    </td>
                    <td>
                        <select name="typeInscrit" id="typeInscrit" class="field">
                            <option value="passant">Passant</option>
                            <option value="redoublant">Redoublant</option>
                            <option value="entrant">Entrant</option>
                            <option value="nouveau-passant">Nouveau passant</option>
                            <option value="nouveau-redoublant">Nouveau redoublant</option>
                        </select>
                    </td>
                    </form>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<?php if(sizeof($data)>0):?>
    <div class="center my-10">
    <button type="submit" id="inscrire" class="btn btn-primary">Inscrire</button>
    </div>
<?php endif?>
<script type="module" defer>
    import {fetchJson} from './js/src/fetch.js'

    const inscrire = document.getElementById('inscrire');
    const classes = document.querySelectorAll('.classe');
    const cl=document.getElementById('cl');
    classes.forEach(classe => {
        classe?.addEventListener('change', function () {
           classes.forEach(c => {
            c.value=this.value;
           }) 
           cl.value=this.value;
           changeNumber(this.value);
        })
    })
    const numeros = document.querySelectorAll('.numero');
    async function changeNumber(classe) {
        let last =await fetchJson('?p=api/inscrit/last/' + classe)
        let key=last?.numeroInscrit??0;
        numeros.forEach((n ,k)=> {
            n.value = key+k+1;
        })
    }
    window?.addEventListener('load',async function () {
        changeNumber(cl.value)
    })
    const forms = document.querySelectorAll('form');
    inscrire?.addEventListener('click',async function () {
       for(let form of forms) {
        if(!form?.check?.checked){
            console.log('not checked');
            continue;
        }
        const formData = new FormData(form);
        const dataString = new URLSearchParams(formData).toString();
         await  fetchJson('?p=api/inscrit/insert&' + dataString)
       }
     window.location.reload()
    })
</script>