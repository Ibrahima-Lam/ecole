<?php

namespace App\Services\factories;

use Core\Caches\Session;
use App\Models\Entities\UserEntity;

class LicenceFactory
{
    private const LICENCE_KEY = "licence";
    
    
    public static function getLicence(): false|UserEntity
    {
       return false;
    }

    public static function isValid(): bool
    {
       return true;
    }
    
    public static function unsetUser()
    {
        $session = new Session();
        $session->delete(self::LICENCE_KEY);
    }
}