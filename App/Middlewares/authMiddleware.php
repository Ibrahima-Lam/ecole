<?php

namespace App\Middlewares;

use App\Controllers\web\administration\homeController;
use App\Services\storages\UserStorage;
use Core\src\Request;
use Core\src\Response;

class AuthMiddleware
{
    public function handle(Request $request,Response $response,callable $next)
    {
        $user=UserStorage::getUser();
        if (!$user) {
            return (new homeController())->login();
        }
        return $next();
    }
}
