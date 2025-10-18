<?php

namespace App\Services\src;

use App\Repositories\professeurMatiereRepository;

class professeurMatiereService
{
    public function __construct(private professeurMatiereRepository $repository)
    {
    }
    public function getAll(): array
    {
        return $this->repository->findAll();
    }
    public function getAllByProf(string $id): array
    {
        return $this->repository->findAllByMatriculeProfesseur($id);
    }
}