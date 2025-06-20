<?php
namespace Core\src;

use App\Services\factories\AnneeFactory;


class Request
{
    protected array $get;
    protected array $post;
    protected array $server;
    private $annee;

    public function __construct()
    {
        $this->get = $_GET;
        $this->post = $_POST;
        $this->server = $_SERVER;
        $this->annee=AnneeFactory::getAnnee();
    }

    public function getAnnee(){
        return $this->annee;
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
