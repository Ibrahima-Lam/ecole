<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Classe</th>
                <th>Matiere</th>
                <th>Evaluation</th>
                <th>Date</th>
                <th>Heure de début</th>
                <th>Heure de fin</th>   
                <th>Statut</th>   
            </tr>
        </thead>
        <tbody>
            <?php
            foreach ($matieres as $matiere):?>
                <tr>
                   <form action="">
                    <td>
                        <input type="text" class="field" name="codeSalleClasse" value="<?=$salleClasse->codeSalleClasse?>" readonly>
                    </td>
                    <td>
                        <input type="text" class="field" name="codeClasseMatiere" value="<?=$matiere->codeClasseMatiere?>" readonly>
                    </td>
                    <td>
                        <select class="evaluation field" name="codeEvaluation" id="">
                            <option value="">Choisir</option>
                            <?php foreach ($evaluations as $evaluation):?>
                                <option value="<?=$evaluation->codeEvaluation?>"><?=$evaluation->nomEvaluation?></option>
                            <?php endforeach?>
                        </select>
                    </td>
                    <td><input class="field" type="date" name="dateExamen" id=""></td>
                    <td><input class="field" type="time" name="heureDebutExamen" id=""></td>
                    <td><input class="field" type="time" name="heureFinExamen" id=""></td>
                    <td>
                        <select name="statutExamen" class="statut field" id="">
                            <option value="1" selected>Ouvert</option>
                            <option value="0">Fermer</option>
                        </select>
                    </td>
                    
                   </form>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<div class="center">
    <button id="save" class="btn btn-success">Enregistrer</button>
</div>

<script type="module" defer>
    import{fetchJson} from "./js/src/fetch.js";

const evaluations = document.querySelectorAll('.evaluation');
const statuts = document.querySelectorAll('.statut');

evaluations.forEach(evaluation => {
    evaluation?.addEventListener('change', () => {
        evaluations.forEach(e => {
            e.value=evaluation.value;
        })
    })
})

statuts.forEach(statut => {
    statut?.addEventListener('change', () => {
        statuts.forEach(s => {
            s.value=statut.value;
        })
    })
})

const save = document.getElementById('save');
const forms = document.querySelectorAll('form');

save?.addEventListener('click', async () => {
    let count=0;
    for(const form of forms){
        const data = new FormData(form);
        const dataString = new URLSearchParams(data).toString();
        await fetchJson('?p=api/examen/insert&'+ dataString).then(data => {
            if(data.response === "ok"){
               console.log(data.message);
               count++;
            }
        }).catch(error => {
            console.log(error);
            
        });
    }
    if(count >0){
        window.history.back();
    }
    alert(count);
})

</script>
