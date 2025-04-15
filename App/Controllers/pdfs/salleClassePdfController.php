<?php

namespace App\Controllers\pdfs;

use App\Services\Factories\Bulletin1Factory;
use App\Services\Factories\Bulletin2Factory;
use Core\Controllers\Controller;
use App\Models\Repositories\InscritRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\ClasseMatiereRepository;
use Mpdf\Mpdf;
use Src\Factories\BulletinParamettreFactory;

class salleClassePdfController extends Controller
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
        $moyennes = [];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin1Factory::getBulletin($inscrit->matricule, $annee);
            $moyennes[] = $notematiere->getMoyenne();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        }, $data);
        $model = new ClasseMatiereRepository();
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        if ($paramettre->merite || $_REQUEST['merite'] ?? false) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        $matieres = $model->findByClasse($salleClasse->codeClasse);
        $this->renderPDF("pdf/resultat1", ["data" => $data, "matieres" => $matieres, 'salleclasse' => $salleClasse, 'paramettre' => $paramettre], ['orientation' => 'landscape', 'margin' => [10, 10, 10, 10]], );
    }
    public function resultat2($codeSalleClasse)
    {
        $salleClasse = $this->classeSalleRepository->findOneByCode($codeSalleClasse);
        $annee = $this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        $moyennes = [];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin2Factory::getBulletin($inscrit->matricule, $annee);
            $moyennes[] = $notematiere->getMoyenne();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        }, $data);
        $model = new ClasseMatiereRepository();
        $matieres = $model->findByClasse($salleClasse->codeClasse);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        if ($paramettre->merite || $_REQUEST['merite'] ?? false) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        $this->renderPDF("pdf/resultat2", ["data" => $data, "matieres" => $matieres, 'salleclasse' => $salleClasse, 'paramettre' => $paramettre], ['orientation' => 'landscape', 'margin' => [10, 10, 10, 10]], );
    }
    public function bulletin1($codeSalleClasse): void
    {
        $annee = $this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);

        $mpdf = new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75
        ]);
        $moyennes = [];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin1Factory::getBulletin($inscrit->matricule, $annee);
            $moyennes[] = $notematiere->getMoyenne();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        }, $data);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        if ($paramettre->merite || $_REQUEST['merite'] ?? false) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        foreach ($data as $bulletin) {
            $mpdf->AddPage();
            ob_start();
            require '../App/Views/pdf/bulletin1.php';
            $html = ob_get_clean();
            $mpdf->WriteHTML($html);
        }
        $mpdf->Output();
    }
    public function bulletin2($codeSalleClasse): void
    {
        $annee = $this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);

        $mpdf = new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75
        ]);
        $moyennes = [];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin2Factory::getBulletin($inscrit->matricule, $annee);
            $moyennes[] = $notematiere->getMoyenne();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        }, $data);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        if ($paramettre->merite || $_REQUEST['merite'] ?? false) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        foreach ($data as $bulletin) {
            $mpdf->AddPage();
            ob_start();
            require '../App/Views/pdf/bulletin2.php';
            $html = ob_get_clean();
            $mpdf->WriteHTML($html);
        }
        $mpdf->Output();
    }
    public function minibulletin1($codeSalleClasse): void
    {
        $annee = $this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);

        $mpdf = new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75
        ]);
        $mpdf->SetMargins(0, 0, 5);
        $moyennes = [];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin1Factory::getBulletin($inscrit->matricule, $annee);
            $moyennes[] = $notematiere->getMoyenne();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        }, $data);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        if ($paramettre->merite || $_REQUEST['merite'] ?? false) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        foreach ($data as $key => $bulletin) {
            if ($key % 2 == 0)
                $mpdf->AddPage();
            ob_start();
            require '../App/Views/pdf/minibulletin1.php';
            $html = ob_get_clean();
            if ($key % 2 == 1)
                $mpdf->writeHTML('<br><hr>');
            $mpdf->WriteHTML($html);
        }
        $mpdf->Output();
    }
    public function minibulletin2($codeSalleClasse): void
    {
        $annee = $this->getCodeAnnee();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);

        $mpdf = new Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75
        ]);
        $mpdf->SetMargins(0, 0, 5);
        $moyennes = [];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere = Bulletin2Factory::getBulletin($inscrit->matricule, $annee);
            $moyennes[] = $notematiere->getMoyenne();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($moyennes) {
            $bulletin->setMoyennes($moyennes);
            return $bulletin;
        }, $data);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        if ($paramettre->merite || $_REQUEST['merite'] ?? false) {
            usort($data, function ($a, $b) {
                return $a->getRang() - $b->getRang()
;
            });
        }
        foreach ($data as $key => $bulletin) {
            if ($key % 2 == 0)
                $mpdf->AddPage();
            ob_start();
            require '../App/Views/pdf/minibulletin2.php';
            $html = ob_get_clean();
            if ($key % 2 == 1)
                $mpdf->writeHTML('<br><hr>');
            $mpdf->WriteHTML($html);
        }
        $mpdf->Output();
    }
}

?>