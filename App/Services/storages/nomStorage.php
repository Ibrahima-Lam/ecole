<?php
namespace App\Services\storages;

class NomStorage
{
   private const PATH ='../res/api/nom.json';
  public static function getNoms()
    {
        if (!file_exists(self::PATH)) return [];
        
        $data = file_get_contents(self::PATH);
        return json_decode($data, true);
    }
}