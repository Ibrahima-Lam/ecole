<?php

namespace App\Services\src;

use App\Repositories\HoraireRepository;

class HoraireService
{
    public function __construct(private HoraireRepository $repository)
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

    public function create(array $data): bool
    {
        return $this->repository->insert($data);
    }

    public function update(string $id, array $data): bool
    {
        return $this->repository->update($id, $data);
    }

    public function delete(string $id): bool
    {
        return $this->repository->delete($id);
    }
}
