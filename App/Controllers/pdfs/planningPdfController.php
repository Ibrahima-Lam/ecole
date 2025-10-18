<?php

namespace App\Controllers\pdfs;

use App\Controllers\src\PdfController;
use App\Services\src\HoraireService;
use App\Services\src\MatiereService;
use App\Services\src\PlanningService;
use App\Services\src\ProfesseurService;
use App\Services\src\SalleClasseService;
use App\Services\src\jourService;
use App\Services\src\ProfesseurMatiereService;
use App\Services\src\ClasseMatiereService;

class planningPdfController extends PdfController
{

    public function __construct(private PlanningService $planningService) {}

    public function index(HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, MatiereService $matiereService, SalleClasseService $salleClasseService)
    {
        $this->table_classes($horaireService, $jourService, $professeurService, $matiereService, $salleClasseService);
    }
    public function liste(HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, MatiereService $matiereService, SalleClasseService $salleClasseService)
    {
        $data = $this->planningService->liste($horaireService, $jourService, $professeurService, $matiereService, $salleClasseService, null);

        pdf("planning/index", $data, ['name' => 'planning.pdf']);
    }
    public function table_classes(HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, MatiereService $matiereService, SalleClasseService $salleClasseService, $codeSalleClasse = null)
    {
        $data = $this->planningService->table_classes($horaireService, $jourService, $professeurService, $matiereService, $salleClasseService, null, $codeSalleClasse);

        pdf("planning/table_classe", $data, ['name' => 'planning.pdf']);
    }
    public function table_profs(HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, MatiereService $matiereService, SalleClasseService $salleClasseService, $matriculeProfesseur = null)
    {
        $data = $this->planningService->table_profs($horaireService, $jourService, $professeurService, $matiereService, $salleClasseService, null, $matriculeProfesseur);
        pdf("planning/table_prof", $data, ['name' => 'planning.pdf']);
    }
    public function prof(string $matriculeProfesseur, jourService $jourService, HoraireService $horaireService, ProfesseurService $professeurService, ProfesseurMatiereService $professeurMatiereService, MatiereService $matiereService, SalleClasseService $salleClasseService): void
    {
        $data = $this->planningService->prof($matriculeProfesseur, $jourService, $horaireService, $professeurService, $professeurMatiereService, $matiereService, $salleClasseService);
        pdf("planning/index", $data, ['name' => 'planning_' . $matriculeProfesseur . '.pdf']);
    }

    public function salleclasse(string $codeSalleClasse, HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, ProfesseurMatiereService $professeurMatiereService, ClasseMatiereService $classeMatiereService, MatiereService $matiereService, SalleClasseService $salleClasseService): void
    {
        $data = $this->planningService->salleclasse($codeSalleClasse, $horaireService, $jourService, $professeurService, $professeurMatiereService, $classeMatiereService, $matiereService, $salleClasseService);
        pdf("planning/index", $data, ['name' => 'planning_' . $codeSalleClasse . '.pdf']);
    }
}
