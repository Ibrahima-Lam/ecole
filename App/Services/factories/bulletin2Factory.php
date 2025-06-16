<?php
namespace App\Services\Factories;

use App\Models\Repositories\ExamenRepository;
use App\Services\Providers\Bulletin2Provider;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\NoteRepository;

class Bulletin2Factory extends BulletinFactory
{
   public static function getBulletin($matricule,$codeAnnee):?Bulletin2Provider {
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
            $model=new ExamenRepository();
            $examens=$model->findAllByClasse($eleve->codeSalleClasse);
        }else return null;
        return new Bulletin2Provider($eleve,$matieres,$examens,$notes);
       
    }
   
   public static  function getBulletins($matricule, $codeAnnee):array {
        $inscritRepository = new inscritRepository();
        $eleve = $inscritRepository->findOne($matricule);
        if(!$eleve) return [];
        $salleclasse = $eleve->codeSalleClasse;
        $inscrits=$inscritRepository->findAllByClasse($salleclasse);
        $bulletins=array_map(function ($inscrit) use ($codeAnnee) {
            return Bulletin2Factory::getBulletin($inscrit->matricule,$codeAnnee);
        }, $inscrits);
        return $bulletins;

     }
     

}