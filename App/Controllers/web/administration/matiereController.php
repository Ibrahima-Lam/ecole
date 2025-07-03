<?php

namespace App\Controllers\web\administration;

use App\Repositories\MatiereRepository;
use App\Controllers\src\WebController;

class matiereController extends WebController
{
    public function liste(): void
    {
        $model = new MatiereRepository();
        $data = $model->findAll();

        $this->render('matiere/liste', ['data' => $data]);
    }
    public function classe(string $codeClasse): void
    {
        $model = new MatiereRepository();
        $data = $model->findOne($codeClasse);
        $this->render('matiere/classe', ['data' => $data]);
    }
}
