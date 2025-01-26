<table class="table">
    <thead>
        <tr>
            <th>Matricule</th>
            <th>Code Examen</th>
            <th>Note</th>
            <th>Date de l'examen</th>
            <th>Date de creation</th>
            <th>Date de modification</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($notes as $note): ?>
            <tr>
                <td><?= $note->matricule; ?></td>
                <td><?= $note->codeExamen; ?></td>
                <td><?= $note->note; ?></td>
                <td><?= $note->dateExamen; ?></td>
                <td><?= $note->createdAt; ?></td>
                <td><?= $note->updatedAt; ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>