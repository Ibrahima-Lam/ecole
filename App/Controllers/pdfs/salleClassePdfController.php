<?php

namespace App\Controllers\pdfs;

use App\Services\Factories\Bulletin1Factory;
use App\Services\Factories\Bulletin2Factory;
use App\Services\Factories\Bulletin3Factory;
use App\Services\Providers\ClasseBulletinServiceProvider;
use App\Controllers\src\pdfController;
use App\Models\Repositories\InscritRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\ClasseMatiereRepository;
use Mpdf\Mpdf;
use Src\Factories\BulletinParamettreFactory;
use Src\Factories\ResultatParamettreFactory;

class salleClassePdfController extends pdfController
{
    private $classeSalleRepository;
    private $inscritRepository;
    public function __construct()
    {
        $this->classeSalleRepository = new SalleClasseRepository();
        $this->inscritRepository = new InscritRepository();
    }

    public function resultat1($codeSalleClasse)
    {
        $salleClasse = $this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $annee = $this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        $tab=[];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin1Factory::getBulletin($inscrit->matricule, $annee);
            $tab[] = $notematiere->getPoints();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($tab) {
            $bulletin->setTabPoints($tab);
            return $bulletin;
        }, $data);
        $model = new ClasseMatiereRepository();
        $paramettre = ResultatParamettreFactory::getResultatParam();
        if ($paramettre->merite ||( $_REQUEST['merite'] ?? false)) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        $matieres = $model->findByClasse($salleClasse->codeClasse);
        $statistiques=Bulletin1Factory::getStatistiques($data);
        $this->renderPDF("pdf/resultat1", ["data" => $data, "matieres" => $matieres, 'salleclasse' => $salleClasse, 'paramettre' => $paramettre,'statistiques'=>$statistiques], ['orientation' => 'landscape','name'=>"Resultat1_{$salleClasse->pseudoSalleClasse}.pdf",'dest'=>"D"], );
    }
    public function resultat2($codeSalleClasse)
    {
        $salleClasse = $this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $annee = $this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        $tab=[];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin2Factory::getBulletin($inscrit->matricule, $annee);
            $tab[] = $notematiere->getPoints();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($tab) {
            $bulletin->setTabPoints($tab);
            return $bulletin;
        }, $data);
        $model = new ClasseMatiereRepository();
        $matieres = $model->findByClasse($salleClasse->codeClasse);
        $paramettre = ResultatParamettreFactory::getResultatParam();
        if ($paramettre->merite ||( $_REQUEST['merite'] ?? false)) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        $statistiques=Bulletin2Factory::getStatistiques($data);
        $this->renderPDF("pdf/resultat2", ["data" => $data, "matieres" => $matieres, 'salleclasse' => $salleClasse, 'paramettre' => $paramettre,'statistiques'=>$statistiques], ['orientation' => 'landscape','name'=>"Resultat2_{$salleClasse->pseudoSalleClasse}.pdf",'dest'=>"D"], );
    }
    public function resultat3($codeSalleClasse)
    {
        $salleClasse = $this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $annee = $this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        $tab=[];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin3Factory::getBulletin($inscrit->matricule, $annee);
            $tab[] = $notematiere->getPoints();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($tab) {
            $bulletin->setTabPoints($tab);
            return $bulletin;
        }, $data);
        $model = new ClasseMatiereRepository();
        $matieres = $model->findByClasse($salleClasse->codeClasse);
        $paramettre = ResultatParamettreFactory::getResultatParam();
        if ($paramettre->merite ||( $_REQUEST['merite'] ?? false)) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        $statistiques=Bulletin3Factory::getStatistiques($data);
        $this->renderPDF("pdf/resultat3", ["data" => $data, "matieres" => $matieres, 'salleclasse' => $salleClasse, 'paramettre' => $paramettre,'statistiques'=>$statistiques], ['orientation' => 'landscape', 'name'=>"Resultat3_{$salleClasse->pseudoSalleClasse}.pdf",'dest'=>"D"], );
    }
    public function bulletin1(ClasseBulletinServiceProvider $classeBulletinServiceProvider,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classeBulletinServiceProvider->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classeBulletinServiceProvider->getPoints1();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classeBulletinServiceProvider->getBulletins1($tab);
        $view="bulletin1.php";
        if($paramettre->orientation=="landscape"){
            $view="bulletin1Landscape.php";
        }
        $this->renderBulletin($data,$paramettre,$view,"bulletin1_{$salleclasse->pseudoSalleClasse}.pdf");
    }
    public function bulletin2(ClasseBulletinServiceProvider $classeBulletinServiceProvider,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classeBulletinServiceProvider->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classeBulletinServiceProvider->getPoints2();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classeBulletinServiceProvider->getBulletins2($tab);
        $view="bulletin2.php";
        if($paramettre->orientation=="landscape"){
            $view="bulletin2Landscape.php";
        }
        $this->renderBulletin($data,$paramettre,$view,"bulletin2_{$salleclasse->pseudoSalleClasse}.pdf");
    }

    public function bulletin3(ClasseBulletinServiceProvider $classeBulletinServiceProvider,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classeBulletinServiceProvider->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classeBulletinServiceProvider->getPoints3();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classeBulletinServiceProvider->getBulletins3($tab);
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
    public function minibulletin1(ClasseBulletinServiceProvider $classeBulletinServiceProvider,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classeBulletinServiceProvider->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classeBulletinServiceProvider->getPoints1();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classeBulletinServiceProvider->getBulletins1($tab);
        $view="minibulletin1.php";
        if($paramettre->orientation=="landscape"){
            $view="minibulletin1Landscape.php";
        }
        $this->renderMinibulletin($data,$paramettre,$view,"minibulletin1_{$salleclasse->pseudoSalleClasse}.pdf");
    }
    public function minibulletin2(ClasseBulletinServiceProvider $classeBulletinServiceProvider,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classeBulletinServiceProvider->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classeBulletinServiceProvider->getPoints2();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classeBulletinServiceProvider->getBulletins2($tab);
        $view="minibulletin2.php";
        if($paramettre->orientation=="landscape"){
            $view="minibulletin2Landscape.php";
        }
        $this->renderMinibulletin($data,$paramettre,$view,"minibulletin2_{$salleclasse->pseudoSalleClasse}.pdf");
    }
    public function minibulletin3(ClasseBulletinServiceProvider $classeBulletinServiceProvider,$codeSalleClasse): void
    {
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $classeBulletinServiceProvider->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
            $tab = $classeBulletinServiceProvider->getPoints3();
        }
        $salleclasse=$this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $data=$classeBulletinServiceProvider->getBulletins3($tab);
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