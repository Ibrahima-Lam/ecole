<?php
namespace App\Models\Repositories;

class professeurMatiereRepository extends Repository
{
    public function findAll():false|array{
        $query="SELECT * FROM professeur_matiere_view";
        return $this->db->selectAll($query,\stdClass::class);
    }
    public function findAllByCodeMatiere($codeMatiere):false|array{
        $query="SELECT * FROM professeur_matiere_view WHERE codeMatiere = '$codeMatiere'";
        return $this->db->selectAll($query,\stdClass::class);
    }
    public function findAllByMatriculeProfesseur($matriculeProfesseur):false|array{
        $query="SELECT * FROM professeur_matiere_view WHERE matriculeProfesseur = '$matriculeProfesseur'";
        return $this->db->selectAll($query,\stdClass::class);
    }
    public function findByCodeMatiereAndMatriculeProfesseur($codeMatiere, $matriculeProfesseur):false|\stdClass{
        $query="SELECT * FROM professeur_matiere_view WHERE codeMatiere = '$codeMatiere' AND matriculeProfesseur = '$matriculeProfesseur'";
        return $this->db->selectOne($query,\stdClass::class);
    }
    public function insert( $matriculeProfesseur,$codeMatiere): bool{
        $query="INSERT INTO professeur_matiere (codeMatiere, matriculeProfesseur) VALUES (:codeMatiere, :matriculeProfesseur)";
        return $this->db->prepare($query)->execute(["codeMatiere" => $codeMatiere, "matriculeProfesseur" => $matriculeProfesseur]);
    }
    public function update($oldMatriculeProfesseur,$oldCodeMatiere,  $matriculeProfesseur,$codeMatiere): bool{
        $query="UPDATE professeur_matiere SET codeMatiere = :codeMatiere, matriculeProfesseur = :matriculeProfesseur WHERE codeMatiere = :oldCodeMatiere AND matriculeProfesseur = :oldMatriculeProfesseur";
        return $this->db->prepare($query)->execute(["codeMatiere" => $codeMatiere, "matriculeProfesseur" => $matriculeProfesseur,"oldCodeMatiere" => $oldCodeMatiere, "oldMatriculeProfesseur" => $oldMatriculeProfesseur]);
    }
    public function delete($oldMatriculeProfesseur,$oldCodeMatiere): bool{
        $query="DELETE FROM professeur_matiere WHERE codeMatiere = :oldCodeMatiere AND matriculeProfesseur = :oldMatriculeProfesseur";
        return $this->db->prepare($query)->execute(["oldCodeMatiere" => $oldCodeMatiere, "oldMatriculeProfesseur" => $oldMatriculeProfesseur]);
    }
}