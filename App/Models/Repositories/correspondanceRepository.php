<?php
namespace App\Models\Repositories;

use stdClass;

class correspondanceRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "SELECT * FROM correspondance";
       return $this->db->selectAll($sql);
    } 

    public function findOneByMatricule(string $matricule): ?stdClass
    {
        $sql = "SELECT * FROM correspondance WHERE matricule = :matricule";
        return $this->db->selectOne($sql, ['matricule' => $matricule]);
    }

    public function insert(array $tab): void
    {
        $sql = "INSERT INTO correspondance (matricule, idCorrespondant) VALUES (:matricule, :idCorrespondant)"; 
        $this->db->prepare($sql)->execute([
            'matricule' => $tab['matricule'],
            'idCorrespondant' => $tab['idCorrespondant'],
        ]);
    }
    public function update(string $id, array $tab): void
    {
        $sql = "UPDATE correspondance SET matricule = :matricule, idCorrespondant = :idCorrespondant WHERE idCorrespondance = :idCorrespondance";
        $this->db->prepare($sql)->execute([
            'idCorrespondance' => $id,
            'matricule' => $tab['matricule'],
            'idCorrespondant' => $tab['idCorrespondant'],
        ]);
    }
    
    public function delete(string $id): void
    {
        $sql = "DELETE FROM correspondance WHERE idCorrespondance = :idCorrespondance";
        $this->db->prepare($sql)->execute(['idCorrespondance' => $id]);
    }
}