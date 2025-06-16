<?php
namespace App\Services\Providers;

use stdClass;

class ClasseResultatProvider
{
    private const COEFF_INTERRO=3;
    private const COEFF_C1=1;
    private const COEFF_C2=2;
    private const COEFF_C3=3;
    private const COEFF_TOTAL=9;
    public $eleves=[];
    public $matiere;
    public $notes=[];
    public $examens=[];

    private $interrogations=[];
    private $codeInterros=[];

    private $statistiques;
    public function __construct($matiere,$eleves,$notes,$examens)
    {
        $this->matiere=$matiere;
        $this->eleves=$eleves;
        $this->notes=$notes;
        $this->examens=$examens;
        $this->statistiques=new stdClass();
        $this->interrogations=array_filter($examens,function ($exam) {
            return $exam->typeEvaluation == 'devoir'&&$exam->statutExamen!=0;
        });
        $this->codeInterros=array_map(function ($exam) {
            return $exam->codeEvaluation;
        }, $this->interrogations);
    }
    public function getClasseResultat()
    {
        $data=[];
       
        foreach($this->eleves as $eleve){
            $eleve->matiere=$this->matiere;
            $eleve->notes=[];
            $notes=[];
                foreach($this->notes as $note){
                    if($note->matricule==$eleve->matricule && $note->codeMatiere==$this->matiere->codeMatiere){
                        $eleve->notes[$note->codeEvaluation]=$note;
                      if($note->statutExamen)  $notes[$note->codeEvaluation]=$note;
                    }
                
            }
            $eleve->moyenneInterro=$this->getMoyenneInterro($notes);
            $eleve->total=(($eleve->notes['C1']?->note??0)*self::COEFF_C1+($eleve->notes['C2']?->note??0)*self::COEFF_C2+($eleve->notes['C3']?->note??0)*self::COEFF_C3+$eleve->moyenneInterro*self::COEFF_INTERRO);
            $eleve->moyenne=$eleve->total/self::COEFF_TOTAL;
            $eleve->coefficient=$this->matiere->coefficientClasseMatiere;
            $eleve->points=$eleve->moyenne*$eleve->coefficient;

            $eleve->moyenneInterro=round($eleve->moyenneInterro,2);
            $eleve->points=round($eleve->points,2);
            $eleve->moyenne=round($eleve->moyenne,2);
            $eleve->total=round($eleve->total,2);
            $data[]=$eleve;
        }
        $this->setStatistiques($data);
        return $data;
    }

    public function getStatistiques() {
        return $this->statistiques;
    }

    private function setStatistiques($data) {
        $this->statistiques->i1=0;
        $this->statistiques->i2=0;
        $this->statistiques->i3=0;
        $this->statistiques->i4=0;
        $this->statistiques->admis=0;
        $this->statistiques->nonAdmis=0;
        foreach ($data as  $value) {
            if ($value->moyenne<5) {
                $this->statistiques->i1++;
            } elseif ($value->moyenne<10) {
                $this->statistiques->i2++;
            }elseif ($value->moyenne<15) {
                $this->statistiques->i3++;
            }else{
                $this->statistiques->i4++;
            }
        }
        $this->statistiques->admis= $this->statistiques->i3+ $this->statistiques->i4;
        $this->statistiques->nonAdmis= $this->statistiques->i1+ $this->statistiques->i2;
    }
    private function getMoyenneInterro($notes)
    {
        $moyenneInterro=0;
        $total=count($this->codeInterros)?:1;
        foreach($this->codeInterros as $code){
            $moyenneInterro+=$notes[$code]?->note??0;
        }
        $moyenneInterro/=$total;
    
        return $moyenneInterro;
    }

}
                   
   
                  
   