<?php

namespace App\Controllers\https;

use Core\Controllers\Controller;


class homeController extends Controller
{
    public function index()
    {
        $this->render("app/home");
    }
}
