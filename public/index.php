<?php

use App\Middlewares\AuthMiddleware;
use App\Routes\Router;
use App\Services\Providers\bulletinServiceProvider;
use App\Services\Providers\ClasseBulletinServiceProvider;
use Core\src\Container;
use Core\src\Logger;
use Core\src\Request;
use App\Services\src\AnneeScolaireService;
use App\Services\src\EleveService;
use App\Services\src\UserService;

require_once '../vendor/autoload.php';
require_once './src/functions.php';


$router=new Router();

$router->bind(Request::class, fn()=> new Request());
$router->bind(Logger::class, fn()=> new Logger());
$router->bind(AnneeScolaireService::class, fn()=> new AnneeScolaireService());
$router->bind(UserService::class, fn()=> new UserService());
$router->bind(EleveService::class, fn($cn)=> new EleveService($cn->make(AnneeScolaireService::class)));
$router->bind(bulletinServiceProvider::class, fn($cn)=> new bulletinServiceProvider($cn->make(AnneeScolaireService::class)));
$router->bind(ClasseBulletinServiceProvider::class, fn($cn)=> new ClasseBulletinServiceProvider($cn->make(AnneeScolaireService::class)));
$router->useMiddleware(AuthMiddleware::class);
$router->run();

