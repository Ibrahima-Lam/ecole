<?php

namespace App\Models\Repositories;

use stdClass;

class ClasseMatiereRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "SELECT * FROM classe_matiere_view";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function findOne(string $codeClasseMatiere): false|stdClass
    {
        $sql = "SELECT * FROM classe_matiere_view where codeClasseMatiere='$codeClasseMatiere' order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
    public function findByClasse(string $codeClasse): array
    {
        $sql = "SELECT * FROM classe_matiere_view where codeClasse='$codeClasse'order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    public function findByMatiere(string $codeMatiere): array
    {
        $sql = "SELECT * FROM classe_matiere_view where codeMatiere='$codeMatiere'order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    public function insert(string $codeClasseMatiere, string $codeClasse, string $codeMatiere, int $horaireClasseMatiere, int $coefficientClasseMatiere, string $dateClasseMatiere): bool
    {
        $sql = "insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,dateClasseMatiere) values(:codeClasseMatiere,:codeClasse,:codeMatiere,:horaireClasseMatiere,:coefficientClasseMatiere,:dateClasseMatiere)";
        $result = $this->db->prepare($sql)->execute([
            "codeClasseMatiere" => $codeClasseMatiere,
            "codeClasse" => $codeClasse,
            "codeMatiere" => $codeMatiere,
            "horaireClasseMatiere" => $horaireClasseMatiere,
            "coefficientClasseMatiere" => $coefficientClasseMatiere,
            "dateClasseMatiere" => $dateClasseMatiere
        ]);
        return $result;
    }
    public function update(string $codeClasseMatiere, string $codeClasse, string $codeMatiere, int $horaireClasseMatiere, int $coefficientClasseMatiere, string $dateClasseMatiere): bool
    {
        $sql = "update classe_matiere set codeClasse=:codeClasse,codeMatiere=:codeMatiere,horaireClasseMatiere=:horaireClasseMatiere,coefficientClasseMatiere=:coefficientClasseMatiere,dateClasseMatiere=:dateClasseMatiere where codeClasseMatiere=:codeClasseMatiere";
        $result = $this->db->prepare($sql)->execute([
            "codeClasseMatiere" => $codeClasseMatiere,
            "codeClasse" => $codeClasse,
            "codeMatiere" => $codeMatiere,
            "horaireClasseMatiere" => $horaireClasseMatiere,
            "coefficientClasseMatiere" => $coefficientClasseMatiere,
            "dateClasseMatiere" => $dateClasseMatiere
        ]);
        return $result;
    }

    public function delete(string $codeClasseMatiere): bool
    {
        $sql = "delete from classe_matiere where codeClasseMatiere='$codeClasseMatiere'";
        return $this->db->exec($sql);
    }
}
