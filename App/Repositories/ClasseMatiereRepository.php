<?php

namespace App\Repositories;

use stdClass;

class ClasseMatiereRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "SELECT * FROM classe_matiere_view";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
     public function findAllForApi(): array
    {
        $sql = "SELECT * FROM classe_matiere where codeAnnee ='2425' order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
  public function findAllByAnnee(?string $codeAnnee): array
    {
        $sql =$codeAnnee?
         "SELECT * FROM classe_matiere_view where codeAnnee='$codeAnnee' order by coefficientClasseMatiere desc,horaireClasseMatiere desc":
         "SELECT * FROM classe_matiere_view where codeAnnee is null order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function findOne(string $codeClasseMatiere): false|stdClass
    {
        $sql = "SELECT * FROM classe_matiere_view where codeClasseMatiere='$codeClasseMatiere' order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
    public function findOneByClasseAndMatiereAndAnnee(string $codeClasse, string $codeMatiere,?string $codeAnnee): false|stdClass
    {
        $sql =$codeAnnee?
         "SELECT * FROM classe_matiere_view where codeClasse='$codeClasse' and codeMatiere='$codeMatiere' and codeAnnee='$codeAnnee' order by coefficientClasseMatiere desc,horaireClasseMatiere desc":
         "SELECT * FROM classe_matiere_view where codeClasse='$codeClasse' and codeMatiere='$codeMatiere' and codeAnnee is null order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
    public function findAllByClasseAndAnnee(string $codeClasse,?string $codeAnnee): array
    {
        $sql =$codeAnnee?
         "SELECT * FROM classe_matiere_view where codeClasse='$codeClasse' and codeAnnee='$codeAnnee'order by coefficientClasseMatiere desc,horaireClasseMatiere desc":
         "SELECT * FROM classe_matiere_view where codeClasse='$codeClasse' and codeAnnee is null order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    } public function findAllByClasseAndAnneeForBulletin(string $codeClasse,?string $codeAnnee): array
    {
        $projection="codeClasseMatiere,codeMatiere,nomMatiere,ismeMatiere,codeClasse,coefficientClasseMatiere";
        $sql =$codeAnnee?
         "SELECT $projection FROM classe_matiere_view where codeClasse='$codeClasse' and codeAnnee='$codeAnnee'order by coefficientClasseMatiere desc,horaireClasseMatiere desc":
         "SELECT $projection FROM classe_matiere_view where codeClasse='$codeClasse' and codeAnnee is null order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    public function findAllByMatiereAndAnnee(string $codeMatiere,?string $codeAnnee): array
    {
        $sql =$codeAnnee?
         "SELECT * FROM classe_matiere_view where codeMatiere='$codeMatiere' and codeAnnee='$codeAnnee'order by coefficientClasseMatiere desc,horaireClasseMatiere desc":
         "SELECT * FROM classe_matiere_view where codeMatiere='$codeMatiere' and codeAnnee is null order by coefficientClasseMatiere desc,horaireClasseMatiere desc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    public function insert(string $codeClasseMatiere, string $codeClasse, string $codeMatiere, int $horaireClasseMatiere, int $coefficientClasseMatiere, ?string $codeAnnee,?int $statutClasseMatiere): bool
    {
        $sql = "insert into classe_matiere(codeClasseMatiere,codeClasse,codeMatiere,horaireClasseMatiere,coefficientClasseMatiere,codeAnnee,statutClasseMatiere) values(:codeClasseMatiere,:codeClasse,:codeMatiere,:horaireClasseMatiere,:coefficientClasseMatiere,:codeAnnee,:statutClasseMatiere)";
        $result = $this->db->prepare($sql)->execute([
            "codeClasseMatiere" => $codeClasseMatiere,
            "codeClasse" => $codeClasse,
            "codeMatiere" => $codeMatiere,
            "horaireClasseMatiere" => $horaireClasseMatiere,
            "coefficientClasseMatiere" => $coefficientClasseMatiere,
            "codeAnnee" => $codeAnnee,
            "statutClasseMatiere" => $statutClasseMatiere
        ]);
        return $result;
    }
    public function update(string $codeClasseMatiere, string $codeClasse, string $codeMatiere, int $horaireClasseMatiere, int $coefficientClasseMatiere, ?string $codeAnnee,?int $statutClasseMatiere): bool
    {
        $sql = "update classe_matiere set codeClasse=:codeClasse,codeMatiere=:codeMatiere,horaireClasseMatiere=:horaireClasseMatiere,coefficientClasseMatiere=:coefficientClasseMatiere,codeAnnee=:codeAnnee,statutClasseMatiere=:statutClasseMatiere where codeClasseMatiere=:codeClasseMatiere";
        $result = $this->db->prepare($sql)->execute([
            "codeClasseMatiere" => $codeClasseMatiere,
            "codeClasse" => $codeClasse,
            "codeMatiere" => $codeMatiere,
            "horaireClasseMatiere" => $horaireClasseMatiere,
            "coefficientClasseMatiere" => $coefficientClasseMatiere,
            "codeAnnee" => $codeAnnee,
            "statutClasseMatiere" => $statutClasseMatiere
        ]);
        return $result;
    }

    public function delete(string $codeClasseMatiere): bool
    {
        $sql = "delete from classe_matiere where codeClasseMatiere='$codeClasseMatiere'";
        return $this->db->exec($sql);
    }
}
