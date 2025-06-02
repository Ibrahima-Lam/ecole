<?php
namespace App\Services\factories;

use Core\Caches\Cookie;
class LangueFactory{
    private const LANGUE_KEY="langue";
    public static function getLangue():string{
        $cache=new Cookie();
        return $cache->get(self::LANGUE_KEY)??'fr';
    }
    public static function setLangue(string $langue):void{
        $cache=new Cookie();
        $cache->set(self::LANGUE_KEY,$langue);
    }

 
}