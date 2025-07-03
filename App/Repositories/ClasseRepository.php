<?php

namespace App\Repositories;

use App\Models\Classe;
use stdClass;

class ClasseRepository extends Repository
{




    public function findAll(): array
    {
        $sql = "select * from classe";
        $result = $this->db->selectAll($sql, Classe::class);
        return $result;
    }
}
