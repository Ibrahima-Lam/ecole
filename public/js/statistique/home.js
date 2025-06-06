const canvas = document.getElementById("barChart");
const ctx = canvas.getContext("2d");
let labels;
let values;
window?.addEventListener('load',async function (e) {
    let data=await fetch('?p=api/eleve/statistique').then(data=>data.json());
  
    labels = ["Total","Actif", "Inactif","Inscrit","Non inscrit","Exclus","Abandonné",];
    values = [data.total,data.actif, data.inactif,data.inscrit, data.noninscrit,data.exclus,data.abandonne];


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
  trf.innerHTML+=`<td>${data.total>0?((value / data.total) * 100).toFixed(2):0}%</td>`;
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
