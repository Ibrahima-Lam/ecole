<?php

namespace Core\Controllers;

use App\Models\Repositories\AnneeScolaireRepository;
use Core\Caches\Session;
use Core\Services\html\htmlService;

class Controller
{
    protected function getCodeAnnee()
    {
        $session = new Session();
        $annee = $session->get("anneescolaire");
        if (!$annee) {
            $anneeScolaire = (new AnneeScolaireRepository())->findLastAnneeScolaire();
            $annee = $anneeScolaire ? $anneeScolaire->codeAnnee : "2425";
            $session->set("anneescolaire", $annee);
        }
        return $annee;
    }
    protected function getNomAnnee()
    {
        $session = new Session();
        $model = new AnneeScolaireRepository();
        $annee = $session->get("anneescolaire");
        $anneeScolaire = null;
        if (!$annee) {

            $anneeScolaire = $model->findLastAnneeScolaire();
            $annee = $anneeScolaire ? $anneeScolaire->codeAnnee : "2425";
            $session->set("anneescolaire", $annee);
        } else {
            $anneeScolaire = $model->findOneByCodeAnnee($annee);
        }
        return $anneeScolaire->nomAnnee;
    }
    private function getLangue()
    {
        $session = new Session();
        $langue = $session->get("langue");
        if (!$langue) {
            $session->set("langue", "fr");
        }
        return $session->get("langue") ?? 'fr';
    }
    private function getAnneeScolaire()
    {
        $annee = new AnneeScolaireRepository();
        $codeAnnee = $this->getCodeAnnee();
        return
            htmlService::options($annee->findAll(), "codeAnnee", "nomAnnee", $codeAnnee);
    }
    public function render(string $file, array $data = array())
    {
        ob_start();
        extract($data);
        $_annee = $this->getAnneeScolaire();
        $_langue = $this->getLangue();
        $_admin = true;
        $path = "../App/Views/$file.php";
        if (!file_exists($path)) {
            echo '<p> Cette vue est introuvable! veuillez verifier le chemin du fichier dans les vues!</p>';
            return;
        } else require $path;

        $content = ob_get_clean();
        require_once 'layout.php';
    }

    public function renderPDF(string $file, array $data = array(), array $options = array())
    {
        ob_start();
        extract($data);
        require "../App/views/$file.php";
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
        $mpdf->Output($options['name'] ?? 'document.pdf', \Mpdf\Output\Destination::INLINE);
    }

    public function response(mixed $data)
    {
        if (is_scalar($data)) echo $data;
        else echo json_encode($data, true);
        exit();
    }

    public function redirect($url)
    {
        header('location:' . $url);
        exit();
    }

    
}
