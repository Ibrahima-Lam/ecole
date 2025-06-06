<?php

namespace App\Controllers\pdfs;

use App\Controllers\interfaces\EleveControllerInterfaces;
use App\Models\Repositories\EleveRepository;
use App\Services\Factories\Bulletin1Factory;
use App\Services\Factories\Bulletin2Factory;
use App\Services\Factories\Bulletin3Factory;
use Src\Factories\BulletinParamettreFactory;
use Core\Controllers\Controller;

class ElevePdfController extends Controller implements EleveControllerInterfaces
{

    public function liste(): void
    {
        $model = new EleveRepository();
        $data = $model->findAll();
        $this->renderPDF("pdf/eleves", ["data" => $data]);
    }

    public function bulletin1(string $matricule): void
    { $paramettre = BulletinParamettreFactory::getBulletinParam();
        $annee = $this->getCodeAnnee();
        $bulletin= Bulletin1Factory::getBulletin($matricule,$annee);
        $tab = Bulletin1Factory::getPoints($matricule, $annee);
        $bulletin->setTabPoints($tab);
        $this->renderPDF("pdf/bulletin1", ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['name'=>"Bulletin1_".$matricule.".pdf"]);
    } 
     public function bulletin2(string $matricule): void
    { $paramettre = BulletinParamettreFactory::getBulletinParam();
        $annee = $this->getCodeAnnee();
        $bulletin= Bulletin2Factory::getBulletin($matricule,$annee);
        $tab = Bulletin3Factory::getPoints($matricule, $annee);
        $bulletin->setTabPoints($tab);
        $this->renderPDF("pdf/bulletin2", ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['name'=>"Bulletin2_".$matricule.".pdf"]); 
    }
    public function bulletin3(string $matricule): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $annee = $this->getCodeAnnee();
    $bulletin= Bulletin3Factory::getBulletin($matricule,$annee);
    $tab = Bulletin3Factory::getPoints($matricule, $annee);
   
    $bulletin->setTabPoints($tab);
    $file=$paramettre->orientation=='landscape' ? 'pdf/bulletin3Landscape' : 'pdf/bulletin3';
    $this->renderPDF($file, ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['orientation' => $paramettre->orientation,'name'=>"Bulletin3_".$matricule.".pdf"]); 
}
}
