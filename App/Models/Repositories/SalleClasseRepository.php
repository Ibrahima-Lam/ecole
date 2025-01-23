<?php

namespace App\Models\Repositories;


use stdClass;

class SalleClasseRepository extends Repository
{
    public function findAll(?string $codeAnnee = null): array
    {
        $sql = $codeAnnee ? "select * from salle_classe_view where codeAnnee='$codeAnnee'" : "select * from salle_classe_view";

        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function findOneByCode(string $code): false|stdClass
    {
        $sql = "select * from salle_classe_view where codeSalleClasse='$code'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
}
