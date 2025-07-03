<?php
namespace App\Controllers\web\administration;
use App\Controllers\src\WebController;

class statistiqueController extends WebController{
    public function index(){
        $this->render('statistique/home');
    }
}