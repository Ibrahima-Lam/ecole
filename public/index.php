<?php

use App\Routes\Router;
use Core\src\Request;
use Core\src\Response;
use App\Controllers\web\administration\homeController;
use App\Controllers\Apis\homeApiController;


require_once '../vendor/autoload.php';
require_once './src/functions.php';
$app=require_once '../Configs/app.php';



$request=new Request();
$response=new Response();

$app->instance(Request::class, $request);
$app->instance(Response::class, $response);

$router=new Router($app);

$router->excludeMiddlewareFor(homeController::class);
$router->excludeMiddlewareFor(homeApiController::class);
$router->run();

