<?php
namespace App\providers;


use App\Repositories\absenceClasseRepository;
use App\Repositories\absenceRepository;
use App\Repositories\anneeScolaireRepository;
use App\Repositories\ClasseMatiereRepository;
use App\Repositories\ClasseRepository;
use App\Repositories\correspondanceRepository;
use App\Repositories\correspondantRepository;
use App\Repositories\EleveRepository;
use App\Repositories\enseignerRepository;
use App\Repositories\EtablissementRepository;
use App\Repositories\evaluationRepository;
use App\Repositories\examenRepository;
use App\Repositories\inscritRepository;
use App\Repositories\matiereRepository;
use App\Repositories\noteRepository;
use App\Repositories\professeurMatiereRepository;
use App\Repositories\professeurRepository;
use App\Repositories\SalleClasseRepository;
use App\Repositories\salleRepository;
use App\Repositories\HoraireRepository;
use App\Repositories\userRepository;
use App\Services\business\ClassebulletinService;
use App\Services\business\bulletinService;
use App\Services\business\ClasseResultatService;
use App\Services\src\AnneeScolaireService;

class RepositoryServiceProvider {
    public $app;
    public function __construct($app) {
        $this->app = $app;
    }
    public function register() {
       $this->app->singleton(AnneeScolaireRepository::class, fn($cn) => new AnneeScolaireRepository());
       $this->app->singleton(ClasseRepository::class, fn($cn) => new ClasseRepository());
       $this->app->singleton(EleveRepository::class, fn($cn) => new EleveRepository());
       $this->app->singleton(EtablissementRepository::class, fn($cn) => new EtablissementRepository());
       $this->app->singleton(UserRepository::class, fn($cn) => new UserRepository());
       $this->app->singleton(ClasseMatiereRepository::class, fn($cn) => new ClasseMatiereRepository());
       $this->app->singleton(correspondanceRepository::class, fn($cn) => new correspondanceRepository());
       $this->app->singleton(correspondantRepository::class, fn($cn) => new correspondantRepository());
       $this->app->singleton(enseignerRepository::class, fn($cn) => new enseignerRepository());
       $this->app->singleton(evaluationRepository::class, fn($cn) => new evaluationRepository());
       $this->app->singleton(examenRepository::class, fn($cn) => new examenRepository());
       $this->app->singleton(inscritRepository::class, fn($cn) => new inscritRepository());
       $this->app->singleton(matiereRepository::class, fn($cn) => new matiereRepository());
       $this->app->singleton(MatiereRepository::class, fn($cn) => new MatiereRepository());
       $this->app->singleton(noteRepository::class, fn($cn) => new noteRepository());
       $this->app->singleton(professeurMatiereRepository::class, fn($cn) => new professeurMatiereRepository());
       $this->app->singleton(professeurRepository::class, fn($cn) => new professeurRepository());
       $this->app->singleton(ProfesseurRepository::class, fn($cn) => new ProfesseurRepository());
       $this->app->singleton(SalleClasseRepository::class, fn($cn) => new SalleClasseRepository());
       $this->app->singleton(salleRepository::class, fn($cn) => new salleRepository());
       $this->app->singleton(HoraireRepository::class, fn($cn) => new HoraireRepository());
       $this->app->singleton(absenceRepository::class, fn($cn) => new absenceRepository());
       $this->app->singleton(absenceClasseRepository::class, fn($cn) => new absenceClasseRepository());
    }
}