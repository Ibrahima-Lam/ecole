<?php
namespace App\Services\Factories;

use App\Services\Providers\BulletinProvider;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\NoteRepository;

class BulletinFactory 
{
    static function getBulletin($matricule,$codeAnnee):?BulletinProvider {
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
        return new BulletinProvider($eleve,$matieres,$notes);
       
    }

    static public function getMoyennes($matricule, $codeAnnee):array {
        $inscritRepository = new inscritRepository();
        $eleve = $inscritRepository->findOne($matricule);
        if(!$eleve) return [];
        $salleclasse = $eleve->codeSalleClasse;
        $model = new ClasseMatiereRepository();
        $inscrits=$inscritRepository->findAllByClasse($salleclasse);
        $bulletins=array_map(function ($inscrit) use ($codeAnnee) {
            return BulletinFactory::getBulletin($inscrit->matricule,$codeAnnee);
        }, $inscrits);
        return array_map(function ($bulletin) {return $bulletin->getMoyenne();}, $bulletins);

        }

}