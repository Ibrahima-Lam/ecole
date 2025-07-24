<?php

namespace App\Repositories;

use stdClass;

class absenceRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "SELECT * FROM absence";
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function findOneById(string $id): false|stdClass
    {
        $sql = "SELECT * FROM absence WHERE idAbsence = '$id'";
        return $this->db->selectOne($sql, stdClass::class);
    }
    public function findOneByMatriculeAndTrimestreAndAnnee(string $matricule, string $trimestre, string $annee): false|stdClass
    {
        $sql = "SELECT * FROM absence WHERE matricule = '$matricule' and trimestreAbsence = '$trimestre' and codeAnnee = '$annee'";
        return $this->db->selectOne($sql, stdClass::class);
    }

    public function findAllByMatricule(string $matricule): array
    {
        $sql = "SELECT * FROM absence WHERE matricule = '$matricule'";
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function findAllByClasseAndTrimestre(string $codeSalleClasse, string $trimestre): array
    {
        $sql = "SELECT * FROM absence where matricule in (select matricule from inscrit where codeSalleClasse = '$codeSalleClasse') and trimestreAbsence = '$trimestre'";
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function insert(array $data): bool
    {
        $sql = "INSERT INTO absence (matricule, nombreAbsence, trimestreAbsence, codeAnnee) VALUES (:matricule, :nombreAbsence, :trimestreAbsence, :codeAnnee)";
        return $this->db->prepare($sql)->execute($data);
    }

    public function update(string $id, array $data): bool
    {
        $sql = "UPDATE absence SET matricule = :matricule, nombreAbsence = :nombreAbsence, trimestreAbsence = :trimestreAbsence, codeAnnee = :codeAnnee WHERE idAbsence = :idAbsence";
        $data['idAbsence'] = $id;
        return $this->db->prepare($sql)->execute($data);
    }

    public function delete(string $id): bool
    {
        $sql = "DELETE FROM absence WHERE idAbsence = :idAbsence";
        return $this->db->prepare($sql)->execute(['idAbsence' => $id]);
    }

    public function lastInsertId(): int
    {
        return $this->db->lastInsertId();
    }
}
