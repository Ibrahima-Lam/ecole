<?php

namespace App\Repositories;
use App\Repositories\Repository;
use stdClass;

class NoteRepository extends Repository
{

    public function findOneById($id):false|stdClass
    {
        $sql = "select * from note_view where idNote='$id'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    } 
    public function findAll():array
    {
        $sql = "select * from note_view";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    } 
    public function findAllByAnnee($annee):array
    {
        $sql = "select * from note_view where codeAnnee='$annee'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    public function findAllByClasse($codeSalleClasse):array
    {
        $sql = "select * from note_view where codeSalleClasse='$codeSalleClasse'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
      public function findAllByClasseAndMatiere($codeSalleClasse,$codeMatiere):array
    {
        $sql = "select * from note_view where codeSalleClasse='$codeSalleClasse' and codeMatiere='$codeMatiere'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    } 
     public function findAllByClasseAndMatiereForBulletin($codeSalleClasse,$codeMatiere):array
    {
        $sql = "select idNote,matricule,codeExamen,note,codeEvaluation,codeMatiere,typeEvaluation,statutExamen,indiceEvaluation,trimestreExamen from note_view where codeSalleClasse='$codeSalleClasse' and codeMatiere='$codeMatiere'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    } 
     public function findAllByMatriculeAndClasse($matricule,$codeSalleClasse):array
    {
        $sql = "select * from note_view where codeSalleClasse='$codeSalleClasse' and matricule='$matricule'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }  public function findAllByMatriculeAndClasseForBulletin($matricule,$codeSalleClasse):array
    {
        $sql = "select idNote,matricule,codeExamen,note,codeEvaluation,codeMatiere,typeEvaluation,statutExamen,indiceEvaluation,trimestreExamen from note_view where codeSalleClasse='$codeSalleClasse' and matricule='$matricule'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    public function findAllByCodeExamen($codeExamen):array
    {
        $sql = "select * from note_view where codeExamen='$codeExamen'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    
    public function findAllByMatriculeAndAnnee($matricule, $annee):array
    {
        $sql = "select * from note_view where matricule='$matricule' and codeAnnee='$annee'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    public function findLastInserted():stdClass
    {
        $sql = "select * from note_view order by idNote desc limit 1";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }

    
    public function insert($matricule, $codeExamen, $note):bool
    {
        $sql = "insert into note(matricule,codeExamen,note) values(:matricule,:codeExamen,:note)";
        $result = $this->db->prepare($sql)->execute([
            "matricule" => $matricule,
            "codeExamen" => $codeExamen,
            "note" => $note
        ]);
        return $result;
    }

    public function updateNote($id,$note):bool
    {
        $sql = "update note set note=:note where idNote='$id' ";
        $result = $this->db->prepare($sql)->execute([
            "note" => $note
        ]);
        return $result;
    } 
    
    public function update($id,$matricule,$codeExamen,$note):bool
    {
        $sql = "update note set note=:note,matricule=:matricule,codeExamen=:codeExamen where idNote='$id' ";
        $result = $this->db->prepare($sql)->execute([
            "note" => $note,
            "matricule" => $matricule,
            "codeExamen" => $codeExamen
        ]);
        return $result;
    }

    public function delete($id):bool
    {
        $sql = "delete from note where idNote='$id' ";
        $result = $this->db->exec($sql);
        return $result;
    }
 public function deleteAllByCodeExamen($codeExamen):bool
    {
        $sql = "delete from note where codeExamen='$codeExamen' ";
        $result = $this->db->exec($sql);
        return $result;
    }




}
?>