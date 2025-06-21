<?php

namespace App\Controllers\pdfs;

use App\Controllers\interfaces\EleveControllerInterfaces;
use App\Models\Repositories\EleveRepository;
use App\Models\Repositories\inscritRepository;
use App\Services\Providers\bulletinServiceProvider;
use App\Services\Providers\ClasseBulletinServiceProvider;
use App\Services\src\AnneeScolaireService;
use App\Services\src\EleveService;
use Src\Factories\BulletinParamettreFactory;
use App\Controllers\src\pdfController;

class ElevePdfController extends pdfController implements EleveControllerInterfaces
{
   
    private $inscritRepository;
    public function __construct(private EleveService $eleveService)
    {
        parent::__construct();
        $this->inscritRepository = new inscritRepository();
    }
    public function liste(): void
    {
        $model = new EleveRepository();
        $data = $model->findAll();
        $this->renderPDF("pdf/eleves", ["data" => $data]);
    }

    public function resultat(bulletinServiceProvider $bulletinServiceProvider, EleveService $eleveService, string $matricule)
    {
        $trimestre = $_REQUEST['trimestre'] ?? 3;
        $eleve = $eleveService->getInscrit($matricule);
        (!$eleve) && die("<p class='text-center'>" . __("eleve non inscrit") . "</p>");
        $bulletinServiceProvider->setMatricule($matricule);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $bulletin =$trimestre == 3 ? $bulletinServiceProvider->getBulletin3() :($trimestre == 2 ? $bulletinServiceProvider->getBulletin2() : $bulletinServiceProvider->getBulletin1());
      return pdf("bulletins/resultateleve", ["eleve" => $eleve, 'trimestre'=>$trimestre, 'notematieres' => $bulletin, 'paramettre' => $paramettre, 'annee' => $this->getNomAnnee()],['name'=>"Releve_".$matricule.".pdf"]);
    }

    public function bulletin1(bulletinServiceProvider $bulletinServiceProvider,ClasseBulletinServiceProvider $classeBulletinServiceProvider, string $matricule): void
    { 
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $bulletinServiceProvider->setMatricule($matricule);
        $tab=[];
        if ($paramettre->rang) {
            $classeBulletinServiceProvider->setSalleClasse($this->eleveService->getInscrit($matricule)->codeSalleClasse);
            $tab = $classeBulletinServiceProvider->getPoints1();
        }
        $bulletin=$bulletinServiceProvider->getBulletin1($tab);
        $view="bulletins/bulletin1";
        if($paramettre->orientation=="landscape"){
            $view="bulletins/bulletin1Landscape";
        }
        $this->renderPDF($view, ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['orientation'=>$paramettre->orientation,'name'=>"Bulletin1_".$matricule.".pdf"]);
    } 
     public function bulletin2(bulletinServiceProvider $bulletinServiceProvider,ClasseBulletinServiceProvider $classeBulletinServiceProvider, string $matricule): void
    { 
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $bulletinServiceProvider->setMatricule($matricule);
        $tab=[];
        if ($paramettre->rang) {
            $classeBulletinServiceProvider->setSalleClasse($this->eleveService->getInscrit($matricule)->codeSalleClasse);
            $tab = $classeBulletinServiceProvider->getPoints2();
        }
        $bulletin=$bulletinServiceProvider->getBulletin2($tab);
        $view="bulletins/bulletin2";
        if($paramettre->orientation=="landscape"){
            $view="bulletins/bulletin2Landscape";
        }
        $this->renderPDF($view, ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['orientation'=>$paramettre->orientation,'name'=>"Bulletin2_".$matricule.".pdf"]); 
    }
    public function bulletin3(bulletinServiceProvider $bulletinServiceProvider,ClasseBulletinServiceProvider $classeBulletinServiceProvider,string $matricule): void
    {
    $paramettre = BulletinParamettreFactory::getBulletinParam();
    $bulletinServiceProvider->setMatricule($matricule);
    $tab=[];
    if ($paramettre->rang) {
        $classeBulletinServiceProvider->setSalleClasse($this->eleveService->getInscrit($matricule)->codeSalleClasse);
        $tab = $classeBulletinServiceProvider->getPoints3();
    }
    $bulletin=$bulletinServiceProvider->getBulletin3($tab);
    $view="bulletins/bulletin3";
    if($paramettre->orientation=="landscape"){
        $view="bulletins/bulletin3Landscape";
    }
    $this->renderPDF($view, ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['orientation'=>$paramettre->orientation,'name'=>"Bulletin3_".$matricule.".pdf"]); 
}
}
