<?php

namespace App\Repositories;

use absenceClasse;
use stdClass;

class absenceClasseRepository extends Repository
{
    public function __construct()
    {
        parent::__construct();
    }

    public function findAll(): array
    {
        $sql = "SELECT * FROM absence_classe_view";
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function findOneById(string $id): false|stdClass
    {
        $sql = "SELECT * FROM absence_classe_view WHERE idAbsenceClasse = '$id'";
        return $this->db->selectOne($sql, stdClass::class);
    }

    public function findAllBySalleAndDate(string $codeSalleclasse, string $date): array
    {
        $sql = "SELECT * FROM absence_classe_view WHERE codeSalleclasse = '$codeSalleclasse' AND dateAbsenceClasse = '$date'";
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function findAllBySalleAndDateRange(string $codeSalleclasse, string $dateDebut, string $dateFin): array
    {
        $sql = "SELECT * FROM absence_classe_view WHERE codeSalleclasse = '$codeSalleclasse' AND dateAbsenceClasse BETWEEN '$dateDebut' AND '$dateFin'";
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function findByFilters(string $codeSalleclasse, string $codeHoraire, string $dateDebut, string $dateFin): array
    {
        $sql = "SELECT * FROM absence_classe_view WHERE 1";
        if ($codeSalleclasse) {
            $sql .= " AND codeSalleclasse = '$codeSalleclasse'";
        }
        if ($codeHoraire) {
            $sql .= " AND codeHoraire = '$codeHoraire'";
        }
        if ($dateDebut && $dateFin) {
            $sql .= " AND dateAbsenceClasse BETWEEN '$dateDebut' AND '$dateFin'";
        }
        return $this->db->selectAll($sql, stdClass::class);
    }

    public function insert(array $data): bool
    {
        $sql = "INSERT INTO absence_classe (absents, codeSalleclasse, codeHoraire, dateAbsenceClasse, justifies, createdAt, updatedAt) VALUES (:absents, :codeSalleclasse, :codeHoraire, :dateAbsenceClasse, :justifies, :createdAt, :updatedAt)";
        return $this->db->prepare($sql)->execute($data);
    }

    public function update(string $id, array $data): bool
    {
        $sql = "UPDATE absence_classe SET absents = :absents, codeSalleclasse = :codeSalleclasse, codeHoraire = :codeHoraire, dateAbsenceClasse = :dateAbsenceClasse, justifies = :justifies, updatedAt = :updatedAt WHERE idAbsenceClasse = :idAbsenceClasse";
        $data['idAbsenceClasse'] = $id;
        return $this->db->prepare($sql)->execute($data);
    }

    public function delete(string $id): bool
    {
        $sql = "DELETE FROM absence_classe WHERE idAbsenceClasse = :idAbsenceClasse";
        return $this->db->prepare($sql)->execute(['idAbsenceClasse' => $id]);
    }

    public function lastInsertId(): int
    {
        return $this->db->lastInsertId();
    }

    public function toModel(object $obj): absenceClasse
    {
        $model = new absenceClasse();
        $model->idAbsenceClasse = $obj->idAbsenceClasse;
        $model->absents = $obj->absents;
        $model->codeSalleclasse = $obj->codeSalleclasse;
        $model->codeHoraire = $obj->codeHoraire;
        $model->dateAbsenceClasse = $obj->dateAbsenceClasse;
        $model->justifies = $obj->justifies ?? null;
        $model->createdAt = $obj->createdAt ?? null;
        $model->updatedAt = $obj->updatedAt ?? null;
        return $model;
    }
}
