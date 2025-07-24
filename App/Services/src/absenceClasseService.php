<?php

namespace App\Services\src;

use App\Repositories\absenceClasseRepository;

class absenceClasseService
{
    public function __construct(private absenceClasseRepository $repository)
    {
    }

    public function getAll()
    {
        return $this->repository->findAll();
    }

    public function getById(string $id)
    {
        return $this->repository->findOneById($id);
    }

    public function getBySalleAndDate(string $salle, string $date)
    {
        return $this->repository->findAllBySalleAndDate($salle, $date);
    }

    public function getBySalleAndDateRange(string $salle, string $dateDebut, string $dateFin)
    {
        return $this->repository->findAllBySalleAndDateRange($salle, $dateDebut, $dateFin);
    }

    public function getByFilters(string $salle, string $horaire, string $dateDebut, string $dateFin)
    {
        return $this->repository->findByFilters($salle, $horaire, $dateDebut, $dateFin);
    }

    public function create(array $data): bool
    {
        $data['createdAt'] = date('Y-m-d H:i:s');
        $data['updatedAt'] = date('Y-m-d H:i:s');
        return $this->repository->insert($data);
    }

    public function update(string $id, array $data): bool
    {
        $data['updatedAt'] = date('Y-m-d H:i:s');

        return $this->repository->update($id, $data);
    }

    public function delete(string $id): bool
    {
        return $this->repository->delete($id);
    }

    public function lastInsertId(): int
    {
        return $this->repository->lastInsertId();
    }
}