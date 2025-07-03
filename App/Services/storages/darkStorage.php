<?php
namespace App\Services\storages;

use Core\Caches\Cookie;
class DarkStorage{
    private const DARK_KEY="dark";
    public static function getDark():bool{
        $cache=new Cookie();
        return $cache->get(self::DARK_KEY)??false;
    }
    public static function setDark(bool $dark):void{
        $cache=new Cookie();
        $cache->set(self::DARK_KEY,$dark);
    }

    public static function toggleDark():void{
        $cache=new Cookie();
        $dark=$cache->get(self::DARK_KEY);
        $cache->set(self::DARK_KEY,!$dark);
    }
}