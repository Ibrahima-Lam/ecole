<?php

namespace App\Repositories;
    
class ProfesseurRepository extends Repository
{
    
    public function findAll(): false|array
    {
        $sql="SELECT * FROM professeur p join specialite s on p.codeSpecialite=s.codeSpecialite ";
        $result = $this->db->selectAll($sql, \stdClass::class);
        return $result;
    }
     public function findAllSpecialite(): false|array
    {
        $sql="SELECT * FROM specialite ";
        $result = $this->db->selectAll($sql, \stdClass::class);
        return $result;
    }
    public function findOneByMatricule(string $matricule): false|\stdClass
    {
        $sql = "select * from professeur p left join specialite s on p.codeSpecialite=s.codeSpecialite where matriculeProfesseur = '$matricule'";
        $result = $this->db->selectOne($sql, \stdClass::class);
        return $result;
    }

    public function insert(string $matricule, string  $nom, ?string $isme, ?string  $sexe, ?string  $adresse, ?string  $nni, ?string $codeSpecialite, ?string $dateDebut, ?string $dateArrivee, ?string $tel, ?string $email,?string $statut, ?string $cycle): bool
    {
        $sql = "insert into professeur(matriculeProfesseur,nomProfesseur,ismeProfesseur,sexeProfesseur,adresseProfesseur,nniProfesseur,codeSpecialite,dateDebutProfesseur,dateArriveeProfesseur,telProfesseur,emailProfesseur,statutProfesseur,cycleProfesseur) values(:matriculeProfesseur,:nomProfesseur,:ismeProfesseur,:sexeProfesseur,:adresseProfesseur,:nniProfesseur,:codeSpecialite,:dateDebutProfesseur,:dateArriveeProfesseur,:telProfesseur,:emailProfesseur,:statutProfesseur,:cycleProfesseur)";
        $result = $this->db->prepare($sql)->execute([
            "matriculeProfesseur" => $matricule,
            "nomProfesseur" => $nom,
            "ismeProfesseur" => $isme,
            "sexeProfesseur" => $sexe,
            "adresseProfesseur" => $adresse,
            "nniProfesseur" => $nni,
            "codeSpecialite" => $codeSpecialite,
            "dateDebutProfesseur" => $dateDebut,
            "dateArriveeProfesseur" => $dateArrivee,
            "telProfesseur" => $tel,
            "emailProfesseur" => $email,
            "statutProfesseur" => $statut,
            "cycleProfesseur" => $cycle
        ]);
        return $result;
    }

    public function update(string $oldMatricule, string $matricule, string  $nom, string $isme, string  $sexe, string  $adresse, string  $nni, string $codeSpecialite, string $dateDebut, string $dateArrivee, string $tel, string $email, string $statut, string $cycle): bool
    {
        $sql = "update professeur set matriculeProfesseur=:matriculeProfesseur,nomProfesseur=:nomProfesseur,ismeProfesseur=:ismeProfesseur,sexeProfesseur=:sexeProfesseur,adresseProfesseur=:adresseProfesseur,nniProfesseur=:nniProfesseur,codeSpecialite=:codeSpecialite,dateDebutProfesseur=:dateDebutProfesseur,dateArriveeProfesseur=:dateArriveeProfesseur,telProfesseur=:telProfesseur,emailProfesseur=:emailProfesseur,statutProfesseur=:statutProfesseur,cycleProfesseur=:cycleProfesseur where matriculeProfesseur=:oldMatricule";
        $result = $this->db->prepare($sql)->execute([
            "oldMatricule" => $oldMatricule,
            "matriculeProfesseur" => $matricule,
            "nomProfesseur" => $nom,
            "ismeProfesseur" => $isme,
            "sexeProfesseur" => $sexe,
            "adresseProfesseur" => $adresse,
            "nniProfesseur" => $nni,
            "codeSpecialite" => $codeSpecialite,
            "dateDebutProfesseur" => $dateDebut,
            "dateArriveeProfesseur" => $dateArrivee,
            "telProfesseur" => $tel,
            "emailProfesseur" => $email,
            "statutProfesseur" => $statut,
            "cycleProfesseur" => $cycle
        ]);
        return $result;
    }

    public function delete(string $matricule): bool
    {
        $sql = "delete from professeur where matriculeProfesseur=:matricule";
        $result = $this->db->prepare($sql)->execute([
            "matriculeProfesseur" => $matricule
        ]);
        return $result;
    }
    public function updateImage(string $matricule, string $imagePath): bool
    {
        $sql = "update professeur set imagePathProfesseur=:imagePathProfesseur where matriculeProfesseur=:matriculeProfesseur";
        $result = $this->db->prepare($sql)->execute([
            "matriculeProfesseur" => $matricule,
            "imagePathProfesseur" => $imagePath
        ]);
        return $result;
    }
}

?>