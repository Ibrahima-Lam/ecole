<?php

namespace App\Services\Providers;

class BulletinProviderEntity
{
    public const DECISION_ADMIS="Admis";
    public const DECISION_NON_ADMIS="Non Admis";
    public const MENTION_TRES_FAIBLE="Trés Faible";
    public const MENTION_FAIBLE="Faible";
    public const MENTION_PASSABLE="Passable";
    public const MENTION_BIEN="Bien";
    public const MENTION_ASSEZ_BIEN="Assez Bien";
    public const MENTION_TRES_BIEN="Trés Bien";
    public $moyenne;
    public $eleve;
    public $totalCoeff;
    public $totalPoints;
    public $points;
    public $absences;
    public $rang;
    public $points_tab;
    public $matieres;

    public $notes=[];

    public function __construct($eleve,$notes,$points,$matieres,$points_tab=[],$absences=0) {
        $this->notes=$notes;
        $this->points=$points;
        $this->matieres=$matieres;
        $this->points_tab=$points_tab;
        $this->eleve=$eleve;
        $this->absences=$absences;
    }

    public function setPointsTab($points_tab){
        $this->points_tab=$points_tab;
    }

    public function getNotes():array{
        return $this->notes;
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
    public function getDecisionMention():string{
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
          $this->getNotes();
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