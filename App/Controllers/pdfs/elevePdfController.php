<?php

namespace App\Controllers\pdfs;

use App\Controllers\interfaces\EleveControllerInterfaces;
use App\Repositories\EleveRepository;
use App\Repositories\inscritRepository;
use App\Services\business\bulletinService;
use App\Services\business\ClassebulletinService;
use App\Services\src\EleveService;
use Core\src\Request;
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

    public function resultat(bulletinService $bulletinService,Request $request, EleveService $eleveService, string $matricule)
    {
        $trimestre = $request->get('trimestre') ?? 3;
        $codeMatiere = $request->get('matiere') ?? null;
        $eleve = $eleveService->getInscrit($matricule);
        (!$eleve) && die("<p class='text-center'>" . __("eleve non inscrit") . "</p>");
        $bulletinService->setMatricule($matricule);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $bulletin =$trimestre == 3 ? $bulletinService->getBulletin3() :($trimestre == 2 ? $bulletinService->getBulletin2() : $bulletinService->getBulletin1());
      return pdf("bulletins/resultateleve", ["eleve" => $eleve, 'trimestre'=>$trimestre, 'codeMatiere'=>$codeMatiere, 'notematieres' => $bulletin, 'paramettre' => $paramettre, 'annee' => $this->getNomAnnee()],['name'=>"Releve_".$matricule.".pdf"]);
    }

    public function bulletin1(bulletinService $bulletinService,ClassebulletinService $classebulletinService, string $matricule): void
    { 
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $bulletinService->setMatricule($matricule);
        $tab=[];
        if ($paramettre->rang) {
            $classebulletinService->setSalleClasse($this->eleveService->getInscrit($matricule)->codeSalleClasse);
            $tab = $classebulletinService->getPoints1();
        }
        $bulletin=$bulletinService->getBulletin1($tab);
        $view="bulletins/bulletin1";
        if($paramettre->orientation=="landscape"){
            $view="bulletins/bulletin1Landscape";
        }
        $this->renderPDF($view, ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['orientation'=>$paramettre->orientation,'name'=>"Bulletin1_".$matricule.".pdf"]);
    } 
     public function bulletin2(bulletinService $bulletinService,ClassebulletinService $classebulletinService, string $matricule): void
    { 
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $bulletinService->setMatricule($matricule);
        $tab=[];
        if ($paramettre->rang) {
            $classebulletinService->setSalleClasse($this->eleveService->getInscrit($matricule)->codeSalleClasse);
            $tab = $classebulletinService->getPoints2();
        }
        $bulletin=$bulletinService->getBulletin2($tab);
        $view="bulletins/bulletin2";
        if($paramettre->orientation=="landscape"){
            $view="bulletins/bulletin2Landscape";
        }
        $this->renderPDF($view, ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['orientation'=>$paramettre->orientation,'name'=>"Bulletin2_".$matricule.".pdf"]); 
    }
    public function bulletin3(bulletinService $bulletinService,ClassebulletinService $classebulletinService,string $matricule): void
    {
    $paramettre = BulletinParamettreFactory::getBulletinParam();
    $bulletinService->setMatricule($matricule);
    $tab=[];
    if ($paramettre->rang) {
        $classebulletinService->setSalleClasse($this->eleveService->getInscrit($matricule)->codeSalleClasse);
        $tab = $classebulletinService->getPoints3();
    }
    $bulletin=$bulletinService->getBulletin3($tab);
    $view="bulletins/bulletin3";
    if($paramettre->orientation=="landscape"){
        $view="bulletins/bulletin3Landscape";
    }
    $this->renderPDF($view, ['bulletin'=>$bulletin, 'paramettre' => $paramettre],['orientation'=>$paramettre->orientation,'name'=>"Bulletin3_".$matricule.".pdf"]); 
}
}
