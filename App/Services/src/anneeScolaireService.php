<?php
namespace App\Services\src;
use App\Repositories\AnneeScolaireRepository;
use App\Services\storages\AnneeScolaireStorage;
class AnneeScolaireService
{
    private static $_instance ;
    public static function getInstance(): AnneeScolaireService
    {
        if (!self::$_instance) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }
    public static function getCodeAnnee(){
        return AnneeScolaireStorage::getAnnee();
    }
    public static function getAnnee(){
        $ripos=new AnneeScolaireRepository();
        return $ripos->findOneByCodeAnnee(AnneeScolaireStorage::getAnnee());
    }
    public static function setCodeAnnee($codeAnnee){
        return AnneeScolaireStorage::setAnnee($codeAnnee);
    }

    public static function getAll(){
        $ripos=new AnneeScolaireRepository();
        return $ripos->findAll();
    }
   
    
}
