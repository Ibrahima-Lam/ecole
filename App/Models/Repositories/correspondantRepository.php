<?php
namespace App\Models\Repositories;

use stdClass;

class correspondantRepository extends Repository
{
    public function findAll(): array
    {
        $sql = "SELECT * FROM correspondant";
       return $this->db->selectAll($sql,stdClass::class);
    } 

    public function findOneById(string $id): ?stdClass
    {
        $sql = "SELECT * FROM correspondant WHERE idCorrespondant = '$id'";
        return $this->db->selectOne($sql,  stdClass::class);
    }

    

    public function insert(array $tab): bool
    {
        $sql = "INSERT INTO correspondant (nomCorrespondant, ismeCorrespondant, adresseCorrespondant, telCorrespondant, emailCorrespondant, nniCorrespondant, sexeCorrespondant) VALUES (:nomCorrespondant, :ismeCorrespondant, :adresseCorrespondant, :telCorrespondant, :emailCorrespondant, :nniCorrespondant, :sexeCorrespondant)"; 
        return $this->db->prepare($sql)->execute([
            'nomCorrespondant' => $tab['nomCorrespondant'],
            'ismeCorrespondant' => $tab['ismeCorrespondant'],
            'adresseCorrespondant' => $tab['adresseCorrespondant'],
            'telCorrespondant' => $tab['telCorrespondant'],
            'emailCorrespondant' => $tab['emailCorrespondant'],
            'nniCorrespondant' => $tab['nniCorrespondant'],
            'sexeCorrespondant' => $tab['sexeCorrespondant'],
        ]);
    }
    public function update(string $id, array $tab): bool
    {
        $sql = "UPDATE correspondant SET nomCorrespondant = :nomCorrespondant, ismeCorrespondant = :ismeCorrespondant, adresseCorrespondant = :adresseCorrespondant, telCorrespondant = :telCorrespondant, emailCorrespondant = :emailCorrespondant, nniCorrespondant = :nniCorrespondant, sexeCorrespondant = :sexeCorrespondant WHERE idCorrespondant = :idCorrespondant";
        return $this->db->prepare($sql)->execute([
            'idCorrespondant' => $id,
            'nomCorrespondant' => $tab['nomCorrespondant'],
            'ismeCorrespondant' => $tab['ismeCorrespondant'],
            'adresseCorrespondant' => $tab['adresseCorrespondant'],
            'telCorrespondant' => $tab['telCorrespondant'],
            'emailCorrespondant' => $tab['emailCorrespondant'],
            'nniCorrespondant' => $tab['nniCorrespondant'],
            'sexeCorrespondant' => $tab['sexeCorrespondant'],
        ]);
    }
    public function delete(string $id): bool
    {
        $sql = "DELETE FROM correspondant WHERE idCorrespondant = '$id'";
        return $this->db->prepare($sql)->execute(['idCorrespondant' => $id]);
    }

   public function lastInsertId(): int
   {
       return $this->db->lastInsertId();
   }
   public function updateImage(string $id, string $imagePath): bool
   {
       $sql = "UPDATE correspondant SET imagePathCorrespondant = :imagePathCorrespondant WHERE idCorrespondant = :idCorrespondant";
       return $this->db->prepare($sql)->execute([
           'idCorrespondant' => $id,
           'imagePathCorrespondant' => $imagePath,
       ]);
   }
}