<?php

namespace App\Controllers\pdfs;

use App\Controllers\interfaces\EleveControllerInterfaces;
use App\Models\Repositories\EleveRepository;
use App\Services\Factories\BulletinFactory;
use Core\Controllers\Controller;

class ElevePdfController extends Controller implements EleveControllerInterfaces
{

    public function liste(): void
    {
        $model = new EleveRepository();
        $data = $model->findAll();
        $this->renderPDF("pdf/eleves", ["data" => $data]);
    }

    public function bulletin(string $matricule): void
    {
        $annee = $this->getCodeAnnee();
        $bulletin= BulletinFactory::getBulletin($matricule,$annee);
        $moyennes= BulletinFactory::getMoyennes($matricule,$annee);
        $bulletin->setMoyennes($moyennes);
        $this->renderPDF("pdf/bulletin", ['bulletin'=>$bulletin]);
    }
}
