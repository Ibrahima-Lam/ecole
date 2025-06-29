<?php

namespace App\Middlewares;

use App\Controllers\web\homeController;
use App\Services\factories\UserFactory;
use Core\src\Request;
use Core\src\Response;

class AuthMiddleware
{
    public function handle(Request $request,Response $response,callable $next)
    {
        $user=UserFactory::getUser();
        if (!$user) {
            return (new homeController())->login();
        }
        return $next();
    }
}
