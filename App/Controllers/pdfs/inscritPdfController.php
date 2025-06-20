<?php
namespace App\Controllers\pdfs;

use App\Controllers\src\pdfController;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\AnneeScolaireRepository;
use App\Models\Repositories\SalleClasseRepository; 
use Src\Paramettres\ClasseParamettre; 
use Core\Caches\Session; 

class inscritPdfController extends pdfController 
{
    private $inscritRepository;
    
    private $annee;

    public function __construct()
    {
        $this->inscritRepository = new inscritRepository();
        $model = new AnneeScolaireRepository();
        $session = new Session();
        $this->annee = $session->get('annee') ?? $model->findLastAnneeScolaire()->codeAnnee;

    }

    public function classe($codeSalleClasse )
    {
        $p=new ClasseParamettre();
        $paramettre=$p->getClasse();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        $model = new SalleClasseRepository();
        $classe = $model->findOneByCode($codeSalleClasse);
        $model = new AnneeScolaireRepository();
        $anneescolaire = $model->findOneByCodeAnnee($this->annee);
        $this->renderPDF('pdf/inscrits', ['inscrits' => $inscrits, 'anneescolaire' => $anneescolaire, 'classe' => $classe,'paramettre'=> $paramettre]);
    }
    
}

?>