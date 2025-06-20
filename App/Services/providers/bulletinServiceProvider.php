<?php
namespace App\Services\Providers;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\ExamenRepository;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\NoteRepository;
use App\Services\src\AnneeScolaireService;
use Core\Services\Request;
use stdClass;

class bulletinServiceProvider 
{
   
    
    private const COEFF_C1=1;
    private const COEFF_C2=2;
    private const COEFF_C3=3;
    private const COEFF_INTERRO=3;
    private const COEFF_TOTAL_C1=4;
    private const COEFF_TOTAL_C2=6;
    private const COEFF_TOTAL_C3=9;
    public const INTERRO_MAX=1;
    public const INTERRO_SOMME2=2;
    public const INTERRO_SOMME3=3;
    public const INTERRO_SOMME4=4;
    public const INTERRO_SOMME5=5;
    public const INTERRO_SOMME6=6;
    public const INTERRO_SOMME=-1;

    private int $interro_params=self::INTERRO_SOMME;
    private $matricule;
    public $eleve;
    private $matieres;
    private $examens=[];
    private $notes=[];
    private $bulletin3;
    private $bulletin2;
    private $bulletin1;
    protected $points_tab3=[];
    protected $points_tab1=[];
    protected $points_tab2=[];
    protected $absences;
    public function __construct(private AnneeScolaireService $anneeScolaireService,$matricule=null) {
    $this->matricule=$matricule;
    
    if($matricule)$this->setData();
    }
   
public function setInterroParams($interro_params){
    $this->interro_params=$interro_params;
}

    public function setMatricule($matricule) {
        $this->matricule=$matricule;
        $this->setData();
    }
   private function setData(){
    if($this->matricule){
        $ripos=new inscritRepository();
        $this->eleve=$ripos->findOneByMatriculeAndAnnee($this->matricule,$this->anneeScolaireService->getCodeAnnee());
        if(!$this->eleve)return;
        $ripos2= new ClasseMatiereRepository();
        $this->matieres=$ripos2->findByClasse($this->eleve->codeClasse);
      
        $ripos3=new ExamenRepository();
        foreach ($this->matieres as $matiere) {
            $this->examens[$matiere->codeMatiere]=$ripos3->findAllByClasseAndMatiere($this->eleve->codeSalleClasse,$matiere->codeMatiere);
        }
        $ripos4=new NoteRepository();
        $notes=$ripos4->findAllByMatriculeAndClasse($this->matricule,$this->eleve->codeSalleClasse);
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
            $element=new stdClass();
            $element->matiere=$matiere;
            $element->i1=$this->notes[$matiere->codeMatiere]['D1']??null;
            $element->i2=$this->notes[$matiere->codeMatiere]['D2']??null;
            $element->i3=$this->notes[$matiere->codeMatiere]['D3']??null;
            $element->i4=$this->notes[$matiere->codeMatiere]['D4']??null;
            $element->i5=$this->notes[$matiere->codeMatiere]['D5']??null;
            $element->i6=$this->notes[$matiere->codeMatiere]['D6']??null;

            $element->c1=$this->notes[$matiere->codeMatiere]['C1']??null;
            $element->c2=$this->notes[$matiere->codeMatiere]['C2']??null;
            $element->c3=$this->notes[$matiere->codeMatiere]['C3']??null;
            $element->mi=$this->getInterogationMoyenne1($matiere->codeMatiere);
           
            $element->miX3=$element->mi*self::COEFF_INTERRO;
            $element->total=($element->c1?->note??0)*self::COEFF_C1+($element->c2?->note??0);
            $element->moyenne=$element->total/self::COEFF_TOTAL_C1;
            $element->points=$element->moyenne*$matiere->coefficientClasseMatiere;
            $points+=$element->points;
            
            $element->mi=round($element->mi,2);
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
        return new bulletinProviderEntity($this->eleve,$notes,$points,$this->matieres,$this->points_tab1,$this->absences);
    } 
    public function getBulletin2($points_tab=[]):BulletinProviderEntity{
        if($points_tab) $this->points_tab2=$points_tab;
        $this->bulletin2?->setPointsTab($this->points_tab2);
        if(!empty($this->bulletin2))return $this->bulletin2;
        $points=0;
        $notes=[];
        foreach ($this->matieres as $key => $matiere) {
            $element=new stdClass();
            $element->matiere=$matiere;
            $element->i1=$this->notes[$matiere->codeMatiere]['D1']??null;
            $element->i2=$this->notes[$matiere->codeMatiere]['D2']??null;
            $element->i3=$this->notes[$matiere->codeMatiere]['D3']??null;
            $element->i4=$this->notes[$matiere->codeMatiere]['D4']??null;
            $element->i5=$this->notes[$matiere->codeMatiere]['D5']??null;
            $element->i6=$this->notes[$matiere->codeMatiere]['D6']??null;

            $element->c1=$this->notes[$matiere->codeMatiere]['C1']??null;
            $element->c2=$this->notes[$matiere->codeMatiere]['C2']??null;
            $element->c3=$this->notes[$matiere->codeMatiere]['C3']??null;
            $element->mi=$this->getInterogationMoyenne2($matiere->codeMatiere);
           
            $element->miX3=$element->mi*self::COEFF_INTERRO;
            $element->total=($element->c1?->note??0)*self::COEFF_C1+($element->c2?->note??0)*self::COEFF_C2+$element->miX3;
            $element->moyenne=$element->total/self::COEFF_TOTAL_C2;
            $element->points=$element->moyenne*$matiere->coefficientClasseMatiere;
            $points+=$element->points;
            
            $element->mi=round($element->mi,2);
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
        return new bulletinProviderEntity($this->eleve,$notes,$points,$this->matieres,$this->points_tab2,$this->absences);
    }
    
    public function getBulletin3($points_tab=[]):BulletinProviderEntity{
      if($points_tab) $this->points_tab3=$points_tab;
        $this->bulletin3?->setPointsTab($this->points_tab3);
        if(!empty($this->bulletin3))return $this->bulletin3;
        $points=0;
        $notes=[];
        foreach ($this->matieres as $key => $matiere) {
            $element=new stdClass();
            $element->matiere=$matiere;
            $element->i1=$this->notes[$matiere->codeMatiere]['D1']??null;
            $element->i2=$this->notes[$matiere->codeMatiere]['D2']??null;
            $element->i3=$this->notes[$matiere->codeMatiere]['D3']??null;
            $element->i4=$this->notes[$matiere->codeMatiere]['D4']??null;
            $element->i5=$this->notes[$matiere->codeMatiere]['D5']??null;
            $element->i6=$this->notes[$matiere->codeMatiere]['D6']??null;

            $element->c1=$this->notes[$matiere->codeMatiere]['C1']??null;
            $element->c2=$this->notes[$matiere->codeMatiere]['C2']??null;
            $element->c3=$this->notes[$matiere->codeMatiere]['C3']??null;
            $element->mi=$this->getInterogationMoyenne3($matiere->codeMatiere);
           
            $element->miX3=$element->mi*self::COEFF_INTERRO;
            $element->total=($element->c1?->note??0)*self::COEFF_C1+($element->c2?->note??0)*self::COEFF_C2+($element->c3?->note??0)*self::COEFF_C3+$element->miX3;
            $element->moyenne=$element->total/self::COEFF_TOTAL_C3;
            $element->points=$element->moyenne*$matiere->coefficientClasseMatiere;
            $points+=$element->points;
            
            $element->mi=round($element->mi,2);
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
        return new bulletinProviderEntity($this->eleve,$notes,$points,$this->matieres,$this->points_tab3,$this->absences);
    }



  
    private function getInterogationMoyenne1($codeMatiere):float{
        $notes=$this->notes[$codeMatiere]??[];
      
        if(empty($notes))return 0;
        $examens=array_filter($this->examens[$codeMatiere],fn ($exam) => $exam->typeEvaluation=='devoir'&&$exam->statutExamen!=0&&$exam->indiceEvaluation<=2);
       
        $notes=array_map(function ($note) {
            if($note->typeEvaluation!='devoir'||$note->statutExamen==0)return 0;
            return $note->note;
        },$notes);
        sort($notes,SORT_NUMERIC);
        $notes=array_reverse($notes);
        $notes[]=0;
        
        switch ($this->interro_params) {
            case self::INTERRO_MAX:
                return max($notes);
            case self::INTERRO_SOMME2:
                $notes=array_slice($notes,0,2);
                return array_sum($notes)/2;
            default:
                return array_sum($notes)/(count($examens)?:1);
        }
    } 
    private function getInterogationMoyenne2($codeMatiere):float{
        $notes=$this->notes[$codeMatiere]??[];
      
        if(empty($notes))return 0;
        $examens=array_filter($this->examens[$codeMatiere],fn ($exam) => $exam->typeEvaluation=='devoir'&&$exam->statutExamen!=0&&$exam->indiceEvaluation<=4);
       
        $notes=array_map(function ($note) {
            if($note->typeEvaluation!='devoir'||$note->statutExamen==0)return 0;
            return $note->note;
        },$notes);
        sort($notes,SORT_NUMERIC);
        $notes=array_reverse($notes);
        $notes[]=0;
        
        switch ($this->interro_params) {
            case self::INTERRO_MAX:
                return max($notes);
            case self::INTERRO_SOMME2:
                $notes=array_slice($notes,0,2);
                return array_sum($notes)/2;
            default:
                return array_sum($notes)/(count($examens)?:1);
        }
    } 
    private function getInterogationMoyenne3($codeMatiere):float{
        $notes=$this->notes[$codeMatiere]??[];
      
        if(empty($notes))return 0;
        $examens=array_filter($this->examens[$codeMatiere],fn ($exam) => $exam->typeEvaluation=='devoir'&&$exam->statutExamen!=0);
       
        $notes=array_map(function ($note) {
            if($note->typeEvaluation!='devoir'||$note->statutExamen==0)return 0;
            return $note->note;
        },$notes);
        sort($notes,SORT_NUMERIC);
        $notes=array_reverse($notes);
        $notes[]=0;
      
        
        switch ($this->interro_params) {
            case self::INTERRO_MAX:
                return max($notes);
            case self::INTERRO_SOMME2:
                $notes=array_slice($notes,0,2);
                return array_sum($notes)/2;
            case self::INTERRO_SOMME3:
                $notes=array_slice($notes,0,3);
                return array_sum($notes)/3;
            case self::INTERRO_SOMME4:
                $notes=array_slice($notes,0,4);
                return array_sum($notes)/4;
            case self::INTERRO_SOMME5:
                $notes=array_slice($notes,0,5);
                return array_sum($notes)/5;
            case self::INTERRO_SOMME6:
                $notes=array_slice($notes,0,6);
                return array_sum($notes)/6;
            default:
                return array_sum($notes)/(count($examens)?:1);
        }
    }
   

}

?>