<?php

namespace App\Entities;

class ExamenEntity
{
    public function __construct(public object $salleClasse,public array $matieres,public array $examens)
    {
    }

    public function getExamens(): array
    {
        return $this->examens;
    }

   public function getMatiereExamen(): array
    {
       $tab=[];

       foreach($this->matieres as  $value) {
        $t=new \stdClass();
        $t->matiere=$value;
        $t->examens=[];
        foreach($this->examens as  $value2) {
            if($value->codeMatiere==$value2->codeMatiere){
                $t->examens[]=$value2;
            }
        }
        $tab[]=$t;

    }
    return $tab;
}
}
