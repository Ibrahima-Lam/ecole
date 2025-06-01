<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="title center">Login</h2>
                <div class="center">
                   
                    <div class="card-body">
                        <form class="form" action="" method="post">
                            <div class="form-group">
                                <label for="name">Nom</label>
                                <input type="text" name="name" id="name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password">Mot de passe</label>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="module" defer>
    import { fetchJson,fetchText } from './js/src/fetch.js';
    const form = document.querySelector('form');
    form?.addEventListener('submit', async (e) => {
        e.preventDefault();
        const data = new FormData(form);
        const params = Object.fromEntries(data.entries());
        const dataString = (new URLSearchParams(params)).toString();
        await fetchJson('?p=api/home/login&' + dataString)
            .then(data => {
                console.log(data);
                if (data.res === 'ok') {
                    window.location.href = '?p=home';
                } else {
                    console.log(data);
                    alert('Utilisateur non reconnu');
                }
            })
            .catch(error => console.error('Error:', error));
    });
</script>
</html>