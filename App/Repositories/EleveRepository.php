<?php

namespace App\Repositories;

use App\Models\Eleve;


class EleveRepository extends Repository
{



    public function findOneByMatricule(string $matricule): false|Eleve
    {
        $sql = "select * from eleve where matricule = '$matricule'";
        $result = $this->db->selectOne($sql, Eleve::class);
        return $result;
    }

    public function findAll(): array
    {
        $sql = "select * from eleve order by matricule desc";
        $result = $this->db->selectAll($sql, Eleve::class);
        return $result;
    }

    public function findAllNonInscritsByAnnee($annee): array //findByAnnee
    {
        $sql = "select * from eleve where matricule not in (select matricule from inscrit_view where codeAnnee='$annee') order by matricule asc";
        $result = $this->db->selectAll($sql, \stdClass::class);
        return $result;
    }

    public function findAllByStatut($statutEleve): array //findByAnnee
    {
        $sql = "select * from eleve where statutEleve='$statutEleve' order by matricule asc";
        $result = $this->db->selectAll($sql, \stdClass::class);
        return $result;
    }
     public function countNonInscrit($annee): \stdClass //findByAnnee
    {
        $sql = "select count(matricule) as nombre from eleve where matricule not in (select matricule from inscrit_view where codeAnnee='$annee') order by matricule asc";
        $result = $this->db->selectOne($sql, \stdClass::class);
        return $result;
    }

    public function count($statut=null) {
        $sql = "select count(*) as nombre from eleve";
        if($statut)$sql.=" where statutEleve='$statut'";
        $result = $this->db->selectOne($sql);
        return $result;
    }

    public function insert(string $matricule, string  $nom, ?string $isme, ?string  $sexe, ?string  $dateNaissance, ?string  $lieuNaissance, ?string  $adresse, ?string  $nni, ?string  $statutEleve): bool
    {
        $sql = "insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni,statutEleve) values(:matricule,:nom,:isme,:sexe,:dateNaissance,:lieuNaissance,:adresse,:nni,:statutEleve)";
        $result = $this->db->prepare($sql)->execute([
            "matricule" => $matricule,
            "nom" => $nom,
            "isme" => $isme,
            "sexe" => $sexe,
            "dateNaissance" => $dateNaissance,
            "lieuNaissance" => $lieuNaissance,
            "adresse" => $adresse,
            "nni" => $nni,
            "statutEleve" => $statutEleve
        ]);
        return $result;
    }

    public function update(string $oldMatricule, string $matricule, string  $nom, string $isme, string  $sexe, string  $dateNaissance, string  $lieuNaissance, string  $adresse, string  $nni, string  $statutEleve): bool
    {
        $sql = "update eleve set matricule=:matricule,nom=:nom,isme=:isme,sexe=:sexe,dateNaissance=:dateNaissance,lieuNaissance=:lieuNaissance,adresse=:adresse,nni=:nni,statutEleve=:statutEleve where matricule=:oldMatricule";
        $result = $this->db->prepare($sql)->execute([
            "oldMatricule" => $oldMatricule,
            "matricule" => $matricule,
            "nom" => $nom,
            "isme" => $isme,
            "sexe" => $sexe,
            "dateNaissance" => $dateNaissance,
            "lieuNaissance" => $lieuNaissance,
            "adresse" => $adresse,
            "nni" => $nni,
            "statutEleve" => $statutEleve
        ]);
        return $result;
    }

    public function delete(string $matricule): bool
    {
        $sql = "delete from eleve where matricule=:matricule";
        $result = $this->db->prepare($sql)->execute([
            "matricule" => $matricule
        ]);
        return $result;
    }
    public function updateImage(string $matricule, string $imagePath): bool
    {
        $sql = "update eleve set imagePath=:imagePath where matricule=:matricule";
        $result = $this->db->prepare($sql)->execute([
            "matricule" => $matricule,
            "imagePath" => $imagePath
        ]);
        return $result;
    }
}
