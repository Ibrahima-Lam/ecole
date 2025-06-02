


async function fetchData(url) {
    const response = await fetch(url);
    return response.json();
}
async function fetchDataText(url) {
    const response = await fetch(url);
    return response.text();
}

document.getElementById("anneescolaire")?.addEventListener("change", async function (e) {
    let annee = e.target.value;
     await fetch("?p=api/home/annee/" + annee)
     .then(data=>{
      console.log(data);
      window.location.reload();
     })
     .catch(error=>{
      window.location.reload();
      console.error('Error:', error)});
    
});

document.getElementById('langue')?.addEventListener('change',async function (e) {
    let langue = e.target.value;
   await fetchData("?p=api/home/langue/" + langue);
    window.location.reload();

});

const menu=document.getElementById('menu');
menu?.addEventListener('click', function (e) {
    document.querySelector('.sidebar').classList.toggle('show-menu');
});

const dropdown=document.getElementById('dropdown');
dropdown?.addEventListener('click', function (e) {
  const nav=  document.querySelector('.nav-bar .subnavbar');
  if (nav.style.top == "60px") {
    nav.style.top = "-600px";
    
  }else{
    nav.style.top = "60px";
  }
});
const submenu=document.getElementById('submenu');
submenu?.addEventListener('click', function (e) {
    if(document.body.dir=='rtl'){
        const nav=  document.querySelector( '.subsidebar');
        if(!nav) return;
        if (nav?.style.left == "0px") {
          nav.style.left = "-600px";
          
        }else{
          nav.style.left = "0px";
        }
    }else{
        const nav=  document.querySelector('.subsidebar');
        if(!nav) return;
        if (nav?.style.right == "0px") {
          nav.style.right = "-600px";
          
        }else{
          nav.style.right = "0px";
        }
    }
 

});

const account=document.getElementById('account');
account?.addEventListener('click', async function (e) {
    if(confirm('Voulez-vous vous déconnecter ?')) {
      window.location.assign('?p=home/login')
      fetchData("?p=api/home/logout");
    }
});

const _admin = document.getElementById('_admin').value;


const search=document.getElementById('search');
search?.addEventListener('input', function (e) {
    const value = e.target.value;
    const result=document.querySelector('.search-result');
    result.style.display='block';
    result.innerHTML='';
    if(value.length<3){
        result.style.display='none';
        return;
    }
    fetchDataText("?p=api/home/search/" + value)
    .then(data=>{
        
        result.innerHTML=data;
    })
    .catch(error=>{
        console.error('Error:', error)});
    
});

document.addEventListener('click',function(e){
  const result=document.querySelector('.search-result');
  result.style.display='none';
})

const dark=document.getElementById('dark');
dark?.addEventListener('click',async function (e) {
   await fetchData("?p=api/home/toggleDark");
   document.body.classList.toggle('dark');
   dark.querySelector('i').classList.toggle('fa-moon');
   dark.querySelector('i').classList.toggle('fa-sun');
});



