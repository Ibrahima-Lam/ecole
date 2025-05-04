<?php
namespace App\Controllers\https;
use Core\Controllers\Controller;

class plusController extends Controller
{
    public function home()
    {
        $this->render("plus/home");
    }
}
