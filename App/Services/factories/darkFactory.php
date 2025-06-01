<?php
namespace App\Services\factories;

use Core\Caches\Session;
class DarkFactory{
    private const DARK_KEY="dark";
    public static function getDark():bool{
        $session=new Session();
        return $session->get(self::DARK_KEY)??false;
    }
    public static function setDark(bool $dark):void{
        $session=new Session();
        $session->set(self::DARK_KEY,$dark);
    }

    public static function toggleDark():void{
        $session=new Session();
        $dark=$session->get(self::DARK_KEY);
        $session->set(self::DARK_KEY,!$dark);
    }
}