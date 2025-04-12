<?php
namespace App\Services\Providers;

class ClasseResultatProvider
{
    public $eleves=[];
    public $matiere;
    public $notes=[];
    public $examens=[];
    public function __construct($matiere,$eleves,$notes,$examens)
    {
        $this->matiere=$matiere;
        $this->eleves=$eleves;
        $this->notes=$notes;
        $this->examens=$examens;
    }
    public function getClasseResultat()
    {
        $data=[];
       
        foreach($this->eleves as $eleve){
            $eleve->matiere=$this->matiere;
            $eleve->notes=[];
          
                
                foreach($this->notes as $note){
                    if($note->matricule==$eleve->matricule && $note->codeMatiere==$this->matiere->codeMatiere){
                        $eleve->notes[$note->codeEvaluation]=$note;
                    }
                
            }
            $data[]=$eleve;
        }
        return $data;
    }
}
                   
   
                  
   