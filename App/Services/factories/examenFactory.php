<?php

namespace App\Services\Factories;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\ExamenRepository;
use App\Services\Providers\ExamenProvider;
use App\Models\Repositories\SalleClasseRepository;

class ExamenFactory
{

    public static function getExamen(string $codeSalleClasse): ExamenProvider
    {
        $model = new SalleClasseRepository();
        $salleClasse = $model->findOneByCode($codeSalleClasse);
        $model = new ExamenRepository();
        $examens = $model->findAllByClasse($salleClasse->codeSalleClasse);
        $model=new ClasseMatiereRepository();
        $matieres = $model->findByClasse($salleClasse->codeClasse);
        $provider = new ExamenProvider($salleClasse,$matieres,$examens);
        return $provider;
    }

}
