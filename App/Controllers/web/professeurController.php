<?php

namespace App\Controllers\web;

use App\Models\Repositories\EnseignerRepository;
use App\Models\Repositories\professeurMatiereRepository;
use App\Models\Repositories\ProfesseurRepository;
use App\Models\Repositories\matiereRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Controllers\src\WebController;

class professeurController extends WebController
{
    private function subsidebar(?string $matricule, int $active = 1): string
    {
       $repos=new ProfesseurRepository();
       $prof=$repos->findOneByMatricule($matricule);
        $html = "<div class='subsidebar'>";
        if($prof){
            $html.='<h3>'.$prof->nomProfesseur.'</h3>';
            $html.='<p class="text-center">'.$prof->ismeProfesseur.'</p>';
        }
        $html .= "<ul>";
        $class = "";
        if ($matricule) {
            $class = $active == 1 ? "active" : "";
            $html .= "<li><a href='?p=professeur/profil/$matricule'class='$class'>".__("Profil") ."</a></li>";
            $class = $active == 2 ? "active" : "";
            $html .= "<li><a href='?p=professeur/matiere/$matricule'class='$class'>".__("Matiere") ."</a></li>";
        $class = $active == 3 ? "active" : "";
            $html .= "<li><a href='?p=professeur/enseignant/$matricule'class='$class'>".__("Classe et Matiere") ."</a></li>";
        
        }   
        $class = $active == 10 ? "active" : "";
        $html .= "<li><a href='?p=professeur/liste' class='$class'>".__("Professeurs") ."</a></li>";
        $html .= "</ul>";
        $html .= "</div>";
        return $html;
    }
    public function liste(): void
    {
        $repos= new ProfesseurRepository();
        $profs=$repos->findAll();
        $specialites=$repos->findAllSpecialite();

        $this->render('professeur/liste',compact(['profs','specialites']));
    }

    public function profil($matricule): void
    {
        $subsidebar=$this->subsidebar($matricule,1);
        $repos= new ProfesseurRepository();
        $prof=$repos->findOneByMatricule($matricule);
        $specialites=$repos->findAllSpecialite();
        $repos1=new professeurMatiereRepository();
        $matieres=$repos1->findAllByMatriculeProfesseur($matricule);
        $this->render('professeur/profil',compact(['prof','specialites','subsidebar','matieres']));
    }
    public function traitementImage(): void
    {
        $matricule=$_REQUEST['matricule'];
        $model = new ProfesseurRepository();
        if(isset($_FILES['image']) && $_FILES['image']['error'] == 0){
            move_uploaded_file($_FILES['image']['tmp_name'], "profiles/professeur/img_$matricule.jpg");
            $model->updateImage($matricule,"img_$matricule.jpg");
            $this->redirect("?p=professeur/profil/$matricule");
        }
    }
    public function matiere($matricule): void
    {
        $subsidebar=$this->subsidebar($matricule,2);
        $repos=new professeurMatiereRepository();
        $profmatieres=$repos->findAllByMatriculeProfesseur($matricule);
        $repos2=new matiereRepository();
        $matieres=$repos2->findAll();
        $repos3=new ProfesseurRepository();
        $prof=$repos3->findOneByMatricule($matricule);
        $profs=$prof ? [$prof] : [];
        $this->render('professeur/matiere',compact(['matricule','subsidebar','profmatieres','matieres','profs']));
    }

    public function enseignant($matricule){
        $subsidebar=$this->subsidebar($matricule,3);
        $repos=new EnseignerRepository();
        $enseignants=$repos->findAllByMatriculeProfesseur($matricule);
        $repos2=new matiereRepository();
        $matieres=$repos2->findAll();
        $repos3=new ProfesseurRepository();
        $prof=$repos3->findOneByMatricule($matricule);
        $profs=$prof ? [$prof] : [];
        $repos4=new SalleClasseRepository();
        $salles=$repos4->findAll();
        $this->render('professeur/enseignant',compact(['matricule','subsidebar','enseignants','matieres','profs','salles']));
    }
}
