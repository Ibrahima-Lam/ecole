<?php

namespace App\Models\Repositories;

use App\Models\Entities\ClasseEntity;
use stdClass;

class ClasseRepository extends Repository
{




    public function findAll(): array
    {
        $sql = "select * from classe";
        $result = $this->db->selectAll($sql, ClasseEntity::class);
        return $result;
    }
}
