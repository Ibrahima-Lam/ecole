<?php
namespace App\Services\src;
use App\Models\Repositories\EleveRepository;
use App\Models\Repositories\InscritRepository;
class EleveService
{
    private $anneeScolaireService;
    public function __construct(AnneeScolaireService $anneeScolaireService)
    {
        $this->anneeScolaireService=$anneeScolaireService;
    }
    public function isInscrit($matricule)
    {
       $inscritRepository=new inscritRepository();
       return $inscritRepository->findOneByMatriculeAndAnnee($matricule,$this->anneeScolaireService->getCodeAnnee());
    }

    public function getInscrit($matricule)
    {
        $inscritRepository=new inscritRepository();
        return $inscritRepository->findOneByMatriculeAndAnnee($matricule,$this->anneeScolaireService->getCodeAnnee());
    }
    public function getEleve($matricule)
    {
        $eleveRepository=new EleveRepository();
        return $eleveRepository->findOneByMatricule($matricule);
    }
    public function getCollegues($matricule)
    {
        $inscritRepository=new inscritRepository();
        $inscrit=$inscritRepository->findOneByMatriculeAndAnnee($matricule,$this->anneeScolaireService->getCodeAnnee());
        (!$inscrit) && die(__("eleve non inscrit!"));
        return $inscritRepository->findAllByClasse($inscrit->codeSalleClasse);
    }
}
