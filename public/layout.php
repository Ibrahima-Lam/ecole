<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?? 'Ecole' ?></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" type="image/x-icon" href="images/ecole.jpg">
    <script src="js/home/script.js" defer></script>
</head>

<body class="<?= $_langue == 'ar' ? 'arabic' : "" ?>" dir="<?= $_langue == 'ar' ? 'rtl' : "ltr" ?>">
    <div class="nav-bar">
                <div class="nav-bar-left">
                    <ul>
                        <li class="menu" id="menu"><i class="bi bi-justify"></i></li>
                        <li class="infos">
                            <div class="logo">
                                <img src="images/ecole.jpg" alt="logo">
                                <h3>Etablissements</h3>
                            </div>
                        </li>
                        <li class="dropdown" id="dropdown"><i class="bi bi-three-dots-vertical"></i></li>
                        <li class="submenu" id="submenu"><i class="bi bi-list"></i></li>
                        
                    </ul>
                </div>
            <div class="subnavbar">
            <ul>
                <li>
                    <input type="search" name="etablissement" id="search" placeholder="Rechercher ...">
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
                            <li><i class="bi-moon"></i></li>
                            <li><i class="bi-person"></i></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>


    </div>
    <div class="sidebar">
        <ul>
            <li><a href="?p=home"><i class="bi-house"></i>
                    <div class="element">
                        <div>Accueil</div><i class="bi-star"></i>
                    </div>
                </a></li>
            <li><a href="?p=eleve/liste"><i class="bi-person-circle"></i>
                    <div class="element">
                        <div>Eleves</div><i class="bi-star"></i>
                    </div>
                </a></li>
            <li><a href="?p=classe/liste"><i class="bi-list"></i>
                    <div class="element">
                        <div>Classes</div><i class="bi-star"></i>
                    </div>
                </a></li>
            <li><a href="?p=salleclasse/liste"><i class="bi-stack"></i>
                    <div class="element">
                        <div>Salles de Classes</div><i class="bi-star"></i>
                    </div>
                </a></li>
            <li><a href="?p=professeur/liste"><i class="bi-person-fill"></i>
                    <div class="element">
                        <div>Professeurs</div><i class="bi-star"></i>
                    </div>
                </a></li>
            <li><a href="?p=matiere/liste"><i class="bi-book-half"></i>
                    <div class="element">
                        <div>Matières</div><i class="bi-star"></i>
                    </div>
                </a></li>
            <li><a href="?p=inscrit/liste"><i class="bi-person-plus"></i>
                    <div class="element">
                        <div>Inscriptions</div><i class="bi-star"></i>
                    </div>
                </a></li>
            <li><a href="?p=examen/liste"><i class="bi-table"></i>
                    <div class="element">
                        <div>Examens</div><i class="bi-star"></i>
                    </div>
                </a></li> 
                <li><a href="?p=note/liste"><i class="bi-list"></i>
                    <div class="element">
                        <div>Notes</div><i class="bi-star"></i>
                    </div>
                </a></li>
            <li><a href="?p=paramettre/index"><i class="bi-gear"></i>
                    <div class="element">Paramètres</div>
                </a></li>
            <li><a href="#"><i class="bi-plus"></i>
                    <div class="element">Plus</div>
                </a></li>
        </ul>
    </div>
    <div class="container">

        <?= $content ?? '' ?>
    </div>
</body>

</html>