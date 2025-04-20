<?php

namespace App\Models\Repositories;

use App\Models\Entities\UserEntity;

class UserRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "select * from user";
        $result = $this->db->selectAll($sql, UserEntity::class);
        return $result;
    }

    public function findOneByMail(string $mail): false|UserEntity
    {
        $sql = "select * from user where emailUser ='$mail'";
        $result = $this->db->selectOne($sql, UserEntity::class);
        return $result;
    }
    public function findOneByNameAndPassWord(string $name, string $password): false|UserEntity
    {
        $sql = "select * from user where nameUser ='$name' and passwordUser ='$password'";
        $result = $this->db->selectOne($sql, UserEntity::class);
        return $result;
    }
}

