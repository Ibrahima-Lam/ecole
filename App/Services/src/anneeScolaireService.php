<?php
namespace App\Services\src;
use App\Models\Repositories\AnneeScolaireRepository;
use App\Services\factories\AnneeFactory;
class AnneeScolaireService
{
    public static function getCodeAnnee(){
        return AnneeFactory::getAnnee();
    }
    public static function getAnnee(){
        $ripos=new AnneeScolaireRepository();
        return $ripos->findOneByCodeAnnee(AnneeFactory::getAnnee());
    }
    public static function setCodeAnnee($codeAnnee){
        return AnneeFactory::setAnnee($codeAnnee);
    }

    public static function getAll(){
        $ripos=new AnneeScolaireRepository();
        return $ripos->findAll();
    }
   
    
}
