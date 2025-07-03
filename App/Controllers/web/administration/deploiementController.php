<?php
namespace App\Controllers\web\administration;
use App\Controllers\src\WebController;

class deploiementController extends WebController
{
    public function home()
    {
        $this->render("deploiement/home");
    }
}