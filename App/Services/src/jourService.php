<?php

namespace App\Services\src;

use App\Repositories\jourRepository;

class jourService
{
    public function __construct(public jourRepository $jourRepository) {}

    public function getAll(): array
    {
        return $this->jourRepository->findAll();
    }
}
