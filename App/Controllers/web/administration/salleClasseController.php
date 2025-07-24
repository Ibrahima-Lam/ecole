<?php

namespace App\Controllers\web\administration;

use App\Repositories\ClasseMatiereRepository;
use App\Repositories\SalleClasseRepository;
use App\Controllers\src\WebController;
use App\Repositories\AnneeScolaireRepository;
use App\Repositories\SalleRepository;
use App\Repositories\ClasseRepository;
use App\Services\src\AnneeScolaireService;
use Core\Caches\Session;

class salleClasseController extends WebController
{

    public function __construct(private AnneeScolaireService $anneeScolaireService)
    {
        parent::__construct();
       
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
            $class = $active == 7 ? "active" : "";
            $html .= "<li><a href='?p=salleclasse/matiere/$code'class='$class'>".__("Les Matieres")."</a></li>";
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
            $class = $active == 8 ? "active" : "";
            $html .= "<li><a href='#' class='$class'>".__("Statistiques")." </a>&nbsp;
            <a href='?p=salleclasse/statistique/$code/C1' >C1</a>
            <a href='?p=salleclasse/statistique/$code/C2' >C2</a>
            <a href='?p=salleclasse/statistique/$code/C3' >C3</a>
            </li>";
            $class = $active == 7 ? "active" : "";
            $html .= "<li><a href='?p=absenceClasse/cumulAbsenceEleve/$code'class='$class'>".__("Les Absences")."</a></li>";
          
            $html.='<hr>';

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
    $data = $model->findAll($this->anneeScolaireService->getCodeAnnee());
    $anneeScolaire = new AnneeScolaireRepository();
    $annee = $anneeScolaire->findOneByCodeAnnee($this->anneeScolaireService->getCodeAnnee());
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
        $matieres=$model->findAllByClasseAndAnnee($salleClasse->codeClasse,$this->anneeScolaireService->getCodeAnnee());
        $this->render("salleclasse/releves", ["matieres" => $matieres,'salleclasse'=>$salleClasse,'subsidebar'=>$this->subsidebar($code,6)]);
    }
     public function matiere($code): void
    {
        $model = new ClasseMatiereRepository();
        $salleClasse = new SalleClasseRepository();
        $salleClasse = $salleClasse->findOneByCode($code);
        $matieres=$model->findAllByClasseAndAnnee($salleClasse->codeClasse,$this->anneeScolaireService->getCodeAnnee());
        $this->render("salleclasse/matiere", ["matieres" => $matieres,'salleclasse'=>$salleClasse,'subsidebar'=>$this->subsidebar($code,7)]);
    }
    public function statistique($code,$typeBulletin): void
    {
        $salleClasse = new SalleClasseRepository();
        $salleClasse = $salleClasse->findOneByCode($code);
        $this->render("salleclasse/statistique", ["typeBulletin" => $typeBulletin,'salleclasse'=>$salleClasse,'code'=>$code,'subsidebar'=>$this->subsidebar($code,active: 8)]);
    }
}
