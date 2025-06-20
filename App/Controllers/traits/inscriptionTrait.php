<?php
namespace App\Controllers\traits;
use App\Models\Repositories\AnneeScolaireRepository;
use App\Models\Repositories\EleveRepository;
use App\Models\Repositories\inscritRepository;
trait InscriptionTrait{
    private $inscritRepository;
    private $annee;
    public function __construct()
    {
        $this->inscritRepository = new inscritRepository();
        $this->annee =$this->getCodeAnnee();
    }
    public function profil($matricule){
        $model = new EleveRepository();
        $data = $model->findOneByMatricule($matricule);
        if(!$data){
            die(__("eleve non trouvé"));
        }
        $model2 = new inscritRepository();
        $inscription = $model2->findOneByCodeAndAnnee($matricule, $this->getCodeAnnee());
       
        $subsidebar =strtolower(self::class) == strtolower("App\Controllers\web\inscritController") ? $this->subsidebar( 11) : $this->subsidebar($matricule, 1);
        $this->render("eleve/profil", ["data" => $data, 'inscription' => $inscription, 'annee' => $this->getNomAnnee(), "subsidebar" => $subsidebar]);
    }
    public function inscrit()
    {
        $inscrits = $this->inscritRepository->findAllByAnnee($this->annee);
        $model = new AnneeScolaireRepository();
        $anneescolaire = $model->findOneByCodeAnnee($this->annee);
        $subsidebar =strtolower(self::class) == strtolower("App\Controllers\web\inscritController") ? $this->subsidebar( 11) : $this->subsidebar(null, 11);
        $this->render('inscrit/liste', ['inscrits' => $inscrits, 'anneescolaire' => $anneescolaire,'subsidebar' => $subsidebar]);
    }
    public function noninscrit(){
        $model = new EleveRepository();
        $eleves = $model->findAllNonInscritsByAnnee($this->annee);
        $model = new AnneeScolaireRepository();
        $anneescolaire = $model->findOneByCodeAnnee($this->annee);
        $subsidebar =strtolower(self::class) == strtolower("App\Controllers\https\inscritController") ? $this->subsidebar( 1) : $this->subsidebar(null, 12);
        $this->render('eleve/noninscrit', ['eleves' => $eleves, 'anneescolaire' => $anneescolaire,'subsidebar' => $subsidebar]);
    }
}
?>