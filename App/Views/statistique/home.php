<h2 class="title-center my-10 text-center"><?=__("Statistique des eleves")?></h2>
<div class="table-container">
<table class="table table-striped" id="stat-table">
    <thead>
        <tr>
            <th>Statut</th>
            
        </tr>
    </thead>
    <tbody>
       <tr>
        <th>Nombre</th>
       </tr>
    </tbody>
    <tfoot>
        <tr>
            <th>Pourcentage</th>
        </tr>
    </tfoot>
</table>
    </div>
<div class="table-container">
<canvas id="barChart" width="700" height="400"></canvas>
</div>


<script src="js/statistique/home.js"></script>