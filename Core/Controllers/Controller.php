<?php

namespace Core\Controllers;

use App\Models\Repositories\AnneeScolaireRepository;
use App\Services\factories\AnneeFactory;
use App\Services\factories\DarkFactory;
use App\Services\factories\LangueFactory;
use App\Services\factories\UserFactory;
use App\Services\src\EtablissementService;
use Core\Services\html\htmlService;

class Controller
{
    public function __construct() {
    
    }

    protected function getCodeAnnee()
    {
        return AnneeFactory::getAnnee();
    }
    protected function getNomAnnee()
    {
        $model = new AnneeScolaireRepository();
        $annee = AnneeFactory::getAnnee();
        $anneeScolaire = null;
        if (!$annee) {

            $anneeScolaire = $model->findLastAnneeScolaire();
            $annee = $anneeScolaire ? $anneeScolaire->codeAnnee : "2425";
            AnneeFactory::setAnnee($annee);
        } else {
            $anneeScolaire = $model->findOneByCodeAnnee($annee);
        }
        return $anneeScolaire->nomAnnee;
    }
    private function getLangue()
    {

        return LangueFactory::getLangue();
    }
    private function getAnneeScolaire()
    {
        $model = new AnneeScolaireRepository();
        $codeAnnee = $this->getCodeAnnee();
        return
            htmlService::options($model->findAll(), "codeAnnee", "nomAnnee", $codeAnnee);
    }

    private function getSchoolName()
    {
        $name=EtablissementService::getInstance()->getEtablissement()->getNomEtablissement();
        return $name ?: 'Etablissement';
    }
    private function getSchoolNameAr()
    {
        $name=EtablissementService::getInstance()->getEtablissement()->getIsmeEtablissement();
        return $name?: 'المدرسة';
    }

    private function isDark()
    {
        return DarkFactory::getDark() ?? false;
    }
    public function render(string $file, array $data = [])
    {
       

        ob_start();
        extract($data);
        $_annee = $this->getAnneeScolaire();
        $_langue = $this->getLangue();
        $_admin = UserFactory::isAdmin();
        $_user = UserFactory::getUser();
        $_dark = $this->isDark();
        $_schoolName = $this->getSchoolName();
        $_schoolNameAr = $this->getSchoolNameAr();
        putenv("LANGUAGE=" . $this->getLangue());
        setlocale(LC_ALL, $this->getLangue());
        bindtextdomain("messages", "./locales");
        bind_textdomain_codeset("messages", "UTF-8");
        textdomain("messages");

        $path = "../App/Views/$file.php";
        if (!file_exists($path)) {
            echo '<p> Cette vue est introuvable! veuillez verifier le chemin du fichier dans les vues!</p>';
            return;
        } else
            require $path;

        $content = ob_get_clean();
        require_once 'layouts/layout.php';
    }

    public function renderPDF(string $file, array $data = [], array $options = [])
    {
       
        ob_start(); 
        extract($data);
        require "../App/pdfViews/$file.php";
        $content = ob_get_clean();
        $mpdf = new \Mpdf\Mpdf([
            'mode' => 'utf-8',
            'format' => 'A4',
            'default_font' => 'xbriyaz',
            'useOTL' => 0xFF,
            'useKashida' => 75,
            ...$options,
        ]);
      
        $mpdf->WriteHTML($content);
        $mpdf->Output($options['name'] ?? 'document.pdf', $options['dest']??\Mpdf\Output\Destination::INLINE);
    }

    public function response(mixed $data)
    {
     
        if (is_scalar($data))
            echo $data;
        else
            echo json_encode($data, true);
        exit();
    }

    public function redirect($url)
    {
        header('location:' . $url);
        exit();
    }


}
