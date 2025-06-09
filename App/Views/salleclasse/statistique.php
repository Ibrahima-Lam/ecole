<?=$subsidebar??'' ?>

<h2 class="title-center my-10 text-center"><?=__format("Statistique de la classe : %s en %s",$salleclasse->pseudoSalleClasse,$typeBulletin)?></h2>
<br>
<div class="table-container">
<table class="table table-striped" id="stat-table">
    <thead>
        <tr>
            <th><?=__(  "Type")?></th>
            
        </tr>
    </thead>
    <tbody>
       <tr>
        <th><?=__(  "Nombre")?></th>
       </tr>
    </tbody>
    <tfoot>
        <tr>
            <th><?=__(  "Pourcentage")?></th>
        </tr>
    </tfoot>
</table>
    </div>
<div class="table-container">
<canvas id="barChart" width="800" height="400"></canvas>
</div>


<script type="module">
    import {fetchJson}from './js/src/fetch.js';
    import {Spinner}from './js/src/spinner.js';
    const spinner=new Spinner();
const canvas = document.getElementById("barChart");
const ctx = canvas.getContext("2d");
let labels;
let values;
window?.addEventListener('load',async function (e) {
    spinner.show();
    let data=await fetchJson('?p=api/salleclasse/statistique/<?=$code?>/<?=$typeBulletin?>');
    spinner.hide();
    labels = ["Effectif","Admis", "Non admis","Tres Bien","Bien","Assez Bien","Passable","Faible","Tres Faible"];
    values = [data.effectif,data.admis, data.nonAdmis,data.mentionTresBien,data.mentionBien,data.mentionAssezBien,data.mentionPassable,data.mentionFaible,data.mentionTresFaible];
  let labs=[];
    for(let e of labels){
        let v=await fetchJson('?p=api/home/translate/'+e);
       
       labs.push(v.res);
    }
    
  labels=labs;



const chartHeight = canvas.height;
const barWidth = 50;
const gap = 30;
const maxValue = Math.max(...values);

const table=document.getElementById('stat-table');
const trh=table.querySelector('thead tr');
const trb=table.querySelector('tbody tr');
const trf=table.querySelector('tfoot tr');

// Dessiner les barres
values.forEach((value, index) => {
  trh.innerHTML+=`<th>${labels[index]}</th>`;
  trb.innerHTML+=`<td>${value}</td>`;
  trf.innerHTML+=`<td>${data.effectif>0?((value / data.effectif) * 100).toFixed(2):0}%</td>`;
  const x = 60 + index * (barWidth + gap);
  const barHeight = (value / maxValue) * (chartHeight - 60);
  const y = chartHeight - barHeight - 30;

  // Barre
  ctx.fillStyle = "#4285F4";
  ctx.fillRect(x, y, barWidth, barHeight);

  // Valeur
  ctx.fillStyle = "#000";
  if (document.body.classList.contains('dark')) {
    ctx.fillStyle = "#fff";
  }
  ctx.font = "14px Arial";
  ctx.fillText(value, x + 10, y - 10);

  // Label
  ctx.fillText(labels[index], x + 5, chartHeight - 10);
});
});

</script>