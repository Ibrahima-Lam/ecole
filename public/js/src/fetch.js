import {Spinner} from "./spinner.js";

export async function fetchJson(url) {
    const response = await fetch(url);
    return await response.json();
}
export async function fetchText(url) {
    const response = await fetch(url);
    return await response.text();
}

export async function fetchAllJson(urls) {
    Spinner.show()
    const responses = await Promise.all(urls.map(url => fetch(url)));
    Spinner.hide()
    return await Promise.all(responses.map(response => response.json()));
}

export async function fetchAllText(urls) {
    Spinner.show()
    const responses = await Promise.all(urls.map(url => fetch(url)));
    Spinner.hide()
    return await Promise.all(responses.map(response => response.text()));
}
