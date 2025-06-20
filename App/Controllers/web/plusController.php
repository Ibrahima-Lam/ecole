<?php
namespace App\Controllers\web;
use App\Controllers\src\WebController;

class plusController extends WebController
{
    public function home()
    {
        $this->render("plus/home");
    }
}
