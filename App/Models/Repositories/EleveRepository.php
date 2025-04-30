<?php

namespace App\Models\Repositories;

use App\Models\Entities\EleveEntity;


class EleveRepository extends Repository
{



    public function findOneByMatricule(string $matricule): false|EleveEntity
    {
        $sql = "select * from eleve where matricule = '$matricule'";
        $result = $this->db->selectOne($sql, EleveEntity::class);
        return $result;
    }

    public function findAll(): array
    {
        $sql = "select * from eleve order by matricule desc";
        $result = $this->db->selectAll($sql, EleveEntity::class);
        return $result;
    }

    public function findAllNonInscritsByAnnee($annee): array //findByAnnee
    {
        $sql = "select * from eleve where matricule not in (select matricule from inscrit_view where codeAnnee='$annee') order by matricule asc";
        $result = $this->db->selectAll($sql, \stdClass::class);
        return $result;
    }

    public function insert(string $matricule, string  $nom, ?string $isme, ?string  $sexe, ?string  $dateNaissance, ?string  $lieuNaissance, ?string  $adresse, ?string  $nni): bool
    {
        $sql = "insert into eleve(matricule,nom,isme,sexe,dateNaissance,lieuNaissance,adresse,nni) values(:matricule,:nom,:isme,:sexe,:dateNaissance,:lieuNaissance,:adresse,:nni)";
        $result = $this->db->prepare($sql)->execute([
            "matricule" => $matricule,
            "nom" => $nom,
            "isme" => $isme,
            "sexe" => $sexe,
            "dateNaissance" => $dateNaissance,
            "lieuNaissance" => $lieuNaissance,
            "adresse" => $adresse,
            "nni" => $nni
        ]);
        return $result;
    }

    public function update(string $oldMatricule, string $matricule, string  $nom, string $isme, string  $sexe, string  $dateNaissance, string  $lieuNaissance, string  $adresse, string  $nni): bool
    {
        $sql = "update eleve set matricule=:matricule,nom=:nom,isme=:isme,sexe=:sexe,dateNaissance=:dateNaissance,lieuNaissance=:lieuNaissance,adresse=:adresse,nni=:nni where matricule=:oldMatricule";
        $result = $this->db->prepare($sql)->execute([
            "oldMatricule" => $oldMatricule,
            "matricule" => $matricule,
            "nom" => $nom,
            "isme" => $isme,
            "sexe" => $sexe,
            "dateNaissance" => $dateNaissance,
            "lieuNaissance" => $lieuNaissance,
            "adresse" => $adresse,
            "nni" => $nni
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
}
