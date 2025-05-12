<?php
namespace App\Models\Repositories;

class EnseignerRepository extends Repository{

    public function findAll():false|array{
        $query="SELECT * FROM enseigner_view";
        return $this->db->selectAll($query,\stdClass::class);
    }
  public function findOneById($id):false|\stdClass{
        $query="SELECT * FROM enseigner_view WHERE idEnseigner = '$id'";
        return $this->db->selectOne($query,\stdClass::class);
    }
    public function findAllByMatriculeProfesseur($matriculeProfesseur):false|array{
        $query="SELECT * FROM enseigner_view WHERE matriculeProfesseur = '$matriculeProfesseur'";
        return $this->db->selectAll($query,\stdClass::class);
    }
    public function findAllByCodeMatiere($codeMatiere):false|array{
        $query="SELECT * FROM enseigner_view WHERE codeMatiere = '$codeMatiere'";
        return $this->db->selectAll($query,\stdClass::class);
    }
    public function findAllByCodeSalleClasse($codeSalleClasse):false|array{
        $query="SELECT * FROM enseigner_view WHERE codeSalleClasse = '$codeSalleClasse'";
        return $this->db->selectAll($query,\stdClass::class);
    }


    public function insert( $matriculeProfesseur,$codeMatiere,$codeSalleClasse): bool{
        $query="INSERT INTO enseigner (matriculeProfesseur, codeMatiere, codeSalleClasse) VALUES (:matriculeProfesseur, :codeMatiere, :codeSalleClasse)";
        return $this->db->prepare($query)->execute(["matriculeProfesseur" => $matriculeProfesseur, "codeMatiere" => $codeMatiere, "codeSalleClasse" => $codeSalleClasse]);
    }
    public function update($id,  $matriculeProfesseur,$codeMatiere,$codeSalleClasse): bool{
        $query="UPDATE enseigner SET matriculeProfesseur = :matriculeProfesseur, codeMatiere = :codeMatiere, codeSalleClasse = :codeSalleClasse WHERE idEnseigner = :id";
        return $this->db->prepare($query)->execute(["matriculeProfesseur" => $matriculeProfesseur, "codeMatiere" => $codeMatiere, "codeSalleClasse" => $codeSalleClasse,"id" => $id]);
    }
    public function delete($id): bool{
        $query="DELETE FROM enseigner WHERE idEnseigner = :id";
        return $this->db->prepare($query)->execute(["id" => $id]);
    }

    public function lastinsertedId(){
        return $this->db->lastInsertId();
    }
}