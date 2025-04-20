<?php

namespace App\Controllers\https;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\SalleClasseRepository;
use Core\Controllers\Controller;
use App\Models\Repositories\AnneeScolaireRepository;
use App\Models\Repositories\SalleRepository;
use App\Models\Repositories\ClasseRepository;
use Core\Caches\Session;

class salleClasseController extends Controller
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

        $html = "<div class='subsidebar'>";
        $html .= "<ul>";
        $class = "";
        if ($code) {
            $class = $active == 1 ? "active" : "";
            $html .= "<li><a href='?p=eleve/profil/$code'class='$class'>Profil</a></li>";
            $class = $active == 2 ? "active" : "";
            $html .= "<li><a href='?p=inscrit/classe/$code'class='$class'>Eleves</a></li>";
            $class = $active == 5 ? "active" : "";
            $html .= "<li><a href='?p=examen/classe/$code'class='$class'>Les Examens</a></li>";
            $class = $active == 6 ? "active" : "";
            $html .= "<li><a href='?p=salleclasse/releves/$code'class='$class'>Les relevés</a></li>";
            $html .= "<li>
            <a href='#'class='$class'>Resultat </a>&nbsp;
            <a href='?p=pdf/salleclasse/resultat1/$code'class='$class' target='_blank'>C1</a>
            <a href='?p=pdf/salleclasse/resultat2/$code'class='$class' target='_blank'>C2</a>
            <a href='?p=pdf/salleclasse/resultat3/$code'class='$class' target='_blank'>C3</a>
            </li>";
             $html .= "<li>
             <a href='#'class='$class'>Bulletins</a>&nbsp;
             <a href='?p=pdf/salleclasse/bulletin1/$code'class='$class' target='_blank'><span>C1</span></a>
             <a href='?p=pdf/salleclasse/bulletin2/$code'class='$class' target='_blank'>C2</a>
             <a href='?p=pdf/salleclasse/bulletin3/$code'class='$class' target='_blank'>C3</a>
             </li>";
            $html .= "<li>
            <a href='#'class='$class'>MiniBulletins </a>&nbsp;
            <a href='?p=pdf/salleclasse/minibulletin1/$code'class='$class' target='_blank'>C1</a>
            <a href='?p=pdf/salleclasse/minibulletin2/$code'class='$class' target='_blank'>C2</a>
            <a href='?p=pdf/salleclasse/minibulletin3/$code'class='$class' target='_blank'>C3</a>
            </li>";

        }
        $class = $active == 10 ? "active" : "";
        $html .= "<li><a href='?p=salleclasse/liste'class='$class'>Liste des salles de classes</a></li>";

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
}
