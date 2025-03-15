<?php

namespace App\Controllers\https;

use App\Models\Repositories\SalleClasseRepository;
use Core\Controllers\Controller;


class homeController extends Controller
{
    private SalleClasseRepository $salleClasseRepository;

    public function __construct()
    {
        $this->salleClasseRepository = new SalleClasseRepository();
    }
    public function index()
    {
        $annee=$this->getCodeAnnee();
        $salles = $this->salleClasseRepository->findAll($annee);
        $this->render("app/home", compact('salles'));
    }
}
