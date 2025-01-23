<?php
namespace App\Models\Repositories;
use \stdClass;


class ExamenRepository extends Repository
{
    public function findAll(): array{
        $sql = "select * from examen_view";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    } 
    public function findOne($code): false|stdClass{
       $sql = "select * from examen_view where codeExamen='$code'";
       $result = $this->db->selectOne($sql, stdClass::class);
       return $result;
   }
    public function findAllByAnnee($annee): array{
        $sql = "select * from examen_view where codeAnnee='$annee'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    
    public function findAllByClasse($classe): array{
        $sql = "select * from examen_view where codeSalleClasse='$classe'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
     public function findAllByMatiereAndAnnee ($matiere,$annee): array{
        $sql = "select * from examen_view where codeMatiere='$matiere' and codeAnnee='$annee'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function insert($codeExamen,$codeClasseMatiere,$codeSalleClasse,$codeEvaluation,$dateExamen,$heureDebutExamen,$heureFinExamen,$statutExamen): bool{
        $sql = "insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen) values (:codeExamen,:codeClasseMatiere,:codeSalleClasse,:codeEvaluation,:dateExamen,:statutExamen,:heureDebutExamen,:heureFinExamen)";
        $result = $this->db->prepare($sql)->execute([
            'codeExamen' => $codeExamen,
            'codeClasseMatiere' => $codeClasseMatiere,
            'codeSalleClasse' => $codeSalleClasse,
            'codeEvaluation' => $codeEvaluation,
            'dateExamen' => $dateExamen,
            'statutExamen' => $statutExamen,
            'heureDebutExamen' => $heureDebutExamen,
            'heureFinExamen' => $heureFinExamen,
        ]);
        return $result;
    }

    public function update($oldCode,$newCodeExamen, $codeClasseMatiere, $codeSalleClasse, $codeEvaluation, $dateExamen, $heureDebutExamen, $heureFinExamen, $statutExamen): bool{
        $sql = 'update examen set codeExamen=:newCodeExamen,codeClasseMatiere=:codeClasseMatiere,codeSalleClasse=:codeSalleClasse,codeEvaluation=:codeEvaluation,
        dateExamen=:dateExamen,statutExamen=:statutExamen,heureDebutExamen=:heureDebutExamen,heureFinExamen=:heureFinExamen where codeExamen=:oldCode';
        $result = $this->db->prepare($sql)->execute([
            'newCodeExamen' => $newCodeExamen,
            'codeClasseMatiere' => $codeClasseMatiere,
            'codeSalleClasse' => $codeSalleClasse,
            'codeEvaluation' => $codeEvaluation,
            'dateExamen' => $dateExamen,
            'statutExamen' => $statutExamen,
            'heureDebutExamen' => $heureDebutExamen,
            'heureFinExamen' => $heureFinExamen,
            'oldCode' => $oldCode,
        ]);
        return $result;
    }

    public function delete($code): bool{
        $sql = "delete from examen where codeExamen='$code'";
        $result = $this->db->exec($sql);
        return $result;
    }
}