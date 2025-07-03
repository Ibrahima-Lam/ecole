<?php

namespace App\Controllers\web\administration;

use App\Repositories\correspondanceRepository;
use App\Repositories\correspondantRepository;
use App\Repositories\EleveRepository;
use App\Repositories\inscritRepository;
use App\Controllers\src\WebController;

class CorrespondantController extends WebController
{

    private function subsidebar(?string $id, int $active = 1): string
    {
       $repos=new correspondantRepository();
       $prof=$repos->findOneById($id??'');
        $html = "<div class='subsidebar'>";
        if($prof){
            $html.='<h3>'.$prof->nomCorrespondant.'</h3>';
            $html.='<p class="text-center">'.$prof->ismeCorrespondant.'</p>';
        }
        $html .= "<ul>";
        $class = "";
        if ($id) {
            $class = $active == 1 ? "active" : "";
            $html .= "<li><a href='?p=correspondant/profil/$id'class='$class'>".__("Profil") ."</a></li>";
            $class = $active == 2 ? "active" : "";
            $html .= "<li><a href='?p=correspondant/enfant/$id'class='$class'>".__("Enfant") ."</a></li>";
      
        }   
        $class = $active == 10 ? "active" : "";
        $html .= "<li><a href='?p=correspondant/liste' class='$class'>".__("Correspondant") ."</a></li>";
       $class = $active == 11 ? "active" : "";
        $html .= "<li><a href='?p=correspondant/correspondance' class='$class'>".__("Correspondance") ."</a></li>";
        $html .= "</ul>";
        $html .= "</div>";
        return $html;
    }
    public function liste()
    {
        $correspondanceRepository = new correspondantRepository();
        $correspondants = $correspondanceRepository->findAll();
        $this->render('correspondant/liste', ['correspondants' => $correspondants,'subsidebar'=>$this->subsidebar(null,10)]);
    }

    public function traitementImage(): void
    {
        $id=$_REQUEST['id'];
        $model = new correspondantRepository();
        if(isset($_FILES['image']) && $_FILES['image']['error'] == 0){
            move_uploaded_file($_FILES['image']['tmp_name'], "profiles/correspondant/img_C$id.jpg");
            $model->updateImage($id,"img_C$id.jpg");
            $this->redirect("?p=correspondant/profil/$id");
        }
    }
    public function profil($id)
    {
        $correspondanceRepository = new correspondantRepository();
        $correspondant = $correspondanceRepository->findOneById($id);
        if(!$correspondant){
            die(__("correspondant non trouvé"));
        }
        $this->render('correspondant/profil', ['correspondant' => $correspondant,'subsidebar'=>$this->subsidebar($id,1)]);
    }
     public function correspondance()
    {
        $correspondanceRepository = new correspondanceRepository();
        $correspondances = $correspondanceRepository->findAll();
        $correspondantRepository = new correspondantRepository();
        $correspondants = $correspondantRepository->findAll();
        $eleveRepository = new EleveRepository();
        $eleves = $eleveRepository->findAll();
        $this->render('correspondant/correspondance', ['correspondances' => $correspondances,'correspondants'=>$correspondants,'eleves'=>$eleves,'subsidebar'=>$this->subsidebar(null,11)]);
    }
    public function enfant($id)
    {
        
        $correspondanceRepository = new correspondanceRepository();
        $correspondances = $correspondanceRepository->findAllByCorrespondant($id);
        $correspondances=array_map(function($correspondance){
            $inscritRepository = new inscritRepository();
            $inscrit=$inscritRepository->findOneByMatriculeAndAnnee($correspondance->matricule,$this->getCodeAnnee());
            $correspondance->pseudoSalleClasse=$inscrit? $inscrit->pseudoSalleClasse:__("non inscrit");
            return $correspondance;
        },$correspondances);
        $subsidebar=$this->subsidebar($id,2);
        
        $this->render('correspondant/enfant', ['correspondances' => $correspondances,'subsidebar'=>$subsidebar]);
    }

  
}