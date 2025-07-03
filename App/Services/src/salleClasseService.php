<?php
namespace App\Services\src;
use App\Repositories\ClasseMatiereRepository;
use App\Repositories\EleveRepository;
use App\Repositories\InscritRepository;
use App\Repositories\SalleClasseRepository;
class SalleClasseService
{
    private $anneeScolaireService;
    public function __construct(AnneeScolaireService $anneeScolaireService)
    {
        $this->anneeScolaireService=$anneeScolaireService;
    }
    public function getSalleClasse($codeSalleClasse)
    {
       $inscritRepository=new SalleClasseRepository();
       return $inscritRepository->findOneByCode($codeSalleClasse);
    }

    public function getMatiere($codeSalleClasse)
    {
       $inscritRepository=new ClasseMatiereRepository();
       return $inscritRepository->findAllByClasseAndAnnee($this->getSalleClasse($codeSalleClasse)->codeClasse,$this->anneeScolaireService->getCodeAnnee());
    }

   
}
