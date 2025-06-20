<?php

namespace App\Controllers\web;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Controllers\src\WebController;
use App\Models\Repositories\AnneeScolaireRepository;
use App\Models\Repositories\SalleRepository;
use App\Models\Repositories\ClasseRepository;
use Core\Caches\Session;

class salleClasseController extends WebController
{
    private $annee;

    public function __construct()
    {
        $session = new Session();
        $this->annee = $session->get("anneescolaire");
        if (!$this->annee) {
            $this->annee = (new AnneeScolaireRepository())->findLastAnneeScolaire()->codeAnnee;
            $session->set("anneescolaire", $this->annee);
        }
    }

    private function subsidebar(?string $code, int $active = 1): string
    {
        $salleclasse=null;
        if($code){
            $repos=new SalleClasseRepository();
            $salleclasse=$repos->findOneByCode($code);
        }
        $html = "<div class='subsidebar'>";
        if($salleclasse){
            $html.='<h3>'.$salleclasse->pseudoSalleClasse.'</h3>';
        }

        $html .= "<ul>";
        $class = "";
        if ($code) {
            $class = $active == 1 ? "active" : "";
            $html .= "<li><a href='?p=salleclasse/profil/$code'class='$class'>".__("Profil")."</a></li>";
            $class = $active == 2 ? "active" : "";
            $html .= "<li><a href='?p=inscrit/classe/$code'class='$class'>".__("Eleves")."</a></li>";
            $class = $active == 5 ? "active" : "";
            $html .= "<li><a href='?p=examen/classe/$code'class='$class'>".__("Les Examens")."</a></li>";
            $class = $active == 6 ? "active" : "";
            $html .= "<li><a href='?p=salleclasse/releves/$code'class='$class'>".__("Les Relevés")."</a></li>";
            $html .= "<li>
            <a href='#'>".__("Resultat")." </a>&nbsp;
            <a href='?p=pdf/salleclasse/resultat1/$code' target='_blank'>C1</a>
            <a href='?p=pdf/salleclasse/resultat2/$code' target='_blank'>C2</a>
            <a href='?p=pdf/salleclasse/resultat3/$code' target='_blank'>C3</a>
            </li>";
             $html .= "<li>";
            $html .= "<a href='#'>".__("Bulletins")."</a>&nbsp;";
            $html .= "<a href='?p=pdf/salleclasse/bulletin1/$code' target='_blank'><span>C1</span></a>";
            $html .= "<a href='?p=pdf/salleclasse/bulletin2/$code' target='_blank'>C2</a>";
            $html .= "<a href='?p=pdf/salleclasse/bulletin3/$code' target='_blank'>C3</a>";
            $html .= "</li>";
            $html .= "<li>";
            $html .= "<a href='#'>".__("MiniBulletins")."</a>&nbsp;";
            $html .= "<a href='?p=pdf/salleclasse/minibulletin1/$code' target='_blank'>C1</a>";
            $html .= "<a href='?p=pdf/salleclasse/minibulletin2/$code' target='_blank'>C2</a>";
            $html .= "<a href='?p=pdf/salleclasse/minibulletin3/$code' target='_blank'>C3</a>";
            $html .= "</li>";
            $class = $active == 7 ? "active" : "";
            $html .= "<li><a href='#' class='$class'>".__("Statistiques")." </a>&nbsp;
            <a href='?p=salleclasse/statistique/$code/C1' >C1</a>
            <a href='?p=salleclasse/statistique/$code/C2' >C2</a>
            <a href='?p=salleclasse/statistique/$code/C3' >C3</a>
            </li>";

        }
        $class = $active == 10 ? "active" : "";
        $html .= "<li><a href='?p=salleclasse/liste'class='$class'>".__("Liste des salles de classes")."</a></li>";

        $html .= "</ul>";
        $html .= "</div>";
        return $html;
    }
    public function liste(): void
    {
        $model = new SalleClasseRepository();
    $data = $model->findAll($this->annee);
    $anneeScolaire = new AnneeScolaireRepository();
    $annee = $anneeScolaire->findOneByCodeAnnee($this->annee);
    $classe = new ClasseRepository();
        $classes=$classe->findAll();
    $salleRip= new SalleRepository();
    $salles=$salleRip->findAll();
    $this->render("salleclasse/liste", ["data" => $data, "annee" => $annee, 'subsidebar' => $this->subsidebar(null, 10),'salles'=>$salles,'classes'=>$classes]);
}
    public function profil($code): void
    {
        $model = new SalleClasseRepository();
        $data = $model->findOneByCode($code);
        $this->render("salleclasse/profil", ["data" => $data, 'subsidebar' => $this->subsidebar($code)]);
    }

    public function releves($code): void
    {
        $model = new ClasseMatiereRepository();
        $salleClasse = new SalleClasseRepository();
        $salleClasse = $salleClasse->findOneByCode($code);
        $matieres=$model->findByClasse($salleClasse->codeClasse);
        $this->render("salleclasse/releves", ["matieres" => $matieres,'salleclasse'=>$salleClasse,'subsidebar'=>$this->subsidebar($code,6)]);
    }
    public function statistique($code,$typeBulletin): void
    {
        $salleClasse = new SalleClasseRepository();
        $salleClasse = $salleClasse->findOneByCode($code);
        $this->render("salleclasse/statistique", ["typeBulletin" => $typeBulletin,'salleclasse'=>$salleClasse,'code'=>$code,'subsidebar'=>$this->subsidebar($code,7)]);
    }
}
