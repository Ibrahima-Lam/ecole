<?php


use App\Controllers\apis\homeApiController;
use App\Controllers\web\homeController;
use App\Routes\Router;
use App\Services\Providers\bulletinServiceProvider;
use App\Services\Providers\ClasseBulletinServiceProvider;
use App\Services\src\ClasseMatiereService;
use App\Services\src\EtablissementService;
use App\Services\src\ExamenService;
use App\Services\src\SalleClasseService;
use Core\src\Logger;
use Core\src\Request;
use Core\src\Response;
use App\Services\src\AnneeScolaireService;
use App\Services\src\EleveService;
use App\Services\src\UserService;

require_once '../vendor/autoload.php';
require_once './src/functions.php';


$router=new Router();

$router->bind(Request::class, fn()=> new Request());
$router->bind(Response::class, fn()=> new Response());
$router->bind(Logger::class, fn()=> new Logger());
$router->bind(AnneeScolaireService::class, fn()=> new AnneeScolaireService());
$router->bind(UserService::class, fn()=> new UserService());
$router->bind(EleveService::class, fn($cn)=> new EleveService($cn->make(AnneeScolaireService::class)));
$router->bind(bulletinServiceProvider::class, fn($cn)=> new bulletinServiceProvider($cn->make(AnneeScolaireService::class)));
$router->bind(ClasseBulletinServiceProvider::class, fn($cn)=> new ClasseBulletinServiceProvider($cn->make(AnneeScolaireService::class)));
$router->bind(SalleClasseService::class, fn($cn)=> new SalleClasseService($cn->make(AnneeScolaireService::class)));
$router->bind(ClasseMatiereService::class, fn($cn)=> new ClasseMatiereService($cn->make(AnneeScolaireService::class)));
$router->bind(ExamenService::class, fn($cn)=> new ExamenService($cn->make(AnneeScolaireService::class),$cn->make(SalleClasseService::class),$cn->make(ClasseMatiereService::class)));
$router->singleton(EtablissementService::class, fn()=> EtablissementService::getInstance());

$router->excludeMiddlewareFor(homeController::class);
$router->excludeMiddlewareFor(homeApiController::class);
$router->run();

