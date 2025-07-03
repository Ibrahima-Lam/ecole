<?php
namespace App\Services\business;

abstract class InterrogationService{
    protected const C1_TYPE=1;
    protected const C2_TYPE=2;
    protected const C3_TYPE=3;
    
    protected const C1_KEY='C1';
    protected const C2_KEY='C2';
    protected const C3_KEY='C3';
    protected const I1_KEY='D1';
    protected const I2_KEY='D2';
    protected const I3_KEY='D3';
    protected const  I4_KEY='D4';
    protected const  I5_KEY='D5';
    protected const  I6_KEY='D6';
    protected const COEFF_C1=1;
    protected const COEFF_C2=2;
    protected const COEFF_C3=3;
    protected const COEFF_INTERRO=3;
    protected const COEFF_TOTAL_C1=5;

    protected const COEFF_TOTAL_C2=5;

    protected const COEFF_TOTAL_C3=9;
    public const INTERRO_MAX=1;
    public const INTERRO_SOMME2=2;
    public const INTERRO_SOMME3=3;
    public const INTERRO_SOMME4=4;
    public const INTERRO_SOMME5=5;
    public const INTERRO_SOMME6=6;
    public const INTERRO_SOMME=-1;
    protected $interro_params=self::INTERRO_SOMME;
    protected $matieres;
    public $examens=[];
    public $notes=[];

    abstract protected function setData();
    public function setInterroParams($interro_params){
        $this->interro_params=$interro_params;
    }

    protected function constructElement($element,$key){
      
        $element->i1=$this->notes[$key][self::I1_KEY]??null;
        $element->i2=$this->notes[$key][self::I2_KEY]??null;
        $element->i3=$this->notes[$key][self::I3_KEY]??null;
        $element->i4=$this->notes[$key][self::I4_KEY]??null;
        $element->i5=$this->notes[$key][self::I5_KEY]??null;
        $element->i6=$this->notes[$key][self::I6_KEY]??null;

        $element->c1=$this->notes[$key][self::C1_KEY]??null;
        $element->c2=$this->notes[$key][self::C2_KEY]??null;
        $element->c3=$this->notes[$key][self::C3_KEY]??null;
        return $element;
    }

    protected function getTotalAndMoyenne($element, $type){
        $type=intval($type);
       $total= match($type){
            self::C1_TYPE=>$element->mi===null?($element->c1?->note??0): $element->mi*2+($element->c1?->note??0)*3,
            self::C2_TYPE=>$element->mi===null?($element->c1?->note??0)+($element->c2?->note??0)*2: $element->mi*2+($element->c1?->note??0)+($element->c2?->note??0)*2,
            self::C3_TYPE=>($element->c1?->note??0)*self::COEFF_C1+($element->c2?->note??0)*self::COEFF_C2+($element->c3?->note??0)*self::COEFF_C3+$element->miX3??0,
        }; 
        $moyenne= match($type){
            self::C1_TYPE=>$element->mi===null?$total:$total/self::COEFF_TOTAL_C1,
            self::C2_TYPE=>$element->mi===null?$total/3:$total/self::COEFF_TOTAL_C2,
            self::C3_TYPE=>$total/self::COEFF_TOTAL_C3,
        };
        return [$total,$moyenne];
    }
    
      
    protected function getInterogationMoyenne1($key,$codeMatiere):?float{
        $notes=$this->notes[$key]??[];
      
        if(empty($notes))return 0;
        $callBack=fn ($exam) => $exam->typeEvaluation=='devoir'&&$exam->statutExamen!=0&&$exam->indiceEvaluation<=2&&$exam->trimestreExamen==1;
        $examens=array_filter($this->examens[$codeMatiere],$callBack);
        if(empty($examens))return null;
       
        $notes=array_map(function ($note)use ($callBack) {
            if(!$callBack($note))return 0;
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
    protected function getInterogationMoyenne2($key,$codeMatiere):?float{
        $notes=$this->notes[$key]??[];
        if(empty($notes))return 0;
        $callBack=fn ($exam) => $exam->typeEvaluation=='devoir'&&$exam->statutExamen!=0&&$exam->indiceEvaluation<=4&&$exam->trimestreExamen<=2;
        $examens=array_filter($this->examens[$codeMatiere],$callBack);
       if(empty($examens))return null;
        $notes=array_map(function ($note)use ($callBack) {
            if(!$callBack($note))return 0;
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
    protected function getInterogationMoyenne3($key,$codeMatiere):?float{
        $notes=$this->notes[$key]??[];
      
        if(empty($notes))return 0;
        $examens=array_filter($this->examens[$codeMatiere],fn ($exam) => $exam->typeEvaluation=='devoir'&&$exam->statutExamen!=0);
       if(empty($examens))return null;
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