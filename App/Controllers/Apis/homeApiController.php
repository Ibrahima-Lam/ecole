<?php

namespace App\Controllers\apis;

use Core\Caches\Session;
use Core\Controllers\Controller;
use App\Services\factories\UserFactory;

class homeApiController extends Controller
{
    public function session($key, $value): void
    {
        $session = new Session();
        $session->set($key, $value);
        $this->response(["res" => "ok", "data" => $session->get($key)]);
    }

    public function login() {
        $name=$_REQUEST['name']??null;
    $password=$_REQUEST['password']??null;
    if ($password) {
        $password=sha1($password);
    }
    $res = UserFactory::setUser($name,$password);
    if($res) {
        $this->response(["res" => "ok", "data" => $res]);
    } else {
        $this->response(["res" => "error", "data" => "Invalid credentials"]);
    }
}
public function logout() {
    UserFactory::unsetUser();
    $this->response(["res" => "ok"]);
}
}
