<?php
namespace App\Controllers\web;
use App\Controllers\src\WebController;

class statistiqueController extends WebController{
    public function index(){
        $this->render('statistique/home');
    }
}