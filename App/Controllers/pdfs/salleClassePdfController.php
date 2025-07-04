<?php

namespace App\Controllers\pdfs;

use App\Services\storages\Bulletin1Factory;
use App\Services\storages\Bulletin2Factory;
use App\Services\storages\Bulletin3Factory;
use App\Services\business\ClassebulletinService;
use App\Controllers\src\pdfController;
use App\Repositories\InscritRepository;
use App\Repositories\SalleClasseRepository;
use App\Repositories\ClasseMatiereRepository;
use App\Services\src\SalleClasseService;
use Mpdf\Mpdf;
use Src\Factories\BulletinParamettreFactory;
use Src\Factories\ResultatParamettreFactory;

class salleClassePdfController extends pdfController
{
    private $classeSalleRepository;
    private $inscritRepository;
    private $salleClasseService;
    public function __construct(SalleClasseService $salleClasseService)
    {
        $this->classeSalleRepository = new SalleClasseRepository();
        $this->inscritRepository = new InscritRepository();
        $this->salleClasseService=$salleClasseService;
    }

    public function resultat1(ClassebulletinService $classebulletinService,$codeSalleClasse)
    {
        $paramettre = ResultatParamettreFactory::getResultatParam();
        $paramettre->rang=BulletinParamettreFactory::getBulletinParam()->rang;
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints1();
        }
        $salleclasse=$this->salleClasseService->getSalleClasse($codeSalleClasse);
        $data=$classebulletinService->getBulletins1($tab);
        $matieres=$this->salleClasseService->getMatiere($codeSalleClasse);
        $statistiques=$classebulletinService->getStatistiques(1);
        $this->renderResultat("resultats/resultat1", ["data" => $data, "matieres" => $matieres, 'salleclasse' => $salleclasse, 'paramettre' => $paramettre,'statistiques'=>$statistiques], $paramettre,"Resultat1_{$salleclasse->pseudoSalleClasse}.pdf" );
    }

    public function resultat2(ClassebulletinService $classebulletinService,$codeSalleClasse)
    {
        $paramettre = ResultatParamettreFactory::getResultatParam();
        $paramettre->rang=BulletinParamettreFactory::getBulletinParam()->rang;
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints2();
        }
        $salleclasse=$this->salleClasseService->getSalleClasse($codeSalleClasse);
        $data=$classebulletinService->getBulletins2($tab);
        $matieres=$this->salleClasseService->getMatiere($codeSalleClasse);
        $statistiques=$classebulletinService->getStatistiques(2);
        $this->renderResultat("resultats/resultat2", ["data" => $data, "matieres" => $matieres, 'salleclasse' => $salleclasse, 'paramettre' => $paramettre,'statistiques'=>$statistiques], $paramettre,"Resultat2_{$salleclasse->pseudoSalleClasse}.pdf" );
    }

    public function resultat3(ClassebulletinService $classebulletinService,$codeSalleClasse)
    {
        $paramettre = ResultatParamettreFactory::getResultatParam();
        $paramettre->rang=BulletinParamettreFactory::getBulletinParam()->rang;
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints3();
        }
        $salleclasse=$this->salleClasseService->getSalleClasse($codeSalleClasse);
        $data=$classebulletinService->getBulletins3($tab);
        $matieres=$this->salleClasseService->getMatiere($codeSalleClasse);
        $statistiques=$classebulletinService->getStatistiques(3);
        $this->renderResultat("resultats/resultat3", ["data" => $data, "matieres" => $matieres, 'salleclasse' => $salleclasse, 'paramettre' => $paramettre,'statistiques'=>$statistiques], $paramettre,"Resultat3_{$salleclasse->pseudoSalleClasse}.pdf" );
    }

   
    private function renderResultat($view,$data,$paramettre,$name)
    {
 
        if ($paramettre->merite || ($_REQUEST['merite'] ?? false)) {
            usort($data['data'], function ($a, $b) {
                return $a->getRang() - $b->getRang();

            });
        }
       $this->renderPDF($view, $data,['orientation' => 'landscape', 'name'=>$name,'dest'=>"D"] );
    }
    public function bulletin1(ClassebulletinService $classebulletinService,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints1();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classebulletinService->getBulletins1($tab);
        $view="bulletin1.php";
        if($paramettre->orientation=="landscape"){
            $view="bulletin1Landscape.php";
        }
        $this->renderBulletin($data,$paramettre,$view,"bulletin1_{$salleclasse->pseudoSalleClasse}.pdf");
    }
    public function bulletin2(ClassebulletinService $classebulletinService,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints2();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classebulletinService->getBulletins2($tab);
        $view="bulletin2.php";
        if($paramettre->orientation=="landscape"){
            $view="bulletin2Landscape.php";
        }
        $this->renderBulletin($data,$paramettre,$view,"bulletin2_{$salleclasse->pseudoSalleClasse}.pdf");
    }

    public function bulletin3(ClassebulletinService $classebulletinService,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints3();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classebulletinService->getBulletins3($tab);
        $view="bulletin3.php";
        if($paramettre->orientation=="landscape"){
            $view="bulletin3Landscape.php";
        }
        $this->renderBulletin($data,$paramettre,$view,"bulletin3_{$salleclasse->pseudoSalleClasse}.pdf");
    }

    private function renderBulletin($data,$paramettre,$view,$name)
    {
        $mpdf = new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75,
            'orientation' => $paramettre->orientation
        ]);
        if ($paramettre->merite || ($_REQUEST['merite'] ?? false)) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        foreach ($data as $bulletin) {
            $mpdf->AddPage();
            ob_start();
            require '../App/pdfViews/bulletins/'.$view;
            $html = ob_get_clean();
            $mpdf->WriteHTML($html);
        }
        $mpdf->Output("{$name}", 'D');
    
    }
    public function minibulletin1(ClassebulletinService $classebulletinService,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints1();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classebulletinService->getBulletins1($tab);
        $view="minibulletin1.php";
        if($paramettre->orientation=="landscape"){
            $view="minibulletin1Landscape.php";
        }
        $this->renderMinibulletin($data,$paramettre,$view,"minibulletin1_{$salleclasse->pseudoSalleClasse}.pdf");
    }
    public function minibulletin2(ClassebulletinService $classebulletinService,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints2();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classebulletinService->getBulletins2($tab);
        $view="minibulletin2.php";
        if($paramettre->orientation=="landscape"){
            $view="minibulletin2Landscape.php";
        }
        $this->renderMinibulletin($data,$paramettre,$view,"minibulletin2_{$salleclasse->pseudoSalleClasse}.pdf");
    }
    public function minibulletin3(ClassebulletinService $classebulletinService,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classebulletinService->getPoints3();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classebulletinService->getBulletins3($tab);
        $view="minibulletin3.php";
        if($paramettre->orientation=="landscape"){
            $view="minibulletin3Landscape.php";
        }
        $this->renderMinibulletin($data,$paramettre,$view,"minibulletin3_{$salleclasse->pseudoSalleClasse}.pdf");
    }
    private function renderMinibulletin($data,$paramettre,$view,$name)
    {
        $mpdf = new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75,
            'orientation' => $paramettre->orientation
        ]);
        if ($paramettre->merite || ($_REQUEST['merite'] ?? false)) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        foreach ($data as $key => $bulletin) {
            if ($key % 2 == 0)
                $mpdf->AddPage();
            ob_start();
            require '../App/pdfViews/bulletins/'.$view;
            $html = ob_get_clean();
            if ($key % 2 == 1)
                $mpdf->writeHTML('<br><hr>');
            $mpdf->WriteHTML($html);
        }
        $mpdf->Output("{$name}", 'D');
    
    }
}

?>