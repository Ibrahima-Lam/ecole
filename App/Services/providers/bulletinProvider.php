<?php
namespace App\Services\Providers;

abstract class BulletinProvider extends ResultatProvider {
    protected $points_tab=[];
    protected $rang;
    protected $moyenne=0;
    protected $totalCoeff=0;
    protected $totalPoints=0;

    protected $points;
    protected $data=[];

  abstract public function getMatieresWithNotesAndMoyenne():array;
    public function setTabPoints($tab){
        $this->points_tab=$tab;
    }
    public function getMoyenne(?int $precision=null):float{
        if (!empty($this->moyenne)) return $this->moyenne;
        $points=$this->getPoints();
        $totalCoeff=$this->getTotalCoeff();
        if($totalCoeff==0){
            return 0;
        }else{
            $this->moyenne=round($points/$totalCoeff,$precision??2);
            return $this->moyenne;
        }
    }
    public function getMension():string{
        $moyenne=$this->moyenne;
        if($moyenne<5){
            return "Trés Faible";
        }elseif($moyenne<9){
            return "Faible";
        }elseif($moyenne<12){
            return "Passable";
        }elseif($moyenne<14){
            return "Bien";
        }elseif($moyenne<16){
            return "Assez Bien";
        }else{
            return "Trés Bien";
        }

    }

    public function getDecision():string{
        $moyenne=$this->getMoyenne();
        if($moyenne<9){
            return "Non Admis";
        }else{
            return "Admis";
        }
    }
    public function getRang():?int{
        if(!empty($this->rang)) return $this->rang;
        $tabs=$this->points_tab;
        sort($tabs, SORT_NUMERIC);
        $tabs=array_reverse($tabs);
        $rang=1;
        $points=$this->getPoints();
        
        foreach($tabs as $value){
            if($value<=$points){
                $this->rang=$rang;
                return $rang;
            }
            $rang++;
        }
        return null;
    }

    public function getNoteByMatiereAndEvaluation($codeMatiere,$codeEvaluation):?float{
        foreach($this->notes as $note){
            if($note->codeMatiere==$codeMatiere && $note->codeEvaluation==$codeEvaluation){
                return $note->note;
            }
        }
        return null;
    }

    public function getTotalCoeff():float{
        if(!empty($this->totalCoeff)) return $this->totalCoeff;
        $totalCoeff=0;
        foreach($this->matieres as $matiere){
            $coeff=$matiere->coefficientClasseMatiere;
            $totalCoeff+=$coeff;
        }
        $this->totalCoeff=$totalCoeff;
        return $totalCoeff;
    }

    public function getMatiereTotalPoints(): float{
        if(!empty($this->totalPoints))return $this->totalPoints;
        $total=0;
        foreach ($this->matieres as $matiere) {
            $total+=$matiere->coefficientClasseMatiere*20;
        }
        $this->totalPoints=$total;
        return $total;
    }
    public function getPoints():float{
        if($this->points===null) {
          $this->getMatieresWithNotesAndMoyenne();
        }
        return $this->points??0;
    }
    
}