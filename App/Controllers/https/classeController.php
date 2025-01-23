<?php

namespace App\Controllers\https;

use App\Controllers\interfaces\ClasseControllerInterfaces;
use App\Models\Repositories\AnneeScolaireRepository;
use Core\Controllers\Controller;
use App\Models\Repositories\ClasseRepository;
use Core\Caches\Session;

class classeController extends Controller
{
    private $annee;

    public function __construct()
    {
        $session = new Session();
        $this->annee = $session->get("anneescolaire");
    }
    public function liste(): void
    {
        $model = new ClasseRepository();
        $data = $model->findAll();
        $this->render("classe/liste", ["data" => $data]);
    }
}
