<?php
namespace App\Services\Providers;

class ResultatProvider{

    public \stdClass $eleve;
    public array $matieres=[];
    public array $examens=[];
    public array $notes=[];

    public function __construct(\stdClass $eleve, array $matieres,array $examens, array $notes){
        $this->eleve=$eleve;
        $this->matieres=$matieres;
        $this->examens=$examens;
        $this->notes=$notes;
    }

    public function getMatieresWithNotes($ouvert=false):array{
        
        $matieresWithNotes=[];
       
        foreach($this->matieres as $matiere){
            
            $matiereNote=new \stdClass();
            $matiereNote->matiere=$matiere;
            $matiereNote->notes=[];
            foreach($this->notes as $note){
                if($note->statutExamen=='0' && $ouvert)continue;
                if($matiere->codeMatiere==$note->codeMatiere){
                    $matiereNote->notes[]=$note;
                }
            }
           
            usort($matiereNote->notes,function($a,$b){
                $sort=($a->indiceEvaluation??0)-($b->indiceEvaluation??0);
                if($sort==0){
                    $sort=-strcmp($a->typeEvaluation,$b->typeEvaluation);
                }
                if($sort==0){
                    $sort=($a->coefficientEvaluation??0)-($b->coefficientEvaluation??0);
                }
                return $sort;
            });
            $matieresWithNotes[]=$matiereNote;
        }
    
    return $matieresWithNotes;
}
}
?>
      