<?php
namespace App\Models\Repositories;

use stdClass;

class correspondanceRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "SELECT * FROM correspondance_view";
       return $this->db->selectAll($sql, stdClass::class);
    } 
    public function findOneById(string $id): ?stdClass
    {
        $sql = "SELECT * FROM correspondance_view WHERE idCorrespondance = '$id'";
        return $this->db->selectOne($sql, stdClass::class);
    }

    public function findOneByMatricule(string $matricule): false|stdClass
    {
        $sql = "SELECT * FROM correspondance_view WHERE matricule = '$matricule'";
        return $this->db->selectOne($sql, stdClass::class);
    }
    public function findAllByCorrespondant(string $idCorrespondant): array
    {
        $sql = "SELECT * FROM correspondance_view WHERE idCorrespondant = '$idCorrespondant'";
        return $this->db->selectAll($sql, stdClass::class);
    } 
    public function findAllByMatricule(string $matricule): array
    {
        $sql = "SELECT * FROM correspondance_view WHERE matricule = '$matricule'";
        return $this->db->selectAll($sql, stdClass::class);
    }
   

    public function insert(array $tab): bool
    {
        $sql = "INSERT INTO correspondance (matricule, idCorrespondant) VALUES (:matricule, :idCorrespondant)"; 
        $this->db->prepare($sql)->execute([
            'matricule' => $tab['matricule'],
            'idCorrespondant' => $tab['idCorrespondant'],
        ]);
        return true;
    }
    public function update(string $id, array $tab): bool
    {
        $sql = "UPDATE correspondance SET matricule = :matricule, idCorrespondant = :idCorrespondant WHERE idCorrespondance = :idCorrespondance";
        $this->db->prepare($sql)->execute([
            'idCorrespondance' => $id,
            'matricule' => $tab['matricule'],
            'idCorrespondant' => $tab['idCorrespondant'],
        ]);
        return true;
    }
    
    public function delete(string $id): bool
    {
        $sql = "DELETE FROM correspondance WHERE idCorrespondance = :idCorrespondance";
       return $this->db->prepare($sql)->execute(['idCorrespondance' => $id]);
        }

        public function lastInsertId(): int
    {
        return $this->db->lastInsertId();
    }
}