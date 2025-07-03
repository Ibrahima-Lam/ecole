<?php
namespace App\Services\src;
use App\Services\storages\UserStorage;

class UserService
{
    public static function getUser(){
        return UserStorage::getUser();
    }
   public static function isAdmin(){
    return UserStorage::isAdmin();
   }
   public static function setUser($name, $password){
    UserStorage::setUser($name, $password);
   }
   public static function unsetUser(){
    UserStorage::unsetUser();
   }
}