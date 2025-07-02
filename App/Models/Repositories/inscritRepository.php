<?php

namespace App\Models\Repositories;

use Core\Services\Database;
use stdClass;

class inscritRepository extends Repository
{


    public function findAll(): array
    {
        $sql = "select * from inscrit_view";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }
    public function findAllByAnnee($codeAnnee,$by="matricule"): array
    {
        $sql = "select * from inscrit_view where codeAnnee='$codeAnnee' order by $by asc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function findAllByClasse($classe): array
    {
        $sql = "select * from inscrit_view where codeSalleClasse='$classe' order by numeroInscrit asc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    } 
     public function findAllByClasseForBulletin($classe): array
    {
        $sql = "select matricule,numeroInscrit,nom,isme,nni,imagePath,codeSalleClasse,pseudoSalleClasse from inscrit_view where codeSalleClasse='$classe' order by numeroInscrit asc";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    } 
   

    

    

    function findOne($id): false|stdClass
    {
        $sql = "select * from inscrit_view where matricule='$id'or nni='$id'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
    public function findOneByCodeAndAnnee(string $id, string $annee): false|stdClass
    {
        $sql = "select * from inscrit_view where (matricule='$id'or nni='$id') and codeAnnee='$annee'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
    function findOneByMatriculeAndAnnee(string $id, string $annee): false|stdClass
    {
        $sql = "select * from inscrit_view where matricule='$id' and codeAnnee='$annee'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    } 
    public function findOneByMatriculeAndAnneeForBulletin(string $id, string $annee): false|stdClass
    {
        $sql = "select matricule,numeroInscrit,nom,isme,nni,imagePath,codeSalleClasse,pseudoSalleClasse,codeClasse from inscrit_view where matricule='$id' and codeAnnee='$annee'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
    function findOneByid($id): false|stdClass
    {
        $sql = "select * from inscrit_view where idInscrit='$id'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }
    public function findlastOneByClasse($codeSalleClasse): false|stdClass
    {
        $sql = "select * from inscrit_view where codeSalleClasse='$codeSalleClasse' order by numeroInscrit desc, dateInscription desc limit 1";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }

    public function findByCodeAnnee($codeAnnee): array
    {
        $sql = "select * from inscrit_view where codeAnnee='$codeAnnee'";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function findLastInserted(): false|stdClass
    {
        $idInscrit = $this->db->lastInsertId();
        $sql = "select * from inscrit_view where idInscrit='$idInscrit'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }

    public function count($codeAnnee=null) {
        $sql = "select count(*) as nombre from inscrit_view";
        if($codeAnnee)$sql.=" where codeAnnee='$codeAnnee'";
        $result = $this->db->selectOne($sql);
        return $result;
    }

    public function insert($idInscrit, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription): bool
    {
        $sql = "insert into inscrit(idInscrit,matricule,codeSalleClasse,numeroInscrit,typeInscrit,dateInscription) values(:idInscrit,:matricule,:codeSalleClasse,:numeroInscrit,:typeInscrit,:dateInscription)";
        $result = $this->db->prepare($sql)->execute([
            "idInscrit" => $idInscrit,
            "matricule" => $matricule,
            "codeSalleClasse" => $codeSalleClasse,
            "numeroInscrit" => $numeroInscrit,
            "typeInscrit" => $typeInscrit,
            "dateInscription" => $dateInscription
        ]);
        return $result;
    }

    public function update($idInscrit, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription): bool
    {
        $sql = "update inscrit set matricule=:matricule,codeSalleClasse=:codeSalleClasse,numeroInscrit=:numeroInscrit,typeInscrit=:typeInscrit,dateInscription=:dateInscription where idInscrit=:idInscrit";
        $result = $this->db->prepare($sql)->execute([
            "idInscrit" => $idInscrit,
            "matricule" => $matricule,
            "codeSalleClasse" => $codeSalleClasse,
            "numeroInscrit" => $numeroInscrit,
            "typeInscrit" => $typeInscrit,
            "dateInscription" => $dateInscription
        ]);
        return $result;
    }

    public function delete($idInscrit): bool
    {
        $sql = "delete from inscrit where idInscrit='$idInscrit'";
        $result = $this->db->exec($sql);
        return $result;
    }
}
