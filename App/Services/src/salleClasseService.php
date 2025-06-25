<?php
namespace App\Services\src;
use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\EleveRepository;
use App\Models\Repositories\InscritRepository;
use App\Models\Repositories\SalleClasseRepository;
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
