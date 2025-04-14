<?php

namespace App\Controllers\pdfs;

use App\Services\Factories\BulletinFactory;
use App\Services\Factories\Bulletin2Factory;
use Core\Controllers\Controller;
use App\Models\Repositories\InscritRepository;
use App\Models\Repositories\SalleClasseRepository;
use Mpdf\Mpdf;

class salleClassePdfController extends Controller 
{
    private $classeSalleRepository;
    private $inscritRepository;
    public function __construct()
    {
        $this->classeSalleRepository = new SalleClasseRepository();
        $this->inscritRepository = new InscritRepository();
    }

    public function bulletin($codeSalleClasse) : void
    {
        $annee=$this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        
        $mpdf=new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75
        ]);
        $moyennes=[];
        $data=[];
        foreach ($inscrits as $inscrit) {
            $notematiere=BulletinFactory::getBulletin($inscrit->matricule,$annee);
            $moyennes[]=$notematiere->getMoyenne();
            $data[]=$notematiere;
        }
        $data=array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        },$data);
        
        foreach ($data as $bulletin) {
            $mpdf->AddPage();
            ob_start();
            require '../App/Views/pdf/bulletin.php';
            $html = ob_get_clean();
            $mpdf->WriteHTML($html);
        } 
        $mpdf->Output();
    }
public function bulletin2($codeSalleClasse) : void
    {
        $annee=$this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        
        $mpdf=new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75
        ]);
        $moyennes=[];
        $data=[];
        foreach ($inscrits as $inscrit) {
            $notematiere=Bulletin2Factory::getBulletin($inscrit->matricule,$annee);
            $moyennes[]=$notematiere->getMoyenne();
            $data[]=$notematiere;
        }
        $data=array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        },$data);
        
        foreach ($data as $bulletin) {
            $mpdf->AddPage();
            ob_start();
            require '../App/Views/pdf/bulletin2.php';
            $html = ob_get_clean();
            $mpdf->WriteHTML($html);
        } 
        $mpdf->Output();
    }
     public function minibulletin($codeSalleClasse) : void
    {
        $annee=$this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        
        $mpdf=new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75
        ]);
        $mpdf->SetMargins(0,0,5);
        $moyennes=[];
        $data=[];
        foreach ($inscrits as $inscrit) {
            $notematiere=BulletinFactory::getBulletin($inscrit->matricule,$annee);
            $moyennes[]=$notematiere->getMoyenne();
            $data[]=$notematiere;
        }
        $data=array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        },$data);
        
        foreach ($data as $key => $bulletin) {
           if($key%2==0) $mpdf->AddPage();
            ob_start();
            require '../App/Views/pdf/minibulletin.php';
            $html = ob_get_clean();
            if($key%2==1) $mpdf->writeHTML('<br><hr>');
            $mpdf->WriteHTML($html);
        } 
        $mpdf->Output();
    }
}

?>