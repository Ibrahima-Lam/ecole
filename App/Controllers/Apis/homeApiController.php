<?php

namespace App\Controllers\apis;

use Core\Caches\Session;
use Core\Controllers\Controller;

class homeApiController extends Controller
{
    public function session($key, $value): void
    {
        $session = new Session();
        $session->set($key, $value);
        $this->response(["res" => "ok", "data" => $session->get($key)]);
    }
}
