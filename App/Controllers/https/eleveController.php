<?php

namespace App\Controllers\https;

use App\Controllers\interfaces\EleveControllerInterfaces;
use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\NoteRepository;
use App\Services\Factories\BulletinFactory;
use App\Services\Providers\ResultatProvider;
use Core\Controllers\Controller;
use  App\Models\Repositories\EleveRepository;
use App\Models\Repositories\inscritRepository;
use PhpOffice\PhpSpreadsheet\IOFactory;


class EleveController extends Controller implements EleveControllerInterfaces
{
    private function subsidebar(?string $matricule, int $active = 1): string
    {
        $html ="<div class='subsidebar'>";
        $html .= "<ul>";
        $class = "";
        if($matricule){
            $class = $active == 1 ? "active" : "";
            $html .= "<li><a href='?p=eleve/profil/$matricule'class='$class'>Profil</a></li>"; 
            $class = $active == 2 ? "active" : "";
            $html .= "<li><a href='?p=eleve/resultat/$matricule'class='$class'>Resultat</a></li>";
             $class = $active == 3 ? "active" : "";
            $html .= "<li><a href='?p=eleve/bulletin/$matricule'class='$class'>Bulletin</a></li>";
            
        }
        $class = $active == 10 ? "active" : "";
        $html .= "<li><a href='?p=eleve/liste' class='$class'>Eleves</a></li>";
        $class = $active == 11 ? "active" : "";
        $html .= "<li><a href='?p=inscrit/liste' class='$class'>Les Inscrits</a></li>"; 
        $class = $active == 12 ? "active" : "";
        $html .= "<li><a href='?p=inscrit/noninscrit' class='$class'>Les non inscrit</a></li>";
        $html .= "</ul>";
        $html .= "</div>";
        return $html;
    }

    public function liste(): void
    {
        $model = new EleveRepository();
        $data = $model->findAll();
        $this->render("eleve/liste", ["data" => $data,'subsidebar'=>$this->subsidebar(null,10)]);
    }

    public function profil(string $matricule): void
    {
        $model = new EleveRepository();
        $data = $model->findOneByMatricule($matricule);
        $model2 = new inscritRepository();
        $inscription = $model2->findOneByCodeAndAnnee($matricule, $this->getCodeAnnee());
        $this->render("eleve/profil", ["data" => $data, 'inscription' => $inscription, 'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($matricule, 1)]);
    }

    public function bulletin(string $matricule): void
    {
        $annee = $this->getCodeAnnee();
        $model = new inscritRepository();
        $eleve = $model->findOne($matricule);
        (!$eleve) && $this->redirect("?p=eleve/liste");
        $notematieres= BulletinFactory::getBulletin($matricule,$annee);
        
        $moyennes= BulletinFactory::getMoyennes($matricule,$annee);
        $notematieres->setMoyennes($moyennes);
        $this->render("eleve/bulletin", ["eleve" => $eleve,'notematieres'=>$notematieres, 'annee' => $this->getNomAnnee(),  "subsidebar" => $this->subsidebar($eleve->matricule??null, 3)]);
    }

    public function resultat(string $matricule): void
    {
        $annee = $this->getCodeAnnee();
        $model = new inscritRepository();
        $eleve = $model->findOne($matricule);
        $matieres=[];
        $notes=[];
        if( $eleve ) {
            $model= new ClasseMatiereRepository();
            $matieres=$model->findByClasse($eleve->codeClasse);
            $model=new NoteRepository();
            $notes=$model->findAllByMatriculeAndAnnee($eleve->matricule,$annee);
            
        }
        $notematieres= new ResultatProvider($eleve,$matieres,$notes);
        
        $this->render("eleve/resultat", ["eleve" => $eleve,'notematieres'=>$notematieres, 'annee' => $this->getNomAnnee(),  "subsidebar" => $this->subsidebar($matricule, 2)]);
    }
    public function form(): void
    {
        $this->render("eleve/form");
    }
    public function traitement(): void
    {
        extract($_POST);
        $model = new EleveRepository();
        $res = $model->insert($matricule, $nom, $isme, $sexe, $dateNaissance, $lieuNaissance, $adresse, $nni);
        if ($res)  $this->redirect("?p=eleve/liste");
        else $this->redirect("?p=eleve/form");
    }

    public function import(): void
    {

        $this->render("eleve/import");
    }
    public function traitementExcel(): void
    {
        if (!isset($_FILES['fichier'])) die("Aucun fichier sélectionné");
        $spreadsheet = IOFactory::load($_FILES['fichier']['tmp_name']);
        $worksheet = $spreadsheet->getActiveSheet();
        $data = $worksheet->toArray();
        $model = new EleveRepository();
        $eleves = $model->findAll();
        $data = array_map(function ($eleve) use ($eleves) {
            $matricules = array_column($eleves, 'matricule');
            $nnis = array_column($eleves, 'nni');

            $element = [];
            $element['matricule'] = $eleve[0] ?? null;
            $element['nom'] = $eleve[1] ?? null;
            $element['isme'] = $eleve[2] ?? null;
            $element['sexe'] = $eleve[3]?? null;
            $element['dateNaissance'] = $eleve[4]?? null;
            $element['lieuNaissance'] = $eleve[5]?? null;
            $element['adresse'] = $eleve[6]?? null;
            $element['nni'] = $eleve[7]?? null;
            $element['statut'] = in_array($element['matricule'], $matricules)|| in_array($element['nni'], $nnis);
            return $element;
        }, $data);

        $this->render("eleve/fichier", ["data" => $data]);
    }
}
