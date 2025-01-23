


async function fetchData(url) {
    const response = await fetch(url);
    return response.json();
}

document.getElementById("anneescolaire").addEventListener("change", async function (e) {
    let annee = e.target.value;
    let data = await fetchData("?p=api/home/session/anneescolaire/" + annee);
    console.log(data);
    window.location.reload();

});

document.getElementById('langue').addEventListener('change', function (e) {
    let langue = e.target.value;
    fetchData("?p=api/home/session/langue/" + langue);
    window.location.reload();

});

const menu=document.getElementById('menu');
menu.addEventListener('click', function (e) {
    document.querySelector('.sidebar').classList.toggle('show-menu');
});

const dropdown=document.getElementById('dropdown');
dropdown.addEventListener('click', function (e) {
  const nav=  document.querySelector('.nav-bar .subnavbar');
  if (nav.style.top == "60px") {
    nav.style.top = "-600px";
    
  }else{
    nav.style.top = "60px";
  }
});
const submenu=document.getElementById('submenu');
submenu.addEventListener('click', function (e) {
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

