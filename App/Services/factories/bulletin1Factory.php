<?php
namespace App\Services\Factories;

use App\Services\Providers\Bulletin1Provider;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\NoteRepository;

class Bulletin1Factory extends BulletinFactory
{
    
    public static function getBulletin($matricule,$codeAnnee):?Bulletin1Provider {
        $annee = $codeAnnee;
        $model = new inscritRepository();
        $eleve = $model->findOne($matricule);
        if(!$eleve) return null;
        $matieres=[];
        $notes=[];
        if( $eleve ) {
            $model= new ClasseMatiereRepository();
            $matieres=$model->findByClasse($eleve->codeClasse);
            $model=new NoteRepository();
            $notes=$model->findAllByMatriculeAndAnnee($eleve->matricule,$annee);
            
        }else return null;
        return new Bulletin1Provider($eleve,$matieres,$notes);
       
    }

    

        public static  function getBulletins($matricule, $codeAnnee):array {
             $inscritRepository = new inscritRepository();
             $eleve = $inscritRepository->findOne($matricule);
             if(!$eleve) return [];
             $salleclasse = $eleve->codeSalleClasse;
             $inscrits=$inscritRepository->findAllByClasse($salleclasse);
             $bulletins=array_map(function ($inscrit) use ($codeAnnee) {
                 return Bulletin1Factory::getBulletin($inscrit->matricule,$codeAnnee);
             }, $inscrits);
             return $bulletins;
     
          }
}