<?php

namespace App\Repositories;

class jourRepository extends Repository
{
    public function findAll(): array
    {
        return $this->db->selectAll("select * from jour order by indiceJour", \stdClass::class);
    }
}
