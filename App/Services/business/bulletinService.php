<?php
namespace App\Services\business;

use App\Repositories\ClasseMatiereRepository;
use App\Repositories\ExamenRepository;
use App\Repositories\inscritRepository;
use App\Repositories\NoteRepository;
use App\Services\src\AbsenceService;
use App\Services\src\AnneeScolaireService;
use App\Entities\Bulletin;

class bulletinService extends InterrogationService
{
    
   
    private $bulletin3;
    private $bulletin2;
    private $bulletin1;
    protected $points_tab3=[];
    protected $points_tab1=[];
    protected $points_tab2=[];
    protected $absences;

    protected $matricule;
    public $eleve;
    public function __construct(private AnneeScolaireService $anneeScolaireService,private AbsenceService $absenceService,$matricule=null,$matieres=[]) {
    $this->matricule=$matricule;
    $this->matieres=$matieres;
    if($matricule)$this->setData();
    }
    public function setMatricule($matricule) {
        $this->matricule=$matricule;
        $this->setData();
    }

   protected function setData(){
    if($this->matricule){
        $ripos=new inscritRepository();
        $this->eleve=$ripos->findOneByMatriculeAndAnneeForBulletin($this->matricule,$this->anneeScolaireService->getCodeAnnee());
        if(!$this->eleve)return;
        $ripos2= new ClasseMatiereRepository();
     if(!$this->matieres) $this->matieres=$ripos2->findAllByClasseAndAnneeForBulletin($this->eleve->codeClasse,$this->anneeScolaireService->getCodeAnnee());
      
        $ripos3=new ExamenRepository();
        foreach ($this->matieres as $matiere) {
            $this->examens[$matiere->codeMatiere]=$ripos3->findAllByClasseAndMatiereForBulletin($this->eleve->codeSalleClasse,$matiere->codeMatiere);
        }
        $ripos4=new NoteRepository();
        $notes=$ripos4->findAllByMatriculeAndClasseForBulletin($this->matricule,$this->eleve->codeSalleClasse);
        foreach ($this->examens as  $examensmatiere) {
            foreach ($examensmatiere as $examen) {
               foreach ($notes as $note) {
                   if($note->codeExamen==$examen->codeExamen){
                       $this->notes[$note->codeMatiere][$examen->codeEvaluation]=$note;
                       unset($note);
                   }
               }
            }
        }
    }
   
    }
    public function getBulletin1($points_tab=[]){
        if($points_tab) $this->points_tab1=$points_tab;
        $this->bulletin1?->setPointsTab($this->points_tab1);
        if(!empty($this->bulletin1))return $this->bulletin1;
        $points=0;
        $notes=[];
        foreach ($this->matieres as $key => $matiere) {
            $element=new \stdClass();
            $element->matiere=$matiere;
            $element=$this->constructElement($element,$matiere->codeMatiere);
            $element->mi=$this->getInterogationMoyenne1($matiere->codeMatiere,$matiere->codeMatiere);
           
            $element->miX3=$element->mi===null?0: $element->mi*self::COEFF_INTERRO;
            [$element->total,$element->moyenne]=$this->getTotalAndMoyenne($element,self::C1_TYPE);
            $element->points=$element->moyenne*$matiere->coefficientClasseMatiere;
            $points+=$element->points;
            
            $element->mi=round($element->mi??0,2);
            $element->miX3=round($element->miX3,2);
            $element->total=round($element->total,2);
            $element->moyenne=round($element->moyenne,2);
            $element->points=round($element->points,2);

            $element->c1x1=!$element->c1?->note?null: round($element->c1?->note*self::COEFF_C1,2);
            $element->c2x2=!$element->c2?->note?null: round($element->c2?->note*self::COEFF_C2,2);
            $element->c3x3=!$element->c3?->note?null: round($element->c3?->note*self::COEFF_C3,2);

            $notes[$key]=$element;
        }
        $points=round($points,2);
       $abs=$this->absenceService->findOneByMatriculeAndTrimestreAndAnnee($this->matricule,1);
        if ($abs) {
           $this->absences=$abs->nombreAbsence;
        }
        $bulletin=new Bulletin($this->eleve,$notes,$points,$this->matieres,$this->points_tab1,$this->absences);
        $this->bulletin1=$bulletin;
        return $bulletin;
    } 
    public function getBulletin2($points_tab=[]):Bulletin{
        if($points_tab) $this->points_tab2=$points_tab;
        $this->bulletin2?->setPointsTab($this->points_tab2);
        if(!empty($this->bulletin2))return $this->bulletin2;
        $points=0;
        $notes=[];
        foreach ($this->matieres as $key => $matiere) {
            $element=new \stdClass();
            $element->matiere=$matiere;
           $element=$this->constructElement($element,$matiere->codeMatiere);
            $element->mi=$this->getInterogationMoyenne2($matiere->codeMatiere,$matiere->codeMatiere);
           
            $element->miX3=$element->mi===null?0: $element->mi*self::COEFF_INTERRO;
            [$element->total,$element->moyenne]=$this->getTotalAndMoyenne($element,self::C2_TYPE);
            $element->points=$element->moyenne*$matiere->coefficientClasseMatiere;
            $points+=$element->points;
            
            $element->mi=round($element->mi??0,2);
            $element->miX3=round($element->miX3,2);
            $element->total=round($element->total,2);
            $element->moyenne=round($element->moyenne,2);
            $element->points=round($element->points,2);

            $element->c1x1=!$element->c1?->note?null: round($element->c1?->note*self::COEFF_C1,2);
            $element->c2x2=!$element->c2?->note?null: round($element->c2?->note*self::COEFF_C2,2);
            $element->c3x3=!$element->c3?->note?null: round($element->c3?->note*self::COEFF_C3,2);

            $notes[$key]=$element;
        }
        $points=round($points,2);
        $abs=$this->absenceService->findOneByMatriculeAndTrimestreAndAnnee($this->matricule,2);
        if ($abs) {
           $this->absences=$abs->nombreAbsence;
        }
        $bulletin=new Bulletin($this->eleve,$notes,$points,$this->matieres,$this->points_tab2,$this->absences);
        $this->bulletin2=$bulletin;
        return $bulletin;
    }
    
    public function getBulletin3($points_tab=[]):Bulletin{
      if($points_tab) $this->points_tab3=$points_tab;
        $this->bulletin3?->setPointsTab($this->points_tab3);
        if(!empty($this->bulletin3))return $this->bulletin3;
        $points=0;
        $notes=[];
        foreach ($this->matieres as $key => $matiere) {
            $element=new \stdClass();
            $element->matiere=$matiere;
          $element=$this->constructElement($element,$matiere->codeMatiere);
            $element->mi=$this->getInterogationMoyenne3($matiere->codeMatiere,$matiere->codeMatiere);
           
            $element->miX3=$element->mi===null?0: $element->mi*self::COEFF_INTERRO;
            [$element->total,$element->moyenne]=$this->getTotalAndMoyenne($element,self::C3_TYPE);
            $element->points=$element->moyenne*$matiere->coefficientClasseMatiere;
            $points+=$element->points;
            
            $element->mi=round($element->mi??0,2);
            $element->miX3=round($element->miX3,2);
            $element->total=round($element->total,2);
            $element->moyenne=round($element->moyenne,2);
            $element->points=round($element->points,2);

            $element->c1x1=!$element->c1?->note?null: round($element->c1?->note*self::COEFF_C1,2);
            $element->c2x2=!$element->c2?->note?null: round($element->c2?->note*self::COEFF_C2,2);
            $element->c3x3=!$element->c3?->note?null: round($element->c3?->note*self::COEFF_C3,2);


            $notes[$key]=$element;
        }
        $points=round($points,2);
        $abs=$this->absenceService->findOneByMatriculeAndTrimestreAndAnnee($this->matricule,    3);
        if ($abs) {
           $this->absences=$abs->nombreAbsence;
        }
        $bulletin=new Bulletin($this->eleve,$notes,$points,$this->matieres,$this->points_tab3,$this->absences);
        $this->bulletin3=$bulletin;
        return $bulletin;
    }
}

?>