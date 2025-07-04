<?php

namespace App\Services\storages;

use App\Repositories\AnneeScolaireRepository;
use Core\Caches\Session;

class AnneeScolaireStorage{

   private const ANNEE_KEY="anneescolaire";
    public static function getAnnee():string{
        $session = new Session();
        $annee = $session->get(self::ANNEE_KEY);
        if (!$annee) {
            $anneeScolaire = (new AnneeScolaireRepository())->findLastAnneeScolaire();
            $annee = $anneeScolaire ? $anneeScolaire->codeAnnee : "2425";
            $session->set(self::ANNEE_KEY, $annee);
        }
        return $annee;
    }
    public static function setAnnee(string $annee):void{
        $session=new Session();
        $session->set(self::ANNEE_KEY, $annee);
    }
}