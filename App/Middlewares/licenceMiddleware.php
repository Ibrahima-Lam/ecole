<?php

namespace App\Middlewares;

use App\Controllers\web\administration\homeController;
use App\Services\storages\LicenceStorage;
use Core\src\Request;
use Core\src\Response;

class LicenceMiddleware implements MiddlewareInterface
{
    public function handle(Request $request,Response $response,callable $next)
    {

       
        if (!LicenceStorage::isValid()) {
            return (new homeController())->licence();
        }
        return $next();
    }
}
