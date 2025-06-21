<?php
namespace App\Middlewares;
use Core\src\Request;
use Core\src\Response;
interface MiddlewareInterface
{
    public function handle(Request $request,Response $response,callable $next);
}