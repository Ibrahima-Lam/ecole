<?php

namespace App\Repositories;

use stdClass;

class MatiereRepository extends Repository
{



    public function findAll(): array
    {
        $sql = "SELECT * FROM matiere";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function findOne(string $code): false|stdClass
    {
        $sql = "SELECT * FROM matiere where codeMatiere='$code'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
}
