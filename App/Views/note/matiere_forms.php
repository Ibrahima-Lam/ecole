
<input type="hidden"id="codeSalleClasse" name="codeSalleClasse" value="<?= $codeSalleClasse ?>">
<input type="hidden"id="codeMatiere" name="codeMatiere" value="<?= $codeMatiere ?>">
<div class="space-between">
    <p><?=__("La classe")?>
    </p>
    <select class="field width-100px" id="changeSalleClasse">
        <?php foreach ($sallesClasse as $salleClasse): ?>
            <option value="<?= $salleClasse->codeSalleClasse ?>" <?= $salleClasse->codeSalleClasse == $codeSalleClasse ? 'selected' : '' ?>><?= $salleClasse->pseudoSalleClasse ?></option>
        <?php endforeach ?>
    </select> 
    <p>
        <?=__("La matiere")?></p>
    <select class="field width-100px" id="changeMatiere">
        <?php foreach ($matieres as $matiere): ?>
            <option value="<?= $matiere->codeMatiere ?>" <?= $matiere->codeMatiere == $codeMatiere ? 'selected' : '' ?>><?= $matiere->codeMatiere ?></option>
        <?php endforeach ?>
    </select>
</div>
<br>
<h3 class="text-center my-10">
    <?= __format("Formulaire des notes de la classe %s pour la matiere %s", $salleClasse->pseudoSalleClasse, $classeMatiere->codeMatiere) ?>
</h3>
<br>
<div class="table-container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th><?= __("Matricule") ?></th>
                <th><?= __("Numero") ?></th>
                <th><?= __("Nom") ?></th>
                <th></th>
                <?php foreach ($examens as $key => $examen): ?>
                    <th data-col="<?= $key ?>" class="examenCell">
                        <select id="" class="examenSelector field width-100px">
                            <option value="">--Selectionner--</option>
                            <?php
                            $selected = $examens[$key]->codeExamen;
                            ?>
                            <?php foreach ($examens as $key2 => $examen2): ?>
                                <option value="<?= $examen2->codeExamen ?>" <?= $selected == $examen2->codeExamen ? 'selected' : '' ?>><?= $examen2->codeEvaluation ?></option>
                            <?php endforeach ?>
                        </select>
                    </th>
                <?php endforeach ?>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <input type="checkbox" name="" id="checkAll">
                </td>
                <?php foreach ($examens as $key => $examen): ?>
                    <td data-col="<?= $key ?>">
                        <input type="checkbox" name="" class="checkboxCell">
                    </td>
                <?php endforeach ?>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($inscrits as $k => $inscrit): ?>
                <tr data-row="<?= $k ?>" class="inscritRow">
                    <td><?= $inscrit->matricule ?></td>
                    <td><?= $inscrit->numeroInscrit ?></td>
                    <td><?= $inscrit->nom ?></td>
                    <td>

                        <input type="checkbox" name="" class="checkRow">
                    </td>
                    <?php foreach ($examens as $key => $examen): ?>

                        <td data-col="<?= $key ?>" class="noteCell">
                            <form action="" class="noteform">
                                <?php
                                $value_db = ($data[$inscrit->matricule][$examen->codeExamen]['db_note']) ?? null;
                                $value_file = ($data[$inscrit->matricule][$examen->codeExamen]['file_note']) ?? null;
                                $value = $value_file ?? $value_db;
                                $id = ($data[$inscrit->matricule][$examen->codeExamen]['id']) ?? null;
                                ?>
                                <fieldset>

                                    <div class="center p5">
                                        <span class="examenCell"><?= $examen->codeEvaluation ?? '' ?></span>
                                        <input type="text" name="note" id="" class="field  width-50px" placeholder="Note"
                                            value="<?= $value ?>">
                                        <span class="dbNote"><?= $value_db ?? '' ?></span>
                                        <input type="hidden" name="matricule" value="<?= $inscrit->matricule ?>">
                                        <input type="hidden" name="edit" value="<?= $id ?>">
                                        <input type="hidden" name="id" value="<?= $id ?>">
                                        <input type="hidden" name="codeExamen" value="<?= $examen->codeExamen ?>">
                                        <input type="checkbox" name="check" class="checkCell" <?= $value_db === null ? 'checked' : '' ?>>
                                        <?php if ($value_db): ?>
                                            <i class="fa fa-check text-success"></i>
                                        <?php elseif ($value_db !=''): ?>
                                            <i class="fa fa-times text-warning"></i>
                                        <?php else: ?>
                                            <i class="fa fa-question text-warning"></i>
                                        <?php endif ?>
                                    </div>
                                </fieldset>
                            </form>
                        </td>
                    <?php endforeach ?>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<div class="center my-10">
    <button id="deleteAll" class="btn btn-danger"><?= __("Supprimer Toutes les cochés") ?>
    </button> <button id="saveAll" class="btn btn-success"><?= __("Enregistrer Toutes les cochés") ?>
    </button>
</div>


<script type="module">
    import { fetchAllJson } from "./js/src/fetch.js";
    // ---------------------------Enregistrer les formulaires--------------------------
    const checkboxCell = document.querySelectorAll('.checkboxCell')
    const checkRow = document.querySelectorAll('.checkRow')
    const inscritRows = document.querySelectorAll('.inscritRow')
    const forms = []
    for (let row = 0; row < inscritRows.length; row++) {
        let frms = inscritRows[row].querySelectorAll('.noteform')
        forms[row] = []
        for (let frm of frms) {
            forms[row].push(frm)
        }
    }
    // ---------------------------Gestion des copies collées de notes--------------------------
    for (let row = 0; row < inscritRows.length; row++) {
        let frms = inscritRows[row].querySelectorAll('.noteform')
        for (let col = 0; col < frms.length; col++) {
            let form = forms[row][col]
            let inputNote = form.note
            form.addEventListener('submit', function (e) {
                e.preventDefault()
               
            })
            inputNote.addEventListener('paste', function (e) {
                const allNotes = []
                e.preventDefault()
                let note = e.clipboardData.getData('text').trim().replaceAll(',', '.');
                let rows = note.split('\n')
                for (let index = 0; index < rows.length; index++) {
                    const element = rows[index];
                    let note = element.split('\t')
                    allNotes[row + index] = []
                    for (let index2 = 0; index2 < note.length; index2++) {
                        const element2 = note[index2];
                        allNotes[row + index][col + index2] = element2
                    }
                }
                // ---------------------------Remplir les notes--------------------------
                for (let index in allNotes) {
                    const element = allNotes[index];
                    for (let index2 in element) {
                        const element2 = element[index2];
                        let el = forms[index][index2]
                        if (el) {
                            el.note.value = element2
                            let span = el.querySelector('.dbNote')
                            let text=span.innerText
                            if (element2&&text!=element2) {
                                el.check.checked = true 
                                el.note.classList.add('field-animated')
                            }
                            setTimeout(() => {
                                el.note.classList.remove('field-animated')
                            }, 500);
                        }
                    }
                }
                checkOutAllNote()
            })
            inputNote.addEventListener('input', function (e) {
                checkOutAllNote()
            })
            inputNote.addEventListener('keyup', function (e) {
               if(e.key=="Enter"||e.key=="ArrowDown"){
                e.preventDefault()
                let frm = forms[row+1][col]
                if(frm){
                    frm.note.focus()
                }
               }
              else if(e.key=="ArrowUp"){
                e.preventDefault()
                let frm = forms[row-1][col]
                if(frm){
                    frm.note.focus()
                }
               }
            })
        }
    }
    //   ---------------------------coches une colonnes--------------------------
    for (let index = 0; index < checkboxCell.length; index++) {
        const element = checkboxCell[index];
        element.addEventListener('change', function (e) {
            for (let index2 = 0; index2 < inscritRows.length; index2++) {
                const element = inscritRows[index2];
                let elmt = forms[index2][index].check
                elmt.checked = e.target.checked
            }
        })
    }
    // ---------------------------Cocher une ligne---------------------------
   
    for (let index = 0; index < checkRow.length; index++) {
        const element = checkRow[index];
        element.addEventListener('change', function (e) {

            for (let index2 = 0; index2 < checkboxCell.length; index2++) {
                let elmt = forms[index][index2].check
                elmt.checked = e.target.checked
            }
        })
    }
    // ---------------------------Cocher Tous---------------------------
    const checkAll = document.getElementById('checkAll')
    checkAll.addEventListener('change', function (e) {
        for (let index = 0; index < checkboxCell.length; index++) {
            const element = checkboxCell[index];
            element.checked = e.target.checked
            for (let index2 = 0; index2 < checkRow.length; index2++) {
                checkRow[index2].checked = e.target.checked
                const element = forms[index2][index];
                element.check.checked = e.target.checked
            }
        }

    })
    // ---------------------------Eviter les doublons---------------------------
    const examenSelectors = document.querySelectorAll('.examenSelector')
    for (let index = 0; index < examenSelectors.length; index++) {
        const element = examenSelectors[index];
        element.addEventListener('change', function (e) {
            if (e.target.value == '') return
            e.preventDefault()
            for (const ex in examenSelectors) {
                if (examenSelectors[ex].value == e.target.value && examenSelectors[ex] != e.target) {
                    examenSelectors[ex].value = ''
                    for (const key in forms) {
                        let frm = forms[key][ex]
                        let elmt = frm.querySelector('.examenCell')
                        frm.codeExamen.value = ''
                        elmt.innerHTML = ''
                    }
                }
            }
            for (const key in forms) {
                let frm = forms[key][index]
                let elmt = frm.querySelector('.examenCell')
                frm.codeExamen.value = e.target.value
                elmt.innerHTML = e.target.options[e.target.selectedIndex].text
            }
            checkOutAllNote()
        })
    }
    // ---------------------------Enregistrer---------------------------
    const saveAll = document.querySelector('#saveAll')
    saveAll?.addEventListener('click', async function (e) {
        let urls = []
        for (let index = 0; index < forms.length; index++) {
            const element = forms[index];
            for (let index2 = 0; index2 < element.length; index2++) {
                const element2 = element[index2];
                if (element2.check.checked && element2.note.value != '') {
                    let formData = new FormData()
                    formData.append('matricule', element2.matricule.value)
                    formData.append('codeExamen', element2.codeExamen.value)
                    formData.append('note', element2.note.value)
                    formData.append('force', true)
                    let dataString = new URLSearchParams(formData).toString()
                    let url = element2.edit.value ? '?p=api/note/update/' + element2.edit.value + '&' + dataString : '?p=api/note/insert&' + dataString
                    urls.push(url)
                }
            }
        }
        let res = await fetchAllJson(urls, { show: true })
        window.location.reload()
    })
    // ---------------------------Supprimer---------------------------
    const deleteAll = document.querySelector('#deleteAll')
    deleteAll?.addEventListener('click', async function (e) {
        let urls = []
        for (let index = 0; index < forms.length; index++) {
            const element = forms[index];
            for (let index2 = 0; index2 < element.length; index2++) {
                const element2 = element[index2];
                if (element2.check.checked && element2.id.value) {
                    let url = '?p=api/note/delete/' + element2.id.value
                    urls.push(url)
                }
            }
        }
        let res = await fetchAllJson(urls, { show: true })
        window.location.reload()
    })

    function checkOutAllNote() {
        for (let index = 0; index < forms.length; index++) {
            const element = forms[index];
            for (let index2 = 0; index2 < element.length; index2++) {
                const form = element[index2];
                let inputNote = form.note
                let span = form.querySelector('.dbNote')
                let text = span.innerText
                span.classList.remove('text-danger')
                span.classList.remove('text-warning')
                if (text != '' && +text != +inputNote.value) {
                   
                   if(inputNote.value!='') span.classList.add('text-danger')
                  else span.classList.add('text-warning')
                } 
            }
        }
    }
    
    window.addEventListener('DOMContentLoaded', function () {
        checkOutAllNote()
    })

    document.querySelector('#changeSalleClasse')?.addEventListener('change', function (e) {
        if(!confirm("Voulez-vous vraiment changer la classe ?")) return;
        let url = '?p=note/matiere_forms/' + e.target.value + '/' + document.querySelector('#codeMatiere').value
        window.location.href = url
    })
    document.querySelector('#changeMatiere')?.addEventListener('change', function (e) {
        if(!confirm("Voulez-vous vraiment changer la matiere ?")) return;
        let url = '?p=note/matiere_forms/' + document.querySelector('#codeSalleClasse').value + '/' + e.target.value
        window.location.href = url
    })

    checkboxCell.forEach(cell=>{
        cell.addEventListener('change',function(e){
            updateCheckAll()
        })
    })
    checkRow.forEach(row=>{
        row.addEventListener('change',function(e){
            updateCheckAll()
        })
    })
    const checks=document.querySelectorAll('.checkCell')
    checks.forEach(check=>{
        check.addEventListener('change',function(e){
            updateCheckAll()
        })
    })

    function updateCheckAll() {
  let countCheckedRow=0
  for(let i in forms){
    let countCheckedCell=0
    for(let j in forms[i]){
      if(forms[i][j].check.checked) countCheckedCell++
    }
    if(countCheckedCell==forms[i].length){
        checkRow[i].checked=true
        countCheckedRow++
    }else checkRow[i].checked=false
  }
let countCheckedCell=0
  for(let j in checkboxCell ){
    let countCheckedRow=0
    for(let i in forms){
      if(forms[i][j].check.checked) countCheckedRow++
    }
    if(countCheckedRow==forms.length){
        checkboxCell[j].checked=true
        countCheckedCell++
    }else checkboxCell[j].checked=false
  }
  checkAll.checked=countCheckedRow==forms.length
}

</script>