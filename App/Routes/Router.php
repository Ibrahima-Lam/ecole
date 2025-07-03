<?php
namespace App\Routes;

use App\Middlewares\AuthMiddleware;
use App\Middlewares\LicenceMiddleware;
use Core\src\Container;
use Core\src\Request;
use Core\src\Response;
class Router
{
    private $routes = [];
    private $container;
    private $globalMiddlewares = [LicenceMiddleware::class, AuthMiddleware::class];
    private $excludedControllers = [];
    private $excludedMethods = [];
    private $routeMiddlewares = [];
    public function __construct(Container $container)
    {
        $this->container = $container;
    }
    public function bind($key, $value)
    {
        $this->container->bind($key, $value);
    }

    public function singleton($key, $value)
    {
        $this->container->singleton($key, $value);
    }
    public function make($key)
    {
        return $this->container->make($key);
    }
    public function addMiddlewareForMethod(string $controllerClass, string $method, array $middlewares)
    {
        $this->routeMiddlewares[$controllerClass][$method] = $middlewares;
    }

    private function isMiddlewareExcluded(object $controller, string $method): bool
    {
        $controllerClass = get_class($controller);

        // Exclure tout le contrôleur ?
        if (in_array($controllerClass, $this->excludedControllers ?? [])) {
            return true;
        }

        // Exclure méthode précise ?
        if (isset($this->excludedMethods[$controllerClass][$method])) {
            return true;
        }

        return false;
    }


    public function excludeMiddlewareFor(string $controllerClass)
    {
        $this->excludedControllers[] = $controllerClass;
    }

    public function excludeMiddlewareForMethod(string $controllerClass, string $method)
    {
        $this->excludedMethods[$controllerClass][$method] = $method;
    }

    public function useMiddleware(string $middlewareClass)
    {
        $this->globalMiddlewares[] = $middlewareClass;
    }
    private function runMiddlewares(array $middlewareClasses, callable $finalHandler, Request $request, Response $response)
    {
        $middlewareStack = array_reverse($middlewareClasses);
        $next = $finalHandler;
        foreach ($middlewareStack as $middlewareClass) {
            $middleware = $this->container->make($middlewareClass);
            $next = fn() => $middleware->handle($request, $response, $next);
        }
        $next();
    }

    public function run()
    {
        $request = $this->container->make(Request::class);
        $response = $this->container->make(Response::class);
        [$controller, $method, $args] = $this->getController();
        $response->controller = $controller;
        $response->namespace = $request->namespace;
        $response->method = $method;
        $response->args = $args;
        if ($this->isMiddlewareExcluded($controller, $method)) {
            $this->call($controller, $method, $args);
            return;
        }
        $controllerClass = get_class($controller);
        $specificMiddlewares = $this->routeMiddlewares[$controllerClass][$method] ?? [];

        $allMiddlewares = array_merge($this->globalMiddlewares, $specificMiddlewares);

        $this->runMiddlewares($allMiddlewares, function () use ($controller, $method, $args) {
            $this->call($controller, $method, $args);
        }, $request, $response);
    }

    public function call($controller, $method, $args = [])
    {
        $this->container->call([$controller, $method], $args);
    }

    private function getController()
    {
        $request = $this->container->make(Request::class);
        $controllerClass = $request->controller;
        $method = $request->method;
        $remainingArgs = $request->args;
        if (!class_exists($controllerClass)) {
            throw new \Exception("Controller $controllerClass not found");
        }
        $controller = $this->container->make($controllerClass);
        if (!method_exists($controller, $method)) {
            throw new \Exception("Method $method not found in $controllerClass");
        }
        return [$controller, $method, $remainingArgs];
    }

}