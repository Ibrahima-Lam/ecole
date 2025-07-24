<?php

namespace App\Repositories;

use App\Entities\Matiere;
use stdClass;

class MatiereRepository extends Repository
{
    public function __construct()
    {
        parent::__construct(Matiere::class, 'matiere');
    }

    public function findAll(): array
    {
        $sql = "SELECT * FROM matiere";
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function findOneById(string $id): false|stdClass
    {
        $sql = "SELECT * FROM matiere WHERE codeMatiere = '$id'";
        return $this->db->selectOne($sql, stdClass::class);
    }

    public function insert(array $data): bool
    {
        $sql = "INSERT INTO matiere (codeMatiere, libelleMatiere) VALUES (:codeMatiere, :libelleMatiere)";
        return $this->db->prepare($sql)->execute($data);
    }

    public function update(string $id, array $data): bool
    {
        $sql = "UPDATE matiere SET libelleMatiere = :libelleMatiere WHERE codeMatiere = :codeMatiere";
        $data['codeMatiere'] = $id;
        return $this->db->prepare($sql)->execute($data);
    }

    public function delete(string $id): bool
    {
        $sql = "DELETE FROM matiere WHERE codeMatiere = :codeMatiere";
        return $this->db->prepare($sql)->execute(['codeMatiere' => $id]);
    }

    public function toModel(object $obj): Matiere
    {
        $model = new Matiere();
        $model->codeMatiere = $obj->codeMatiere;
        $model->libelleMatiere = $obj->libelleMatiere;
        return $model;
    }
}