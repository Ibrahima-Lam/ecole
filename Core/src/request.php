<?php
namespace Core\src;

use App\Services\storages\AnneeScolaireStorage;


class Request
{
    protected array $get;
    protected array $post;
    protected array $server;
    protected array $files;
    protected array $request;
    private $annee;
    public $controller;
    public $method;
    public $args;
    public $namespace;
    public function __construct()
    {
        $this->get = $_GET;
        $this->post = $_POST;
        $this->server = $_SERVER;
        $this->files = $_FILES;
        $this->request = $_REQUEST;
        $this->annee=AnneeScolaireStorage::getAnnee();
        $this->setParam();
    }

    public function setParam(){
        $p = $_GET["p"] ?? "home/index";
        $args = explode("/", $p);
        $zone = strtolower($args[0] ?? 'web');

        $class = $args[1] ?? 'home';
        $method = $args[2] ?? 'index';
        $remainingArgs = array_slice($args, 3);

        switch ($zone) {
            case 'api':
                $namespace = "App\Controllers\Apis\\";
                $class = ucfirst($class) . "ApiController";
                break;
            case 'pdf':
                $namespace = "App\Controllers\pdfs\\";
                $class = ucfirst($class) . "PdfController";
                break;
            default:
                $namespace = "App\Controllers\Web\Administration\\";
                $class = ucfirst($zone) . "Controller"; // zone devient class dans ce cas
                $method = $args[1] ?? "index";
                $remainingArgs = array_slice($args, 2);
        }
        $this->controller=$namespace.$class;
        $this->method=$method;
        $this->args=$remainingArgs;
        $this->namespace=$namespace;
    }

    public function getController(){
        return $this->controller;
    }

    public function getNamespace(){
        return $this->namespace;
    }

    public function getMethod(){
        return $this->method;
    }

    public function getArgs(){
        return $this->args;
    }

    public function getAnnee(){
        return $this->annee;
    }

    public function request($key){
        return $this->request[$key]??null;
    }

    public function get($key){
        return $this->get[$key]??null;
    }
    public function post($key){
        return $this->post[$key]??null;
    }
    public function server($key){
        return $this->server[$key]??null;
    }
    public function input(string $key, $default = null)
    {
        return $this->post[$key] ?? $this->get[$key] ?? $default;
    }

    public function all(): array
    {
        return array_merge($this->get, $this->post);
    }

    public function method(): string
    {
        return strtoupper($this->server['REQUEST_METHOD'] ?? 'GET');
    }

    public function isPost(): bool
    {
        return $this->method() === 'POST';
    }

    public function isGet(): bool
    {
        return $this->method() === 'GET';
    }
}
