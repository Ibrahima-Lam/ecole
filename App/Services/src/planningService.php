<?php

namespace App\Services\src;

use App\Repositories\PlanningRepository;

class PlanningService
{
    public function __construct(public PlanningRepository $planningRepository, private AnneeScolaireService $anneeScolaireService) {}

    function getAllByCodeAnnee(): array
    {
        $codeAnnee = $this->anneeScolaireService->getCodeAnnee();
        return $this->planningRepository->findAllByCodeAnnee($codeAnnee);
    }
}
