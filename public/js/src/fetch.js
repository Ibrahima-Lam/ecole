export async function fetchJson(url) {
    const response = await fetch(url);
    return await response.json();
}
export async function fetchText(url) {
    const response = await fetch(url);
    return await response.text();
}