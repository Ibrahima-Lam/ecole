<?php
namespace App\Services\Factories;

use App\Services\Providers\BulletinProvider;
use stdClass;

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

     public static function getStatistiques(array $data):stdClass{
        $statistiques=new stdClass();
        $statistiques->effectif=count($data);
        $statistiques->admis=count(array_filter($data, function ($bulletin) {return $bulletin->getDecision()==BulletinProvider::DECISION_ADMIS;}));
        $statistiques->nonAdmis=count(array_filter($data, function ($bulletin) {return $bulletin->getDecision()==BulletinProvider::DECISION_NON_ADMIS;}));
        $statistiques->mentionTresFaible=count(array_filter($data, function ($bulletin) {return $bulletin->getMension()==BulletinProvider::MENTION_TRES_FAIBLE;}));
        $statistiques->mentionFaible=count(array_filter($data, function ($bulletin) {return $bulletin->getMension()==BulletinProvider::MENTION_FAIBLE;}));
        $statistiques->mentionPassable=count(array_filter($data, function ($bulletin) {return $bulletin->getMension()==BulletinProvider::MENTION_PASSABLE;}));
        $statistiques->mentionBien=count(array_filter($data, function ($bulletin) {return $bulletin->getMension()==BulletinProvider::MENTION_BIEN;}));
        $statistiques->mentionAssezBien=count(array_filter($data, function ($bulletin) {return $bulletin->getMension()==BulletinProvider::MENTION_ASSEZ_BIEN;}));
        $statistiques->mentionTresBien=count(array_filter($data, function ($bulletin) {return $bulletin->getMension()==BulletinProvider::MENTION_TRES_BIEN;}));
        return $statistiques;
     }
    
}