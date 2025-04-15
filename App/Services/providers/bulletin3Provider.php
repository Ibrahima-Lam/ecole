<?php
namespace App\Services\Providers;


class Bulletin3Provider extends BulletinProvider{
    private const COEFF_C1=1;
    private const COEFF_C2=2;
    private const COEFF_C3=3;
    private const COEFF_INTERRO=3;
    private const COEFF_TOTAL=9;
    public const INTERRO_MAX=1;
    public const INTERRO_SOMME2=2;
    public const INTERRO_SOMME3=3;

    private int $interro_params;
    private $somme=0;
    public function __construct(\stdClass $eleve, array $matieres, array $notes, array $moyennes=[], int $interro_params=self::INTERRO_MAX){
        parent::__construct($eleve, $matieres, $notes);
        $this->moyennes=$moyennes;
        $this->interro_params=$interro_params;
    }
    
    public function getMatieresWithNotesAndMoyenne():array{
        $matieresWithNotesAndMoyenne=$this->getMatieresWithNotes();
       $somme=0;
        foreach($matieresWithNotesAndMoyenne as $matiereWithNotesAndMoyenne){
            
            $matiereWithNotesAndMoyenne->d1=null;
            $matiereWithNotesAndMoyenne->d2=null;
            $matiereWithNotesAndMoyenne->d3=null;
            $matiereWithNotesAndMoyenne->c1=null;
            $matiereWithNotesAndMoyenne->c2=null;
            $matiereWithNotesAndMoyenne->c3=null;
            foreach($matiereWithNotesAndMoyenne->notes as $note){
                switch ($note->codeEvaluation) {
                    case 'D1':
                        $matiereWithNotesAndMoyenne->d1=(float) $note->note;
                        break;
                    case 'D2':
                        $matiereWithNotesAndMoyenne->d2=(float) $note->note;
                        break; 
                    case 'D3':
                        $matiereWithNotesAndMoyenne->d3=(float) $note->note;
                        break;
                    case 'C1':
                        $matiereWithNotesAndMoyenne->c1=(float) $note->note;
                        break;
                    case 'C2':
                        $matiereWithNotesAndMoyenne->c2=(float) $note->note;
                        break;
                    case 'C3':
                        $matiereWithNotesAndMoyenne->c3=(float) $note->note;
                        break;
                }
            }
            $matiereWithNotesAndMoyenne->interrogation=$this->getInterogationMoyenne([$matiereWithNotesAndMoyenne->d1??0,$matiereWithNotesAndMoyenne->d2??0,$matiereWithNotesAndMoyenne->d3??0]);
            $matiereWithNotesAndMoyenne->totalInterrogation=$matiereWithNotesAndMoyenne->interrogation*self::COEFF_INTERRO;
            $matiereWithNotesAndMoyenne->total=($matiereWithNotesAndMoyenne->c1??0)*self::COEFF_C1+($matiereWithNotesAndMoyenne->c2??0)*self::COEFF_C2+($matiereWithNotesAndMoyenne->c3??0)*self::COEFF_C3+$matiereWithNotesAndMoyenne->totalInterrogation;
            $matiereWithNotesAndMoyenne->moy=$matiereWithNotesAndMoyenne->total/self::COEFF_TOTAL;
            $matiereWithNotesAndMoyenne->moyenne=$matiereWithNotesAndMoyenne->moy*$matiereWithNotesAndMoyenne->matiere->coefficientClasseMatiere;
            $somme+=$matiereWithNotesAndMoyenne->moyenne;

            $matiereWithNotesAndMoyenne->interrogation=round($matiereWithNotesAndMoyenne->interrogation,2);
            $matiereWithNotesAndMoyenne->totalInterrogation=round($matiereWithNotesAndMoyenne->totalInterrogation,2);
            $matiereWithNotesAndMoyenne->moy=round($matiereWithNotesAndMoyenne->moy,2);
            $matiereWithNotesAndMoyenne->total=round($matiereWithNotesAndMoyenne->total,2);
            $matiereWithNotesAndMoyenne->moyenne=round($matiereWithNotesAndMoyenne->moyenne,2);

            $matiereWithNotesAndMoyenne->c1x1=!$matiereWithNotesAndMoyenne->c1?null: round($matiereWithNotesAndMoyenne->c1*self::COEFF_C1,2);
            $matiereWithNotesAndMoyenne->c2x2=!$matiereWithNotesAndMoyenne->c2?null: round($matiereWithNotesAndMoyenne->c2*self::COEFF_C2,2);
            $matiereWithNotesAndMoyenne->c3x3=!$matiereWithNotesAndMoyenne->c3?null: round($matiereWithNotesAndMoyenne->c3*self::COEFF_C3,2);
        }
        $this->somme=round($somme,2);
        return $matieresWithNotesAndMoyenne;
    }

    private function getInterogationMoyenne($tab):float{
        sort($tab,SORT_NUMERIC);
        $tab=array_reverse($tab);

        switch ($this->interro_params) {
            case self::INTERRO_MAX:
                return max($tab);
            case self::INTERRO_SOMME2:
                $tab=array_slice($tab,0,2);
                return array_sum($tab)/2;
            case self::INTERRO_SOMME3:
                $tab=array_slice($tab,0,3);
                return array_sum($tab)/3;
        }
        return array_sum($tab)/$this->interro_params;
    }
    
    public function getSommeMoyenne():float{
        return $this->somme;
    }

   
   
    

    

}
?>