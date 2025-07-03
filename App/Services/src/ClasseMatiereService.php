<?php
namespace App\Services\src;

use App\Repositories\ClasseMatiereRepository;
use App\Repositories\inscritRepository;
use Core\src\Request;

class ClasseMatiereService
{
    private $repository;
    private $inscritRepository;
    private $throw=true;
    public function __construct(private AnneeScolaireService $anneeScolaireService)
    {
        $this->repository=new ClasseMatiereRepository();
        $this->inscritRepository=new inscritRepository();
    }
    public function setThrow($throw): void
    {
        $this->throw=$throw;
    }
    public function findAllByClasseAndAnnee(string $codeClasse): array
    {
        return $this->repository->findAllByClasseAndAnnee($codeClasse, $this->anneeScolaireService->getCodeAnnee());
    } 
    public function findAllByInscrit(string $matricule): array
    {
        $codeClasse = $this->inscritRepository->findOneByCodeAndAnnee($matricule, $this->anneeScolaireService->getCodeAnnee());
        return $this->repository->findAllByClasseAndAnnee($codeClasse->codeClasse, $this->anneeScolaireService->getCodeAnnee());
    }
    public function findAllByMatiereAndAnnee(string $codeMatiere): array
    {
        return $this->repository->findAllByMatiereAndAnnee($codeMatiere, $this->anneeScolaireService->getCodeAnnee());
    }
    public function findAllByAnnee(): array
    {
        return $this->repository->findAllByAnnee($this->anneeScolaireService->getCodeAnnee());
    }
    public function findOne(string $codeClasseMatiere): false|\stdClass
    {
        return $this->repository->findOne($codeClasseMatiere);
    }
    public function findOneByClasseAndMatiereAndAnnee(string $codeClasse, string $codeMatiere,?string $codeAnnee): false|\stdClass
    {
        return $this->repository->findOneByClasseAndMatiereAndAnnee($codeClasse, $codeMatiere,$codeAnnee);
    }
    public function insert( string $codeClasse, string $codeMatiere, int $horaireClasseMatiere, int $coefficientClasseMatiere, ?string $codeAnnee,?int $statutClasseMatiere): bool
    {
        try {
            $codeClasseMatiere = $this->generateCodeClasseMatiere($codeClasse, $codeMatiere, $codeAnnee);
           
            return $this->repository->insert($codeClasseMatiere, $codeClasse, $codeMatiere, $horaireClasseMatiere, $coefficientClasseMatiere, $codeAnnee, $statutClasseMatiere);
        } catch (\Throwable $th) {
            if($this->throw){
                throw $th;
            }
            return false;
        }
    }
    public function update(string $codeClasseMatiere, string $codeClasse, string $codeMatiere, int $horaireClasseMatiere, int $coefficientClasseMatiere, ?string $codeAnnee,?int $statutClasseMatiere): bool
    {
        try {
            return $this->repository->update($codeClasseMatiere, $codeClasse, $codeMatiere, $horaireClasseMatiere, $coefficientClasseMatiere, $codeAnnee, $statutClasseMatiere);
        } catch (\Throwable $th) {
            if($this->throw){
                throw $th;
            }
            return false;
        }
    }
    public function delete(string $codeClasseMatiere): bool
    {
        try {
            return $this->repository->delete($codeClasseMatiere);
        } catch (\Throwable $th) {
            if($this->throw){
                throw $th;
            }
            return false;
        }
    }
    private function generateCodeClasseMatiere(string $codeClasse, string $codeMatiere, string $codeAnnee): string
    {
        return "A$codeAnnee$codeClasse$codeMatiere";
    }   
    public function import(Request $request): bool{
        $this->setThrow(false);
        if($request->request('import')){
            $annee=$request->request('annee');
            $classe=$request->request('classe');
            $matiere=$request->request('matiere');
            $model = new ClasseMatiereRepository();
            if($annee=='none'){
                $data =$classe ? $model->findAllByClasseAndAnnee($classe,null) : $model->findAllByMatiereAndAnnee($matiere,null);
                
            }else{
                $data =$classe ? $model->findAllByClasseAndAnnee($classe,$annee) : $model->findAllByMatiereAndAnnee($matiere,$annee);
            }
            foreach ($data as $value) {
                if($this->findOneByClasseAndMatiereAndAnnee($value->codeClasse,$value->codeMatiere,$this->anneeScolaireService->getCodeAnnee())){
                    continue;
                }
                $this->insert($value->codeClasse,$value->codeMatiere,$value->horaireClasseMatiere,$value->coefficientClasseMatiere,$this->anneeScolaireService->getCodeAnnee(),$value->statutClasseMatiere);
            }
           }
           elseif($request->request('importtous')){
            $annee=$request->request('annee');
            $model = new ClasseMatiereRepository();
            $data =$annee=='none' ? $model->findAllByAnnee(null) : $model->findAllByAnnee($annee);
            foreach ($data as $value) {
                if($this->findOneByClasseAndMatiereAndAnnee($value->codeClasse,$value->codeMatiere,$this->anneeScolaireService->getCodeAnnee())){
                    continue;
                }
                $this->insert($value->codeClasse,$value->codeMatiere,$value->horaireClasseMatiere,$value->coefficientClasseMatiere,$this->anneeScolaireService->getCodeAnnee(),$value->statutClasseMatiere);
            }
           }
           $this->setThrow(true);
           return true;
    }
}