<?php
namespace App\Services\Providers;

abstract class BulletinProvider extends ResultatProvider {
    public const DECISION_ADMIS="Admis";
    public const DECISION_NON_ADMIS="Non Admis";
    public const MENTION_TRES_FAIBLE="Trés Faible";
    public const MENTION_FAIBLE="Faible";
    public const MENTION_PASSABLE="Passable";
    public const MENTION_BIEN="Bien";
    public const MENTION_ASSEZ_BIEN="Assez Bien";
    public const MENTION_TRES_BIEN="Trés Bien";
    protected $points_tab=[];
    protected $rang;
    protected $moyenne=0;
    protected $totalCoeff=0;
    protected $totalPoints=0;

    protected $points;
    protected $data=[];
    protected $absences;

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
            return self::MENTION_TRES_FAIBLE;
        }elseif($moyenne<9){
            return self::MENTION_FAIBLE;
        }elseif($moyenne<12){
            return self::MENTION_PASSABLE;
        }elseif($moyenne<14){
            return self::MENTION_BIEN;
        }elseif($moyenne<16){
            return self::MENTION_ASSEZ_BIEN;
        }else{
            return self::MENTION_TRES_BIEN;
        }

    }

    public function getDecision():string{
        $moyenne=$this->getMoyenne();
        if($moyenne<9){
            return self::DECISION_NON_ADMIS;
        }else{
            return self::DECISION_ADMIS;
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

    public function getAbsences():?int{
        return $this->absences;
    }
    public function getAbsencesToString():string{
        return $this->absences===null ? "" : __format('%s h', $this->absences);
    }
    
}