<?php
$absenceClasse ??= null;
?>

<h2 class="title text-center my-10"><?=__("Détails de l'absence")?></h2>

<?php if ($absenceClasse): ?>
    <div class="table-container">
        <table class="table table-striped my-10">
            <thead>
                <tr>
                    <th><?=__("Classe")?></th>
                    <th><?=__("Horaire")?></th>
                    <th><?=__("Date")?></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><?= $absenceClasse->codeSalleClasse ?></td>
                    <td><?= $absenceClasse->codeHoraire ?></td>
                    <td><?= $absenceClasse->dateAbsenceClasse ?></td>
                </tr>
            </tbody>
        </table>
    </div>
    <br>
   <fieldset class="my-10">
<legend><?=__("Les Absents")?></legend>
     <p class="center my-10">
                 <?php
                 if (!empty($absenceClasse->absents)) {
                     foreach ($absenceClasse->absents as $absent) {
                         echo "<button class='btn btn-default mx-5 remove-absent' data-id=\"" . $absenceClasse->idAbsenceClasse . "\" data-student-id=\"" . htmlspecialchars(trim($absent)) . "\">" . htmlspecialchars(trim($absent)) . "</button>";
                     }
                 } else {
                     echo __("Aucun");
                 }
                 ?>
             </p>
           <?php if($_admin):?>
              <form id="add-absent-form" class="center my-10">
                  <select name="studentId" id="studentId" class="field" required>
                      <option value=""><?=__("Selectionner un eleve")?></option>
                      <?php foreach ($eleves as $eleve): ?>
                          <option value="<?= $eleve->numeroInscrit ?>"> <?= htmlspecialchars($eleve->numeroInscrit) ?> - <?= htmlspecialchars($eleve->nom) ?></option>
                      <?php endforeach; ?>
                  </select>
                  <button type="submit" class="btn btn-primary mx-5"><?=__("Ajouter")?></button>
              </form>
           <?php endif?>
   </fieldset>
   <br>
    <fieldset class="my-10">
    <legend><?=__("Les Abscents Justifies")?></legend>
    <p class="center my-10">
                <?php
                if (!empty($absenceClasse->justifies)) {
                    foreach ($absenceClasse->justifies as $justifie) {
                        echo "<button class='btn btn-success mx-5 remove-justified' data-id=\"" . $absenceClasse->idAbsenceClasse . "\" data-student-id=\"" . htmlspecialchars(trim($justifie)) . "\">" . htmlspecialchars(trim($justifie)) . "</button>";
                    }
                } else {
                    echo __("Aucun");
                }
                ?>
            </p>
           <?php if($_admin):?>
             <form id="add-justified-form" class="center my-10">
                 <select name="studentId" id="justifiedStudentId" class="field" required>
                     <option value=""><?=__("Selectionner un eleve")?></option>
                     <?php foreach ($eleves as $eleve): ?>
                         <option value="<?= $eleve->numeroInscrit ?>"> <?= htmlspecialchars($eleve->numeroInscrit) ?> - <?= htmlspecialchars($eleve->nom) ?></option>
 
                     <?php endforeach; ?>
                 </select>
                 <button type="submit" class="btn btn-primary mx-5"><?=__("Ajouter Justifié")?></button>
             </form>
           <?php endif?>
    </fieldset>
    <br>
    <div class="fixed-action">
        <?php if($_admin):?>
        <a href="?p=absenceClasse/form&id=<?=$absenceClasse->idAbsenceClasse?>" class="btn btn-primary circle add" id="add"><i class="fa fa-edit"></i></a>
        <?php endif?>
    </div>
    </fieldset>
<?php else: ?>
    <p><?=__("Absence non trouvée.")?></p>
<?php endif; ?>

<script>
    document.querySelectorAll('.remove-absent').forEach(button => {
        button.addEventListener('click', function() {
            const id = this.dataset.id;
            const studentId = this.dataset.studentId;
            if (confirm(`Voulez-vous vraiment retirer l'élève ${studentId} de la liste des absents ?`)) {
                fetch(`?p=api/absenceClasse/removeAbsent/${id}/${studentId}`)
                .then(response => response.json())
                .then(data => {
                    if (data.status === 1) {
                        alert(data.message);
                        location.reload();
                    } else {
                        alert(data.message);
                    }
                })
               
            }
        });
    });

    document.getElementById('add-absent-form').addEventListener('submit', function(e) {
        e.preventDefault();
        const id = <?= $absenceClasse->idAbsenceClasse ?>;
        const studentId = document.getElementById('studentId').value;

        fetch(`?p=api/absenceClasse/addAbsent/${id}/${studentId}`)
            .then(response => response.json())
            .then(data => {
                if (data.status === 1) {
                    alert(data.message);
                    location.reload();
                } else {
                    alert(data.message);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Une erreur est survenue. Veuillez réessayer.');
            });
    });

    document.querySelectorAll('.remove-justified').forEach(button => {
        button.addEventListener('click', function() {
            const id = this.dataset.id;
            const studentId = this.dataset.studentId;
            if (confirm(`Voulez-vous vraiment retirer l'élève ${studentId} de la liste des justifiés ?`)) {
                fetch(`?p=api/absenceClasse/removeJustifies/${id}/${studentId}`)
                .then(response => response.json())
                .then(data => {
                    if (data.status === 1) {
                        alert(data.message);
                        location.reload();
                    } else {
                        alert(data.message);
                    }
                })
               
            }
        });
    });

    document.getElementById('add-justified-form').addEventListener('submit', function(e) {
        e.preventDefault();
        const id = <?= $absenceClasse->idAbsenceClasse ?>;
        const studentId = document.getElementById('justifiedStudentId').value;

        fetch(`?p=api/absenceClasse/addJustifies/${id}/${studentId}`)
            .then(response => response.json())
            .then(data => {
                if (data.status === 1) {
                    alert(data.message);
                    location.reload();
                } else {
                    alert(data.message);
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Une erreur est survenue. Veuillez réessayer.');
            });
    });
</script>