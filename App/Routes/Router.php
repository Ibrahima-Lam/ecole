<?php
namespace App\Routes;

use Core\src\Container;
class Router
{
    private $routes = [];
    private $container;
    private $globalMiddlewares = [];
    public function __construct()
    {
        $this->container=new Container();
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

    public function useMiddleware(string $middlewareClass)
{
    $this->globalMiddlewares[] = $middlewareClass;
}
    private function runMiddlewares(array $middlewareClasses, callable $finalHandler)
    {
        $middlewareStack = array_reverse($middlewareClasses);
    
        $next = $finalHandler;
    
        foreach ($middlewareStack as $middlewareClass) {
            $middleware = $this->container->make($middlewareClass);
            $current = $next;
            $next = function () use ($middleware, $current) {
                return $middleware->handle($current);
            };
        }
    
        $next(); // Exécution des middlewares
    }
    
    public function run()
{
    [$controller, $method, $args] = $this->getController();

    $this->runMiddlewares($this->globalMiddlewares, function () use ($controller, $method, $args) {
        $this->call($controller, $method, $args);
    });
}

    public function call($controller, $method   , $args=[])
    {
        $this->container->call([$controller, $method], $args);
    }

    private function getController()
{
    $p = $_GET["p"] ?? "home/index";
    $args = explode("/", $p);
    $zone = strtolower($args[0] ?? 'web');

    $class = $args[1] ?? 'home';
    $method = $args[2] ?? 'index';
    $remainingArgs = array_slice($args, 3);

    switch ($zone) {
        case 'api':
            $namespace = "App\Controllers\apis\\";
            $class = ucfirst($class) . "ApiController";
            break;
        case 'pdf':
            $namespace = "App\Controllers\pdfs\\";
            $class = ucfirst($class) . "PdfController";
            break;
        default:
            $namespace = "App\Controllers\web\\";
            $class = ucfirst($zone) . "Controller"; // zone devient class dans ce cas
            $method = $args[1] ?? "index";
            $remainingArgs = array_slice($args, 2);
    }

    $controllerClass = $namespace . $class;

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