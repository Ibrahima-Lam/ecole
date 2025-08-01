<?php

namespace App\Services\storages;

use Core\Caches\Session;
use App\Models\User;
use App\Repositories\UserRepository;

class UserStorage
{
    private const USER_KEY = "user";
    
    
    public static function getUser(): false|User
    {
        try {
            $session = new Session();
            $localUser = $session->get(self::USER_KEY);
            if (!$localUser)  return false;
            $repository = new UserRepository();
            $user = $repository->findOneByNameAndPassWord($localUser['nameUser'], $localUser['passwordUser']);
            if (!$user)
                return false;
            return $user;
        } catch (\Throwable $th) {
            return false;
        }
    }

    public static function isAdmin(): bool
    {
        $user = self::getUser();
        return $user && $user->roleUser === 'admin';
    }
    public static function setUser($name, $password): bool
    {
        $session = new Session();
        $repository = new UserRepository();
        $user = $repository->findOneByNameAndPassWord($name, $password);
        if (!$user)
            return false;
        $session->set(self::USER_KEY, ['nameUser' => $user->nameUser, 'passwordUser' => $user->passwordUser]);
        return true;
    }
    public static function unsetUser()
    {
        $session = new Session();
        $session->delete(self::USER_KEY);
    }
}