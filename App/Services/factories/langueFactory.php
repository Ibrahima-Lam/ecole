<?php
namespace App\Services\factories;

use Core\Caches\Session;
class LangueFactory{
    private const LANGUE_KEY="langue";
    public static function getLangue():string{
        $session=new Session();
        return $session->get(self::LANGUE_KEY)??'fr';
    }
    public static function setLangue(string $langue):void{
        $session=new Session();
        $session->set(self::LANGUE_KEY,$langue);
    }

 
}