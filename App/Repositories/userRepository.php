<?php

namespace App\Repositories;

use App\Models\User;

class UserRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "select * from user";
        $result = $this->db->selectAll($sql, User::class);
        return $result;
    }

    public function findOneByMail(string $mail): false|User
    {
        $sql = "select * from user where emailUser ='$mail'";
        $result = $this->db->selectOne($sql, User::class);
        return $result;
    }
    public function findOneByNameAndPassWord(string $name, string $password): false|User
    {
        $sql = "select * from user where nameUser ='$name' and passwordUser ='$password'";
        $result = $this->db->selectOne($sql, User::class);
        return $result;
    }
}

