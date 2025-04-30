<?php

namespace App\Services\factories;

class NoninscritFactory
{
    private const PATH="../res/eleve/noninscrit.json";
    public static function get()
    {
        if(!file_exists(self::PATH)) return [];
        $tab=file_get_contents(self::PATH);
        $tab=json_decode($tab,true);
        return $tab;
    }
    public static function add($data)
    {
        $tab=self::get();
        $tab[]=$data;
        file_put_contents(self::PATH, json_encode($tab));
    } 
     public static function set($tab)
    {
        file_put_contents(self::PATH, json_encode($tab));
    }

    public static function clear()
    {
        file_put_contents(self::PATH, "");
    }
}
