<?php
namespace App\Controllers\https;
use Core\Controllers\Controller;

class statistiqueController extends Controller{
    public function index(){
        $this->render('statistique/home');
    }
}