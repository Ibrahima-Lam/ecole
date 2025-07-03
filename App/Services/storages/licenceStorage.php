<?php

namespace App\Services\storages;

use Core\Caches\Session;
use App\Models\User;

class LicenceStorage
{
    private const LICENCE_KEY = "licence";
    
    
    public static function getLicence(): false|User
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