<?php
namespace App\Services\Providers;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\ExamenRepository;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\SalleClasseRepository;
use stdClass;

class ClasseResultatProvider extends InterrogationServiceProvider
{
    public $eleves=[];
    public $matiere;
    
    private $statistiques=[];
   
    private $codeSalleClasse;
    private $codeAnnee;
    private $codeMatiere;
    private $trimestre;
    private $salleClasse;

    private $points=[];
    public function __construct($codeSalleClasse,$codeMatiere,$codeAnnee,$trimestre=null)
    {
        $this->codeSalleClasse=$codeSalleClasse;
        $this->codeAnnee=$codeAnnee;
        $this->trimestre=$trimestre??$_REQUEST['trimestre']??self::C3_TYPE;     
        $this->codeMatiere=$codeMatiere; 
        
        $this->setData();
    }

    public function setType($trimestre){
        $this->trimestre=$trimestre;
    }

    protected function setData(){
        $ripos=new inscritRepository();
        $this->eleves=$ripos->findAllByClasseForBulletin($this->codeSalleClasse);
        if(!$this->eleves)return;
        $ripos1=new SalleClasseRepository();
        $this->salleClasse=$ripos1->findOneByCode($this->codeSalleClasse);
        $ripos2= new ClasseMatiereRepository();
      $this->matiere=$ripos2->findOneByClasseAndMatiereAndAnnee($this->salleClasse->codeClasse,$this->codeMatiere,$this->codeAnnee);
      if(!$this->matiere) die("matiere non trouvée");
      $this->matieres[$this->matiere->codeMatiere]=$this->matiere;
        $ripos3=new ExamenRepository();
        $this->examens[$this->matiere->codeMatiere]=$ripos3->findAllByClasseAndMatiereForBulletin($this->codeSalleClasse,$this->matiere->codeMatiere);
        $ripos4=new NoteRepository();
        $notes=$ripos4->findAllByClasseAndMatiereForBulletin($this->codeSalleClasse,$this->matiere->codeMatiere);
        foreach ($this->eleves as  $eleve) {
            foreach ($this->examens[$this->matiere->codeMatiere] as $examen) {
               foreach ($notes as $note) {
                   if($note->codeExamen==$examen->codeExamen&&$eleve->matricule==$note->matricule){
                       $this->notes[$eleve->matricule][$examen->codeEvaluation]=$note;
                       unset($note);
                       continue;
                   }
               }
            }
        }
       
    }
    public function getClasseResultat()
    {
        $data=[];
        $this->points=[];
       
        foreach($this->eleves as $eleve){
          
                 $eleve=$this->constructElement($eleve,$eleve->matricule);  
             
          
            $eleve->mi=$this->trimestre==self::C1_TYPE?$this->getInterogationMoyenne1($eleve->matricule,$this->matiere->codeMatiere):
             ($this->trimestre==self::C2_TYPE?$this->getInterogationMoyenne2($eleve->matricule,$this->matiere->codeMatiere):
          $this->getInterogationMoyenne3($eleve->matricule,$this->matiere->codeMatiere));
          $eleve->miX3=$eleve->mi===null?0: $eleve->mi*self::COEFF_INTERRO;
          [$eleve->total,$eleve->moyenne]=$this->getTotalAndMoyenne($eleve,$this->trimestre);
            $eleve->coefficient=$this->matiere->coefficientClasseMatiere;
            $eleve->pts=$eleve->moyenne*$eleve->coefficient;
            $this->points[]=$eleve->pts;
            $eleve->mi=round($eleve->mi??0,2);
            $eleve->miX3=round($eleve->miX3,2);
            $eleve->points=round($eleve->pts,2);
            $eleve->moyenne=round($eleve->moyenne,2);
            $eleve->total=round($eleve->total,2);
            $data[]=$eleve;
        }
        $data=array_map(function($e){
            $e->rang=$this->getRang($e->pts);
            return $e;
        },$data
            );
            if(!empty($_REQUEST['merite'])){
                usort($data,fn($a,$b)=>$b->pts<=>$a->pts);
            }
        $service=new StatistiqueService();
        $service->process($data);
        $this->statistiques = $service->statistiques;
           
        return $data;
    }

    public function getStatistiques() {
      
        return $this->statistiques;
    }
    public function getRang($note){
        usort($this->points,fn($a,$b)=>$b<=>$a);
        return array_search($note,$this->points)+1;
    }
    
   

}

class StatistiqueService
{
    public array $statistiques=[];
    private array $fields = ['i1','i2','i3','i4','i5','i6','c1','c2','c3','mi', 'moyenne'];
    private array $intervals = [];

    public function __construct()
    {
       
        $this->intervals = [
            'note_egale_0' => fn($n) => $n == 0,
            'note_entre_0_et_5' => fn($n) => $n > 0 && $n < 5,
            'note_entre_5_et_10' => fn($n) => $n >= 5 && $n < 10,
            'note_entre_10_et_15' => fn($n) => $n >= 10 && $n < 15,
            'note_entre_15_et_20' => fn($n) => $n >= 15 && $n <= 20,
            'note_inferieure_9' => fn($n) => $n < 9,
            'note_superieure_ou_egale_9' => fn($n) => $n >= 9,
            'note_inferieure_10' => fn($n) => $n < 10,
            'note_superieure_ou_egale_10' => fn($n) => $n >= 10,
            'max_note' => 20,
            'min_note' => 0,
        ];
        foreach ($this->fields as $field) {
            $this->statistiques[$field] = [];
            foreach ($this->intervals as $key => $callback) {
                $this->statistiques[$field][$key] = 0;
            }
        }

        // Initialiser tous les compteurs à 0
       
    }
  
    
    private function getNote($value, string $field): float
    {
       
        $note = $value->$field ?? 0;
        if (is_object($note)) {
            return $note->note ?? 0;
        }
        return floatval($note);
    }
   
    

    public function process(array $data): void
    {
        $this->statistiques['total'] = count($data);
$tab=$data; 
        foreach ($data as $item) {
            foreach ($this->fields as $field) {
                $note = $this->getNote($item, $field);
                foreach ($this->intervals as $key => $callback) {
                    if($key=='max_note'){
                        $this->statistiques[$field][$key] = max(array_map(fn($e)=>$this->getNote($e,$field),$tab));
                        continue;
                    }
                   elseif($key=='min_note'){
                    $this->statistiques[$field][$key] = min(array_map(fn($e)=>$this->getNote($e,$field),$tab));
                        continue;
                    }
                   elseif($callback($note)) {
                        $this->statistiques[$field][$key] += 1;
                    }
                }
            }
        }
    }
}

                   
   
                  
   