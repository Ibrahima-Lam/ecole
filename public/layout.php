<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?? 'Ecole' ?></title>
    <link rel="stylesheet" href="./assets/fontawesome/css/all.min.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" type="image/x-icon" href="images/ecole.jpg">
    <script src="js/home/script.js" defer></script>
</head>

<body class="<?= $_dark ? 'dark' : '' ?>" dir="<?= $_langue == 'ar' ? 'rtl' : "ltr" ?>">
    <div class="nav-bar">
        <div class="nav-bar-left">
            <ul>
                <li class="menu" id="menu"><i class="fa fa-bars"></i></li>
                <li class="infos">
                    <div class="logo">
                        <img src="images/ecole.jpg" alt="logo">
                        <h3>Etablissements</h3>
                    </div>
                </li>
                <li class="dropdown" id="dropdown"><i class="fa fa-ellipsis-vertical"></i></li>
                <li class="submenu" id="submenu"><i class="fa fa-list"></i></li>

            </ul>
        </div>
        <div class="subnavbar">
            <ul>
                <li>
                    <div class="search-container">
                        <input type="search" name="etablissement" id="search" placeholder="Rechercher ...">
                        <div class="search-result"></div>
                    </div>
                </li>
                <li><select name="anneescolaire" id="anneescolaire">
                        <option value="" disabled>Année Scolaire</option>
                        <?= $_annee ?? '' ?>
                    </select>
                </li>
                <li>
                    <div class="nav-settings">
                        <ul>
                            <li><Select id="langue" name="langue" class="langue">
                                    <option value="fr" <?= $_langue == 'fr' ? 'selected' : "" ?>>FR</option>
                                    <option value="ar" <?= $_langue == 'ar' ? 'selected' : "" ?>>AR</option>
                                    <option value="en" <?= $_langue == 'en' ? 'selected' : "" ?>>EN</option>
                                </Select></li>
                            <li id="dark"><i class="fa <?= $_dark ? 'fa-sun' : 'fa-moon' ?>"></i></li>
                            <li id="account" title="<?= $_user->nameUser ?>"><i class="fa fa-user"></i></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>


    </div>
    <div class="sidebar">
        <ul>
            <li><a href="?p=home"><i class="fa fa-house"></i>
                    <div class="element">
                        <div>Accueil</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=eleve/liste"><i class="fa fa-person"></i>
                    <div class="element">
                        <div>Eleves</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=classe/liste"><i class="fa fa-list"></i>
                    <div class="element">
                        <div>Classes</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=salleclasse/liste"><i class="fa fa-building"></i>
                    <div class="element">
                        <div>Salles de Classes</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=professeur/liste"><i class="fa fa-user"></i>
                    <div class="element">
                        <div>Professeurs</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=matiere/liste"><i class="fa fa-book"></i>
                    <div class="element">
                        <div>Matières</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=inscrit/liste"><i class="fa fa-user-plus"></i>
                    <div class="element">   
                        <div>Inscriptions</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=examen/liste"><i class="fa fa-table"></i>
                    <div class="element">
                        <div>Examens</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=note/liste"><i class="fa fa-list"></i>
                    <div class="element">
                        <div>Notes</div><i class="fa fa-chevron-right"></i>
                    </div>
                </a></li>
            <li><a href="?p=paramettre/index"><i class="fa fa-gear"></i>
                    <div class="element">Paramètres</div>
                </a></li>
            <li><a href="?p=plus/home"><i class="fa fa-plus"></i>
                    <div class="element">Plus</div>
                </a></li>
        </ul>
    </div>
    <div class="container">

        <?= $content ?? '' ?>
    </div>
    <input type="hidden" id="_admin" value="<?= $_admin; ?>">

</body>

</html>