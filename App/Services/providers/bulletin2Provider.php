<?php
namespace App\Services\Providers;


class Bulletin2Provider extends BulletinProviderParent{
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
            $matiereWithNotesAndMoyenne->d1=null;
            $matiereWithNotesAndMoyenne->d2=null;
            $matiereWithNotesAndMoyenne->c1=null;
            $matiereWithNotesAndMoyenne->c2=null;

            $matiereWithNotesAndMoyenne->examen=(float) 0;
            $coeff=$matiereWithNotesAndMoyenne->matiere->coefficientClasseMatiere;
            foreach($matiereWithNotesAndMoyenne->notes as $note){
                switch ($note->codeEvaluation) {
                    case 'C2':
                        $matiereWithNotesAndMoyenne->moyenne+=(float) $note->note*$coeff;
                        $matiereWithNotesAndMoyenne->c2=(float) $note->note;
                        break;
                    case 'D1':
                        $matiereWithNotesAndMoyenne->d1=(float) $note->note;
                        break;
                    case 'D2':
                        $matiereWithNotesAndMoyenne->d2=(float) $note->note;
                        break;
                    case 'C1':
                        $matiereWithNotesAndMoyenne->c1=(float) $note->note;
                        break;
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
        foreach($this->matieres as $matiere){
            $coeff=$matiere->coefficientClasseMatiere;
            foreach($this->notes as $note){
                if($matiere->codeMatiere==$note->codeMatiere && $note->codeEvaluation=='C2'){
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