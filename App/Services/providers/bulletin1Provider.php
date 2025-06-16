<?php
namespace App\Services\Providers;


class Bulletin1Provider extends BulletinProvider{
  
    public function __construct(\stdClass $eleve, array $matieres,$examens, array $notes, array $moyennes=[]){
        parent::__construct($eleve, $matieres,$examens, $notes);
        $this->moyennes=$moyennes;
    }
   

    public function getMatieresWithNotesAndMoyenne():array{
        if(!empty($this->data)) return $this->data;
        $points=0;
        $matieresWithNotesAndMoyenne=$this->getMatieresWithNotes();
        foreach($matieresWithNotesAndMoyenne as $matiereWithNotesAndMoyenne){
            $matiereWithNotesAndMoyenne->d1=null;
            $matiereWithNotesAndMoyenne->c1=(float) 0;
            $coeff=$matiereWithNotesAndMoyenne->matiere->coefficientClasseMatiere;
            foreach($matiereWithNotesAndMoyenne->notes as $note){
                if($note->codeEvaluation=='C1'){
                    $matiereWithNotesAndMoyenne->c1=(float) $note->note;
                }elseif($note->codeEvaluation== 'D1'){
                    $matiereWithNotesAndMoyenne->d1=(float) $note->note;
                }

            }

            $matiereWithNotesAndMoyenne->moyenne=$matiereWithNotesAndMoyenne->c1??0;
            $matiereWithNotesAndMoyenne->points=($matiereWithNotesAndMoyenne->c1??0)*$coeff;

            $points+=$matiereWithNotesAndMoyenne->points;

        }
        $this->points=$points;
        $this->data=$matieresWithNotesAndMoyenne;
        return $matieresWithNotesAndMoyenne;
    }

   

  

  
   
    

   
   

}
?>