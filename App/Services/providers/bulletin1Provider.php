<?php
namespace App\Services\Providers;


class Bulletin1Provider extends BulletinProvider{
    private $somme;
    public function __construct(\stdClass $eleve, array $matieres, array $notes, array $moyennes=[]){
        parent::__construct($eleve, $matieres, $notes);
        $this->moyennes=$moyennes;
    }
   

    public function getMatieresWithNotesAndMoyenne():array{
        $matieresWithNotesAndMoyenne=$this->getMatieresWithNotes();
        foreach($matieresWithNotesAndMoyenne as $matiereWithNotesAndMoyenne){
            $matiereWithNotesAndMoyenne->moyenne=(float) 0;
            $matiereWithNotesAndMoyenne->d1=null;
            $matiereWithNotesAndMoyenne->c1=(float) 0;
            $coeff=$matiereWithNotesAndMoyenne->matiere->coefficientClasseMatiere;
            foreach($matiereWithNotesAndMoyenne->notes as $note){
                if($note->codeEvaluation=='C1'){
                    $matiereWithNotesAndMoyenne->moyenne+=(float) $note->note*$coeff;
                    $matiereWithNotesAndMoyenne->c1=(float) $note->note;
                }elseif($note->codeEvaluation== 'D1'){
                    $matiereWithNotesAndMoyenne->d1=(float) $note->note;
                }

            }
        }
        return $matieresWithNotesAndMoyenne;
    }

   

    public function getSommeMoyenne():float{
        if(!empty($this->somme))return $this->somme;
        $somme=0;
        foreach($this->matieres as $matiere){
            $coeff=$matiere->coefficientClasseMatiere;
            foreach($this->notes as $note){
                if($matiere->codeMatiere==$note->codeMatiere && $note->codeEvaluation=='C1'){
                    $somme+=$note->note*$coeff;
                    break;
                }
            }
        }
        $this->somme=$somme;
        return $somme;
    }

  
   
    

   
   

}
?>