<?php
namespace App\providers;


use App\Services\src\AnneeScolaireService;
use App\Services\src\ClasseMatiereService;
use App\Services\src\EleveService;
use App\Services\src\EtablissementService;
use App\Services\src\ExamenService;
use App\Services\src\SalleClasseService;
use App\Services\src\UserService;

class AppServiceProvider {
    public $app;
    public function __construct($app) {
        $this->app = $app;
    }
    public function register() {
       $this->app->singleton(AnneeScolaireService::class, fn()=> new AnneeScolaireService());
       $this->app->singleton(EtablissementService::class, fn()=> new EtablissementService());
       $this->app->singleton(ClasseMatiereService::class, fn()=> new ClasseMatiereService($this->app->make(AnneeScolaireService::class)));
       $this->app->singleton(SalleClasseService::class, fn()=> new SalleClasseService($this->app->make(AnneeScolaireService::class)));
       $this->app->singleton(ExamenService::class, fn()=> new ExamenService($this->app->make(AnneeScolaireService::class),
       $this->app->make(SalleClasseService::class),$this->app->make(ClasseMatiereService::class)));
       $this->app->singleton(UserService::class, fn()=> new UserService());
       $this->app->singleton(EleveService::class, fn($cn)=> new EleveService($cn->make(AnneeScolaireService::class)));
    }
}