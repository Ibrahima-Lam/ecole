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
   public function findAllByClasseAndMatiere($classe,$matiere): array{
       $sql = "select * from examen_view where codeSalleClasse='$classe' and codeMatiere='$matiere' order by typeEvaluation desc,indiceEvaluation asc";
       $result = $this->db->selectAll($sql, stdClass::class);
       return $result;
   }
   public function findAllByClasseAndMatiereForBulletin($classe,$matiere): array{
       $sql = "select codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,statutExamen,indiceEvaluation,typeEvaluation,trimestreExamen from examen_view where codeSalleClasse='$classe' and codeMatiere='$matiere' order by typeEvaluation desc,indiceEvaluation asc";
       $result = $this->db->selectAll($sql, stdClass::class);
       return $result;
   }
     public function findAllByMatiereAndAnnee ($matiere,$annee): array{
        $sql = "select * from examen_view where codeMatiere='$matiere' and codeAnnee='$annee'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function insert($codeExamen,$codeClasseMatiere,$codeSalleClasse,$codeEvaluation,$dateExamen,$heureDebutExamen,$heureFinExamen,$statutExamen,$trimestreExamen): bool{
        $sql = "insert into examen (codeExamen,codeClasseMatiere,codeSalleClasse,codeEvaluation,dateExamen,statutExamen,heureDebutExamen,heureFinExamen,trimestreExamen) values (:codeExamen,:codeClasseMatiere,:codeSalleClasse,:codeEvaluation,:dateExamen,:statutExamen,:heureDebutExamen,:heureFinExamen,:trimestreExamen)";
        $result = $this->db->prepare($sql)->execute([
            'codeExamen' => $codeExamen,
            'codeClasseMatiere' => $codeClasseMatiere,
            'codeSalleClasse' => $codeSalleClasse,
            'codeEvaluation' => $codeEvaluation,
            'dateExamen' => $dateExamen,
            'statutExamen' => $statutExamen,
            'heureDebutExamen' => $heureDebutExamen,
            'heureFinExamen' => $heureFinExamen,
            'trimestreExamen' => $trimestreExamen,
        ]);
        return $result;
    }

    public function update($oldCode, $dateExamen, $heureDebutExamen, $heureFinExamen, $statutExamen,$trimestreExamen): bool{
        $sql = 'update examen set dateExamen=:dateExamen,heureDebutExamen=:heureDebutExamen,heureFinExamen=:heureFinExamen,statutExamen=:statutExamen,trimestreExamen=:trimestreExamen where codeExamen=:oldCode';
        $result = $this->db->prepare($sql)->execute([
            'oldCode' => $oldCode,
            'dateExamen' => $dateExamen,
            'heureDebutExamen' => $heureDebutExamen,
            'heureFinExamen' => $heureFinExamen,
            'statutExamen' => $statutExamen,
            'trimestreExamen' => $trimestreExamen,
        ]);
        return $result;
    }

    public function delete($code): bool{
        $sql = "delete from examen where codeExamen='$code'";
        $result = $this->db->exec($sql);
        return $result;
    }
}