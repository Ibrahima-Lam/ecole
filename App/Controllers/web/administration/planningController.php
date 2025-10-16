<?php

namespace App\Controllers\web\administration;

use App\Controllers\src\WebController;
use App\Services\src\HoraireService;
use App\Services\src\MatiereService;
use App\Services\src\PlanningService;
use App\Services\src\ProfesseurService;
use App\Services\src\SalleClasseService;

class planningController extends WebController
{

    public function __construct(private PlanningService $planningService) {}
    public function index(HoraireService $horaireService, ProfesseurService $professeurService, MatiereService $matiereService, SalleClasseService $salleClasseService)
    {
        $plannings = $this->planningService->getAllByCodeAnnee();
        $horaires = $horaireService->getAll();
        $professeurs = $professeurService->getAll();
        $matieres = $matiereService->getAll();
        $salleClasses = $salleClasseService->getAllSalleClasseByAnnee();
        $jours = ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'];

        $this->render("planning/index", compact("plannings", "horaires", 'professeurs', 'matieres', 'salleClasses', 'jours'));
    }
}
