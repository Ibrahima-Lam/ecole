<?php
namespace App\Services\Providers;


class Bulletin3Provider extends BulletinProvider{
    private const COEFF_C1=1;
    private const COEFF_C2=2;
    private const COEFF_C3=3;
    private const COEFF_INTERRO=3;
    private const COEFF_TOTAL=9;
    public const INTERRO_MAX=1;
    public const INTERRO_SOMME2=2;
    public const INTERRO_SOMME3=3;
    public const INTERRO_SOMME4=4;
    public const INTERRO_SOMME5=5;
    public const INTERRO_SOMME6=6;
    public const INTERRO_SOMME=-1;

    private int $interro_params;
    public function __construct(\stdClass $eleve, array $matieres,array $examens, array $notes, array $moyennes=[], int $interro_params=self::INTERRO_SOMME){
        parent::__construct($eleve, $matieres, $examens,$notes);
        $this->moyennes=$moyennes;
        $this->interro_params=$interro_params;
        
    }

    public function getExamens($codeMatiere){
        
return array_filter($this->examens,function ($exam)use($codeMatiere) {
    return $exam->typeEvaluation=='devoir'&&$exam->statutExamen!=0&&$exam->codeMatiere==$codeMatiere;
});
    }
    
    public function getMatieresWithNotesAndMoyenne():array{
        if(!empty($this->data)) {
            return $this->data;
        }
        $matieresWithNotesAndMoyenne=$this->getMatieresWithNotes();
        $points=0;
        foreach($matieresWithNotesAndMoyenne as $matiereWithNotesAndMoyenne){
            $notes=[];
            $matiereWithNotesAndMoyenne->d1=null;
            $matiereWithNotesAndMoyenne->d2=null;
            $matiereWithNotesAndMoyenne->d3=null;
            $matiereWithNotesAndMoyenne->d4=null;
            $matiereWithNotesAndMoyenne->d5=null;
            $matiereWithNotesAndMoyenne->d6=null;

             $matiereWithNotesAndMoyenne->i1=null;
            $matiereWithNotesAndMoyenne->i2=null;
            $matiereWithNotesAndMoyenne->i3=null;
            $matiereWithNotesAndMoyenne->i4=null;
            $matiereWithNotesAndMoyenne->i5=null;
            $matiereWithNotesAndMoyenne->i6=null;

            $matiereWithNotesAndMoyenne->c1=null;
            $matiereWithNotesAndMoyenne->c2=null;
            $matiereWithNotesAndMoyenne->c3=null; 
            
            $matiereWithNotesAndMoyenne->e1=null;
            $matiereWithNotesAndMoyenne->e2=null;
            $matiereWithNotesAndMoyenne->e3=null;
            foreach($matiereWithNotesAndMoyenne->notes as $note){
                switch ($note->codeEvaluation) {
                    case 'D1':
                        $matiereWithNotesAndMoyenne->d1=(float) $note->note;
                        $matiereWithNotesAndMoyenne->i1=$note;
                        $notes['D1']=$note;
                        break;
                    case 'D2':
                        $matiereWithNotesAndMoyenne->d2=(float) $note->note;
                        $matiereWithNotesAndMoyenne->i2=$note;
                        $notes['D2']=$note;
                        break; 
                    case 'D3':
                        $matiereWithNotesAndMoyenne->d3=(float) $note->note;
                        $matiereWithNotesAndMoyenne->i3=$note;
                        $notes['D3']=$note;
                        break; 
                         case 'D4':
                        $matiereWithNotesAndMoyenne->d4=(float) $note->note;
                        $matiereWithNotesAndMoyenne->i4=$note;
                        $notes['D4']=$note;
                        break; 
                         case 'D5':
                        $matiereWithNotesAndMoyenne->d5=(float) $note->note;
                        $matiereWithNotesAndMoyenne->i5=$note;
                        $notes['D5']=$note;
                        break; 
                         case 'D6':
                        $matiereWithNotesAndMoyenne->d6=(float) $note->note;
                        $matiereWithNotesAndMoyenne->i6=$note;
                        $notes['D6']=$note;
                        break;
                    case 'C1':
                        $matiereWithNotesAndMoyenne->c1=(float) $note->note;
                        $matiereWithNotesAndMoyenne->e1=$note;
                        $notes['C1']=$note;
                        break;
                    case 'C2':
                        $matiereWithNotesAndMoyenne->c2=(float) $note->note;
                        $matiereWithNotesAndMoyenne->e2=$note;

                        $notes['C2']=$note;
                        break;
                    case 'C3':
                        $matiereWithNotesAndMoyenne->c3=(float) $note->note;
                        $matiereWithNotesAndMoyenne->e3=$note;
                        $notes['C3']=$note;
                        break;
                }
            }
            $matiereWithNotesAndMoyenne->interrogation=$this->getInterogationMoyenne($notes,$matiereWithNotesAndMoyenne->matiere->codeMatiere);
            $matiereWithNotesAndMoyenne->totalInterrogation=$matiereWithNotesAndMoyenne->interrogation*self::COEFF_INTERRO;
            $matiereWithNotesAndMoyenne->total=($matiereWithNotesAndMoyenne->c1??0)*self::COEFF_C1+($matiereWithNotesAndMoyenne->c2??0)*self::COEFF_C2+($matiereWithNotesAndMoyenne->c3??0)*self::COEFF_C3+$matiereWithNotesAndMoyenne->totalInterrogation;
            $matiereWithNotesAndMoyenne->moyenne=$matiereWithNotesAndMoyenne->total/self::COEFF_TOTAL;
            $matiereWithNotesAndMoyenne->points=$matiereWithNotesAndMoyenne->moyenne*$matiereWithNotesAndMoyenne->matiere->coefficientClasseMatiere;
            $points+=$matiereWithNotesAndMoyenne->points;

            $matiereWithNotesAndMoyenne->interrogation=round($matiereWithNotesAndMoyenne->interrogation,2);
            $matiereWithNotesAndMoyenne->totalInterrogation=round($matiereWithNotesAndMoyenne->totalInterrogation,2);
            $matiereWithNotesAndMoyenne->moyenne=round($matiereWithNotesAndMoyenne->moyenne,2);
            $matiereWithNotesAndMoyenne->total=round($matiereWithNotesAndMoyenne->total,2);
            $matiereWithNotesAndMoyenne->points=round($matiereWithNotesAndMoyenne->points,2);

            $matiereWithNotesAndMoyenne->c1x1=!$matiereWithNotesAndMoyenne->c1?null: round($matiereWithNotesAndMoyenne->c1*self::COEFF_C1,2);
            $matiereWithNotesAndMoyenne->c2x2=!$matiereWithNotesAndMoyenne->c2?null: round($matiereWithNotesAndMoyenne->c2*self::COEFF_C2,2);
            $matiereWithNotesAndMoyenne->c3x3=!$matiereWithNotesAndMoyenne->c3?null: round($matiereWithNotesAndMoyenne->c3*self::COEFF_C3,2);
                }
        $this->points=round($points,2);
        $this->data=$matieresWithNotesAndMoyenne;
        return $matieresWithNotesAndMoyenne;
    }

    private function getInterogationMoyenne($tab,$codeMatiere):float{
        $examens=$this->getExamens($codeMatiere);
        
        $codes=array_map(function ($exam) {
            return $exam->codeEvaluation;
        },$examens);
        $notes=array_filter($tab,function ($note)use($codes) {
            return in_array($note->codeEvaluation,$codes);
        });
        $notes=array_map(function ($note) {
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
            case self::INTERRO_SOMME:
                return array_sum($notes)/(count($examens)?:1);
        }
        return array_sum($notes)/$this->interro_params;
    }
    
   

}
?>