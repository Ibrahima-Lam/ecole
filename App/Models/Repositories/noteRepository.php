<?php

namespace App\Models\Repositories;
use App\Models\Repositories\Repository;
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

    public function update($id,$note):bool
    {
        $sql = "update note set note=:note where idNote='$id' ";
        $result = $this->db->prepare($sql)->execute([
            "note" => $note
        ]);
        return $result;
    }

    public function delete($id):bool
    {
        $sql = "delete from note where idNote='$id' ";
        $result = $this->db->exec($sql);
        return $result;
    }




}
?>