<?php

namespace App\Middlewares;

use App\Controllers\web\homeController;
use App\Services\factories\LicenceFactory;
use Core\src\Request;
use Core\src\Response;

class LicenceMiddleware implements MiddlewareInterface
{
    public function handle(Request $request,Response $response,callable $next)
    {

       
        if (!LicenceFactory::isValid()) {
            return (new homeController())->licence();
        }
        return $next();
    }
}
