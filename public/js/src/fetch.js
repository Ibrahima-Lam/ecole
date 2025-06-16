import {Spinner} from "./spinner.js";

export async function fetchJson(url) {
    const response = await fetch(url);
    return await response.json();
}
export async function fetchText(url) {
    const response = await fetch(url);
    return await response.text();
}

export async function fetchAllJson(urls,params={
    show:false
}) {
    let spinner=new Spinner()
    spinner.show()
    const responses = await Promise.all(urls.map(url => fetch(url)));
    spinner.hide()
    const data= await Promise.all(responses.map(response => response.json()));
    if(params.show){
        let count=0;
        for(let i=0;i<data.length;i++){
            if(data[i]?.status){
                count++;
            }
        }
        const res=`${count} enregistrements effectués\n${urls.length-count} enregistrements non effectués\n${urls.length} enregistrements total`

  await setTimeout(() => {
          alert(res);
    }, 100);
    }
    return data
}

export async function fetchAllText(urls) {
    Spinner.show()
    const responses = await Promise.all(urls.map(url => fetch(url)));
    Spinner.hide()
    return await Promise.all(responses.map(response => response.text()));
}
