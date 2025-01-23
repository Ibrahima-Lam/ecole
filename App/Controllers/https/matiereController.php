<?php

namespace App\Controllers\https;

use App\Models\Repositories\MatiereRepository;
use Core\Controllers\Controller;

class matiereController extends Controller
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
