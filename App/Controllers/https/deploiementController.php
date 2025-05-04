<?php
namespace App\Controllers\https;
use Core\Controllers\Controller;

class deploiementController extends Controller
{
    public function home()
    {
        $this->render("deploiement/home");
    }
}