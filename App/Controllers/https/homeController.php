<?php

namespace App\Controllers\https;

use App\Models\Repositories\SalleClasseRepository;
use Core\Controllers\Controller;
use Core\Services\Logger;
use Core\Services\Request;


class homeController extends Controller
{
    private SalleClasseRepository $salleClasseRepository;

    public function __construct()
    {
        $this->salleClasseRepository = new SalleClasseRepository();
    }

    public function teste(Request $request){
       
       echo $request->get('p');
    }
    public function index()
    {
        $annee=$this->getCodeAnnee();
        $salles = $this->salleClasseRepository->findAll($annee);
        $this->render("app/home", compact('salles'));
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
