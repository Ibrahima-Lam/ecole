<?php
namespace App\Services\Providers;

class BulletinProvider extends ResultatProvider{
    private $moyennes=[];
    public function __construct(\stdClass $eleve, array $matieres, array $notes, array $moyennes=[]){
        parent::__construct($eleve, $matieres, $notes);
        $this->moyennes=$moyennes;
    }
    public function setMoyennes($moyennes){
        $this->moyennes=$moyennes;
    }

    public function getMatieresWithNotesAndMoyenne():array{
        $matieresWithNotesAndMoyenne=$this->getMatieresWithNotes();
        foreach($matieresWithNotesAndMoyenne as $matiereWithNotesAndMoyenne){
            $matiereWithNotesAndMoyenne->moyenne=(float) 0;
            $matiereWithNotesAndMoyenne->interrogation=null;
            $matiereWithNotesAndMoyenne->examen=(float) 0;
            $coeff=$matiereWithNotesAndMoyenne->matiere->coefficientClasseMatiere;
            foreach($matiereWithNotesAndMoyenne->notes as $note){
                if($note->codeEvaluation=='C1'){
                    $matiereWithNotesAndMoyenne->moyenne+=(float) $note->note*$coeff;
                    $matiereWithNotesAndMoyenne->examen=(float) $note->note;
                }elseif($note->codeEvaluation== 'D1'){
                    $matiereWithNotesAndMoyenne->interrogation=(float) $note->note;
                }

            }
        }
        return $matieresWithNotesAndMoyenne;
    }

    public function getTotalCoeff():float{
        $totalCoeff=0;
        foreach($this->matieres as $matiere){
            $coeff=$matiere->coefficientClasseMatiere;
            $totalCoeff+=$coeff;
        }
        return $totalCoeff;
    }

    public function getSommeMoyenne():float{
        $somme=0;
        $totalCoeff=$this->getTotalCoeff();
        foreach($this->matieres as $matiere){
            $coeff=$matiere->coefficientClasseMatiere;
            foreach($this->notes as $note){
                if($matiere->codeMatiere==$note->codeMatiere && $note->codeEvaluation=='C1'){
                    $somme+=$note->note*$coeff;
                    break;
                }
            }
        }
        return $somme;
    }

    public function getMoyenne(?int $precision=null):float{
        $somme=$this->getSommeMoyenne();
        $totalCoeff=$this->getTotalCoeff();
        if($totalCoeff==0){
            return 0;
        }else{
            return round($somme/$totalCoeff,$precision);
        }
    }
    public function getMension():string{
        $moyenne=$this->getMoyenne();
        if($moyenne<5){
            return "Tres Faible";
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
        $moyennes=$this->moyennes;
        sort($moyennes);
        $moyennes=array_reverse($moyennes);
        $rang=1;
        foreach($moyennes as $moyenne){
            if($moyenne<=$this->getMoyenne()){
                return $rang;
            }
            $rang++;
        }
        return null;
    }

}
?>