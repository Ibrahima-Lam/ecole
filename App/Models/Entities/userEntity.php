<?php

namespace App\Models\Entities;

class UserEntity
{
    public $nameUser;
    public $emailUser;
    public $passwordUser;
    public $roleUser;
    
    public function toArray()
    {
        return [
            'name' => $this->nameUser,
            'email' => $this->emailUser,
            'password' => $this->passwordUser,
            'role' => $this->roleUser,
        ];
    }

    public function setFromArray($data)
    {
        $this->nameUser = $data['name']??$this->nameUser;
        $this->emailUser = $data['email']??$this->emailUser;
        $this->passwordUser = $data['password']??$this->passwordUser;
        $this->roleUser = $data['role']??$this->roleUser;
    }
    
  
}