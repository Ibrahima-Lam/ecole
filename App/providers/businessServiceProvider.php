<?php
namespace App\providers;


use App\Services\business\ClassebulletinService;
use App\Services\business\bulletinService;

use App\Services\src\AbsenceService;
use App\Services\src\AnneeScolaireService;

class BusinessServiceProvider {
    public $app;
    public function __construct($app) {
        $this->app = $app;
    }
    public function register() {
       $this->app->bind(bulletinService::class, fn($cn)=> new bulletinService($cn->make(AnneeScolaireService::class),$cn->make(AbsenceService::class)));
       $this->app->bind(ClassebulletinService::class, fn($cn)=> new ClassebulletinService($cn->make(AnneeScolaireService::class),$cn->make(AbsenceService::class)));
       
    }
}