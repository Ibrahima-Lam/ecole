<?php
namespace App\Services\Providers;


class Bulletin2Provider extends BulletinProvider{
    public function __construct(\stdClass $eleve, array $matieres, $examens,array $notes, array $moyennes=[]){
        parent::__construct($eleve, $matieres,$examens, $notes);
        $this->moyennes=$moyennes;
    }
    
    public function getMatieresWithNotesAndMoyenne():array{

        if(!empty($this->data)) return $this->data;
        $points=0;
        $matieresWithNotesAndMoyenne=$this->getMatieresWithNotes();
       
        foreach($matieresWithNotesAndMoyenne as $matiereWithNotesAndMoyenne){
            $matiereWithNotesAndMoyenne->d1=null;
            $matiereWithNotesAndMoyenne->d2=null;
            $matiereWithNotesAndMoyenne->c1=null;
            $matiereWithNotesAndMoyenne->c2=null;

            $coeff=$matiereWithNotesAndMoyenne->matiere->coefficientClasseMatiere;
            foreach($matiereWithNotesAndMoyenne->notes as $note){
                switch ($note->codeEvaluation) {
                    case 'C2':
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
            $matiereWithNotesAndMoyenne->moyenne=$matiereWithNotesAndMoyenne->c2??0;
            $matiereWithNotesAndMoyenne->points=($matiereWithNotesAndMoyenne->c2??0)*$coeff;
            $points+=$matiereWithNotesAndMoyenne->points;
        }
        $this->points=$points;
        $this->data=$matieresWithNotesAndMoyenne;
        return $matieresWithNotesAndMoyenne;
    }

 
}
?>