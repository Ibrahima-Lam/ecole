<?php
namespace App\Services\src;

use App\Models\Repositories\ExamenRepository;
use App\Models\Examen;
use App\Services\Providers\ExamenProvider;

class ExamenService
{
    private $repository;
    public function __construct(private AnneeScolaireService $anneeScolaireService,private SalleClasseService $salleClasseService,private ClasseMatiereService $classeMatiereService){
        $this->repository = new ExamenRepository();
    }
    
    public function getExamen(string $codeExamen)
    {
        return $this->repository->findOne($codeExamen);
    }
    public function getExamenProvider(string $codeSalleClasse): ExamenProvider
    {
        $salleClasse = $this->salleClasseService->getSalleClasse($codeSalleClasse);
        $examens = $this->findAllByClasse($salleClasse->codeSalleClasse);
        $matieres = $this->classeMatiereService->findAllByClasseAndAnnee($salleClasse->codeClasse);
        return new ExamenProvider($salleClasse,$matieres,$examens);
    }
    public function findAllByClasse($codeSalleClasse)
    {
        return $this->repository->findAllByClasse($codeSalleClasse);
    }
     public function findAllByClasseAndMatiere($codeSalleClasse,$codeMatiere)
    {
        return $this->repository->findAllByClasseAndMatiere($codeSalleClasse,$codeMatiere);
    }
}