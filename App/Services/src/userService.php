<?php
namespace App\Services\src;
use App\Services\factories\UserFactory;

class UserService
{
    public static function getUser(){
        return UserFactory::getUser();
    }
   public static function isAdmin(){
    return UserFactory::isAdmin();
   }
   public static function setUser($name, $password){
    UserFactory::setUser($name, $password);
   }
   public static function unsetUser(){
    UserFactory::unsetUser();
   }
}