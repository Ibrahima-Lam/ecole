<?php

namespace App\Repositories;

use PDO;
use stdClass;

class AnneeScolaireRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "select * from anneeScolaire order by codeAnnee desc";
        $result = $this->db->selectAll($sql, PDO::FETCH_ASSOC);
        return $result;
    }

    public function findOneByCodeAnnee(string $codeAnnee): false|stdClass
    {
        $sql = "select * from anneeScolaire where codeAnnee='$codeAnnee'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }

    public function findLastAnneeScolaire(): false|stdClass
    {
        $sql = "select * from anneeScolaire order by codeAnnee desc limit 1";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
}
