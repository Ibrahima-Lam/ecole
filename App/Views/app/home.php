<h1 class="title text-center"><?=__("Bienvenue") ?></h1>
<?php
$salles = $salles??[];
?>
<form id="srchform">
    <div class="center my-10">
       <input type="search" id="srchfield" class="field width-300" placeholder="<?=__("Entrez le matricule ou le NNI") ?>">
       <button class="btn btn-primary" id="srchbtn"><?=__("Rechercher") ?></button>
    </div>
</form>
<div class="result" id="result">

</div>
<h3 class="title text-center"><?=__("Salles de Classes") ?></h3>
<div class="grid">
<?php foreach($salles as $salle):?>
    <div class="card cls" data-code="<?= $salle->codeSalleClasse ?>">
        <div class="card-header">
            <h3><?= $salle->codeClasse.$salle->indiceSalleClasse ?></h3>
        </div>
        <div class="card-body">
            
            <p><?= $salle->nomClasse ?></p>
            <p><?= $salle->nomSerie ?></p>
            <p><?= $salle->nomSalle ?></p>
            
        </div>
    </div>
<?php endforeach?>
</div>

<script type="module" defer>
    import {fetchJson,fetchText} from './js/src/fetch.js'
    const cls=document.querySelectorAll('.cls')
    cls.forEach(cl=>{
        cl?.addEventListener('click',()=>{
            window.location.assign('?p=salleclasse/profil/'+cl.getAttribute('data-code'))
        })
    })

    document.getElementById('srchform')?.addEventListener('submit',async(e)=>{
        e.preventDefault()
        const search = document.getElementById('srchfield').value
        let url = `?p=api/inscrit/eleve/${search}`
        let url2 = `?p=api/eleve/matricule/${search}`
        
       
        let data = await fetchJson(url)
        if (!data.matricule) {
            data = await fetchJson(url2)
        }
        if (!data.matricule) {
            document.getElementById('result').innerHTML = `
                <div class="card">
                    <div class="card-header">
                        <h3><?=__("Eleve non trouvé") ?></h3>
                    </div>
                </div>
            `
            return
        }

        const result = document.getElementById('result')
        result.innerHTML = `
            <div class="card">
                <div class="card-header">
                    <h3>${data.nom}</h3>
                </div>
                <div class="card-body">
                    <p class="my-5"><b>Matricule :</b> ${data.matricule}</p>
                    <p class="my-5"><b>Adresse :</b> ${data.adresse}</p>
                    <p class="my-5"><b>NNI :</b> ${data.nni}</p>
                    <p class="my-5"><b>Classe :</b> ${data?.codeClasse ?? 'N/A'}</p>
                </div>
            </div>
        `
        result?.addEventListener('click',()=>{
            window.location.assign('?p=eleve/profil/'+data.matricule)
        })
   })
    
    
</script>
           
            