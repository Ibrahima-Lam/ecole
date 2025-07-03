<?php
namespace App\Repositories;

use App\Models\Etablissement;

class EtablissementRepository extends Repository
{
   
    public function findAll(): array
    {
        return $this->db->selectAll('SELECT * FROM etablissement', Etablissement::class);
    }

    public function findById(int $id): false|Etablissement
    {
        return $this->db->selectOne("SELECT * FROM etablissement WHERE idEtablissement = '$id'", Etablissement::class);
    }
    public function findLastOne(): false|Etablissement
    {
        try{
            return $this->db->selectOne("SELECT * FROM etablissement ORDER BY idEtablissement DESC LIMIT 1", Etablissement::class);
        }catch(\Exception $e){
            return false;
        }
    }

    public function insert(Etablissement $etablissement): bool
    {
        return $this->db->prepare('INSERT INTO etablissement (nomEtablissement, ismeEtablissement, adresseEtablissement, villeEtablissement, telEtablissement, emailEtablissement, imagePathEtablissement) VALUES (:nomEtablissement, :ismeEtablissement, :adresseEtablissement, :villeEtablissement, :telEtablissement, :emailEtablissement, :imagePathEtablissement)')->execute([
            'nomEtablissement' => $etablissement->nomEtablissement,
            'ismeEtablissement' => $etablissement->ismeEtablissement,
            'adresseEtablissement' => $etablissement->adresseEtablissement,
            'villeEtablissement' => $etablissement->villeEtablissement,
            'telEtablissement' => $etablissement->telEtablissement,
            'emailEtablissement' => $etablissement->emailEtablissement,
            'imagePathEtablissement' => $etablissement->imagePathEtablissement,
        ]);
    }

    public function update(Etablissement $etablissement): bool
    {
        return $this->db->prepare('UPDATE etablissement SET nomEtablissement = :nomEtablissement, ismeEtablissement = :ismeEtablissement, adresseEtablissement = :adresseEtablissement, villeEtablissement = :villeEtablissement, telEtablissement = :telEtablissement, emailEtablissement = :emailEtablissement, imagePathEtablissement = :imagePathEtablissement WHERE idEtablissement = :id')->execute([
              'id' => $etablissement->idEtablissement,
            'nomEtablissement' => $etablissement->nomEtablissement,
            'ismeEtablissement' => $etablissement->ismeEtablissement,
            'adresseEtablissement' => $etablissement->adresseEtablissement,
            'villeEtablissement' => $etablissement->villeEtablissement,
            'telEtablissement' => $etablissement->telEtablissement,
            'emailEtablissement' => $etablissement->emailEtablissement,
            'imagePathEtablissement' => $etablissement->imagePathEtablissement,
        ]);
    }

    public function delete(int $id): bool
    {
        return $this->db->prepare('DELETE FROM etablissement WHERE idEtablissement = :id')->execute(['id' => $id]);
    }
}