<?php

namespace App\providers;


use App\Repositories\absenceRepository;
use App\Services\src\AbsenceService;
use App\Services\src\AnneeScolaireService;
use App\Services\src\ClasseMatiereService;
use App\Services\src\EleveService;
use App\Services\src\EtablissementService;
use App\Services\src\ExamenService;
use App\Services\src\SalleClasseService;
use App\Services\src\UserService;
use App\Services\src\MatiereService;
use App\Services\src\ProfesseurService;
use App\Services\src\HoraireService;
use App\Services\src\PlanningService;
use App\Repositories\PlanningRepository;
use App\Repositories\professeurMatiereRepository;
use App\Services\src\jourService;
use App\Services\src\professeurMatiereService;
use App\Repositories\jourRepository;

class AppServiceProvider
{
    public $app;
    public function __construct($app)
    {
        $this->app = $app;
    }
    public function register()
    {
        $this->app->singleton(AnneeScolaireService::class, fn() => new AnneeScolaireService());
        $this->app->singleton(EtablissementService::class, fn() => new EtablissementService());
        $this->app->singleton(ClasseMatiereService::class, fn() => new ClasseMatiereService($this->app->make(AnneeScolaireService::class)));
        $this->app->singleton(SalleClasseService::class, fn() => new SalleClasseService($this->app->make(AnneeScolaireService::class)));
        $this->app->singleton(ExamenService::class, fn() => new ExamenService(
            $this->app->make(AnneeScolaireService::class),
            $this->app->make(SalleClasseService::class),
            $this->app->make(ClasseMatiereService::class)
        ));
        $this->app->singleton(professeurMatiereService::class, fn() => new professeurMatiereService($this->app->make(professeurMatiereRepository::class)));
        $this->app->singleton(UserService::class, fn() => new UserService());
        $this->app->singleton(MatiereService::class, fn($cn) => new MatiereService($cn->make(\App\Repositories\MatiereRepository::class)));
        $this->app->singleton(ProfesseurService::class, fn($cn) => new ProfesseurService($cn->make(\App\Repositories\ProfesseurRepository::class)));
        $this->app->singleton(HoraireService::class, fn($cn) => new HoraireService($cn->make(\App\Repositories\HoraireRepository::class)));
        $this->app->singleton(EleveService::class, fn($cn) => new EleveService($cn->make(AnneeScolaireService::class)));
        $this->app->singleton(AbsenceService::class, fn() => new AbsenceService($this->app->make(AnneeScolaireService::class), $this->app->make(absenceRepository::class)));
        $this->app->singleton(PlanningService::class, fn($cn) => new PlanningService($cn->make(PlanningRepository::class), $cn->make(AnneeScolaireService::class)));
        $this->app->singleton(jourService::class, fn($cn) => new jourService($cn->make(jourRepository::class)));
    }
}
