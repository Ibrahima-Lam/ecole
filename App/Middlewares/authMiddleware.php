<?php

namespace App\Middlewares;

use App\Controllers\web\homeController;
use App\Services\factories\UserFactory;

class AuthMiddleware
{
    public function handle(callable $next)
    {
        $user=UserFactory::getUser();
        if (!$user) {
            return (new homeController())->login();
        }
        return $next();
    }
}
