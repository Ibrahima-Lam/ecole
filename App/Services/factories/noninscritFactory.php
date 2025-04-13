<?php

namespace App\Services\factories;

use Core\Caches\Session;

class NoninscritFactory
{
    private const KEY="noninscrit";
    public static function get()
    {
        $session=new Session();
        $tab=$session->get(Self::KEY)??[];
        $session->set(self::KEY, $tab);
        return $tab;
    }
    public static function add($data)
    {
        $session=new Session();
        $tab=$session->get(self::KEY)??[];
        $tab[]=$data;
        $session->set(self::KEY, $tab);
    } 
     public static function set($tab)
    {
        $session=new Session();
        $session->set(self::KEY, $tab);
    }

    public static function clear()
    {
        $session=new Session();
        $session->delete(self::KEY);
    }
}
