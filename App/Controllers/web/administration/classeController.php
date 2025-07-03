<?php

namespace App\Controllers\web\administration;


use App\Controllers\src\WebController;
use App\Repositories\ClasseRepository;
use Core\Caches\Session;

class classeController extends WebController
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
