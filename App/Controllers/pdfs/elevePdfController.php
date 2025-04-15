<?php

namespace App\Controllers\pdfs;

use App\Controllers\interfaces\EleveControllerInterfaces;
use App\Models\Repositories\EleveRepository;
use App\Services\Factories\Bulletin1Factory;
use App\Services\Factories\Bulletin2Factory;
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
        $bulletin= Bulletin1Factory::getBulletin($matricule,$annee);
        $moyennes= Bulletin1Factory::getMoyennes($matricule,$annee);
        $bulletin->setMoyennes($moyennes);
        $this->renderPDF("pdf/bulletin", ['bulletin'=>$bulletin]);
    } 
     public function bulletin2(string $matricule): void
    {
        $annee = $this->getCodeAnnee();
        $bulletin= Bulletin2Factory::getBulletin($matricule,$annee);
        $moyennes= Bulletin2Factory::getMoyennes($matricule,$annee);
        $bulletin->setMoyennes($moyennes);
        $this->renderPDF("pdf/bulletin2", ['bulletin'=>$bulletin]);
    }
}
