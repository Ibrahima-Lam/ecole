<?php

namespace App\Repositories;

use App\Entities\Horaire;
use stdClass;

class HoraireRepository extends Repository
{
    public function __construct()
    {
        parent::__construct(Horaire::class, 'horaire');
    }

    public function findAll(): array
    {
        $sql = "SELECT * FROM horaire";
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function findOneById(string $id): false|stdClass
    {
        $sql = "SELECT * FROM horaire WHERE codeHoraire = '$id'";
        return $this->db->selectOne($sql, stdClass::class);
    }

    public function insert(array $data): bool
    {
        $sql = "INSERT INTO horaire (codeHoraire, nomHoraire, debutHoraire, finHoraire) VALUES (:codeHoraire, :nomHoraire, :debutHoraire, :finHoraire)";
        return $this->db->prepare($sql)->execute($data);
    }

    public function update(string $id, array $data): bool
    {
        $sql = "UPDATE horaire SET nomHoraire = :nomHoraire, debutHoraire = :debutHoraire, finHoraire = :finHoraire WHERE codeHoraire = :codeHoraire";
        $data['codeHoraire'] = $id;
        return $this->db->prepare($sql)->execute($data);
    }

    public function delete(string $id): bool
    {
        $sql = "DELETE FROM horaire WHERE codeHoraire = :codeHoraire";
        return $this->db->prepare($sql)->execute(['codeHoraire' => $id]);
    }

    public function toModel(object $obj): Horaire
    {
        $model = new Horaire();
        $model->codeHoraire = $obj->codeHoraire;
        $model->nomHoraire = $obj->nomHoraire;
        $model->debutHoraire = $obj->debutHoraire;
        $model->finHoraire = $obj->finHoraire;
        return $model;
    }
}
