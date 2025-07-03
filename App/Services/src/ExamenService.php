<?php
namespace App\Services\src;

use App\Repositories\ExamenRepository;
use App\Entities\ExamenEntity;

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
    public function getExamenEntity(string $codeSalleClasse): ExamenEntity
    {
        $salleClasse = $this->salleClasseService->getSalleClasse($codeSalleClasse);
        $examens = $this->findAllByClasse($salleClasse->codeSalleClasse);
        $matieres = $this->classeMatiereService->findAllByClasseAndAnnee($salleClasse->codeClasse);
        return new ExamenEntity($salleClasse,$matieres,$examens);
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