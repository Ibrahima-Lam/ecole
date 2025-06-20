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
                       <div class="school-name">
                         <h4 dir="ltr"><?=$_schoolName ?></h4>
                         <h4 dir="rtl"><?=$_schoolNameAr ?></h4>
                       </div>
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
                        <input type="search" name="etablissement" id="search" placeholder="<?=__("Rechercher") ?> ...">
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
                            <li id="dark" title="<?=$_dark ? __("Mode clair") : __("Mode sombre")?>"><i class="fa <?= $_dark ? 'fa-sun' : 'fa-moon' ?>"></i></li>
                            <li id="account" title="<?= __format("Utilisateur : %s",$_user?->nameUser) ?>"><i class="fa fa-user"></i></li>
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
                        <div><?=__("Accueil") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=eleve/liste"><i class="fa fa-person"></i>
                    <div class="element">
                        <div><?=__("Eleves") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=classe/liste"><i class="fa fa-list"></i>
                    <div class="element">
                        <div><?=__("Classes") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=salleclasse/liste"><i class="fa fa-building"></i>
                    <div class="element">
                        <div><?=__("Salles de Classes") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=professeur/liste"><i class="fa fa-user"></i>
                    <div class="element">
                        <div><?=__("Professeurs") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=matiere/liste"><i class="fa fa-book"></i>
                    <div class="element">
                        <div><?=__("Matières") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li> 
                <li><a href="#"><i class="fa fa-chalkboard-teacher"></i>
                    <div class="element">
                        <div><?=__("Cours") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=inscrit/liste"><i class="fa fa-user-plus"></i>
                    <div class="element">   
                        <div><?=__("Inscriptions") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=examen/liste"><i class="fa fa-table"></i>
                    <div class="element">
                        <div><?=__("Examens") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=note/liste"><i class="fa fa-list"></i>
                    <div class="element">
                        <div><?=__("Notes") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li> <li><a href="#"><i class="fa fa-calendar"></i>
                    <div class="element">
                        <div><?=__("Plannings") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
                <li><a href="#"><i class="fa fa-list-alt"></i>
                   <div class="element">
                       <div><?=__("Absences") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                   </div>
               </a></li> 
               <li><a href="?p=correspondant/liste"><i class="fa fa-people-group"></i>
                   <div class="element">
                       <div><?=__("Correspondants") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                   </div>
               </a></li> 
               <li><a href="?p=statistique/index"><i class="fa fa-dashboard"></i>
                   <div class="element">
                       <div><?=__("Statistiques") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                   </div>
               </a></li>
                 <li><a href="#"><i class="fa fa-edit"></i>
                    <div class="element">
                        <div><?=__("Avis") ?></div><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i>
                    </div>
                </a></li>
            <li><a href="?p=paramettre/index"><i class="fa fa-gear"></i>
                    <div class="element"><?=__("Paramètres") ?><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i></div>
                </a></li>
            <li><a href="?p=plus/home"><i class="fa fa-plus"></i>
                    <div class="element"><?=__("Plus") ?><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i></div>
                </a></li> 
                
                <li><a href="#"><i class="fa fa-question"></i>
                    <div class="element"><?=__("Aide") ?><i class="fa <?=$_langue == 'ar' ? 'fa-chevron-left' : 'fa-chevron-right'?>"></i></div>
                </a></li>
        </ul>
    </div>
    <div class="container">

        <?= $content ?? '' ?>
        <div class="footer">
            <p>&copy; <?= date('Y') ?> <?= $_schoolName ?>. <?= __("Tous droits reservés") ?></p>
            <p><?= __("Developpé par") ?> Ibrahima Abou lam </p>
            <p>Email: <a href="mailto:ibrahimaaboulam@gmail.com">ibrahimaaboulam@gmail.com</a></p>
            <p>Tel: <a href="tel:+22241916418">+222 41 91 64 18</a></p>
        </div>   
    </div>
    <input type="hidden" id="_admin" value="<?= $_admin; ?>">

</body>

</html>