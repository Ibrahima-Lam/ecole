<?php

namespace App\Controllers\web;

use App\Models\Repositories\SalleClasseRepository;
use App\Controllers\src\WebController;



class homeController extends WebController
{
    private SalleClasseRepository $salleClasseRepository;

    public function __construct()
    {
        $this->salleClasseRepository = new SalleClasseRepository();
    }

    public function teste(){
    return "test";
    }
 public function licence(){
    echo 'licence';
    }
    public function index()
    {
        $annee=$this->getCodeAnnee();
        $salles = $this->salleClasseRepository->findAll($annee);
      return view("app/home", compact('salles'));
    }

    public function login()
{
    $path = "../App/Views/app/login.php";
    if (!file_exists($path)) {
        echo '<p> Cette vue est introuvable! veuillez verifier le chemin du fichier dans les vues!</p>';
        return;
    } else require $path;
}
}
