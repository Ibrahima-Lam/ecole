<?php
namespace App\Services\Factories;

class BulletinFactory
{
    protected const PRECISION=8;

   static private  function getBulletins($matricule, $codeAnnee):array {
        return [];
    }
    public static  function getMoyennes($matricule, $codeAnnee):array {
        $bulletins = static::getBulletins($matricule, $codeAnnee);
        return array_map(function ($bulletin) {return $bulletin->getMoyenne(self::PRECISION);}, $bulletins);

     } 
     public static  function getPoints($matricule, $codeAnnee):array {
        $bulletins = static::getBulletins($matricule, $codeAnnee);
        return array_map(function ($bulletin) {return $bulletin->getPoints(self::PRECISION);}, $bulletins);

     }
    
}