<?php
namespace App\Models\Repositories;

class SalleRepository extends Repository
{
    public function findAll(): array
    {
        $res = $this->db->selectAll("SELECT * FROM salle",\stdClass::class);
        return $res;
    }
}