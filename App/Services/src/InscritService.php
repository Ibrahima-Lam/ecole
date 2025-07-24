<?php

namespace App\Services\src;

use App\Repositories\InscritRepository;

class InscritService
{
    public function __construct(private InscritRepository $repository)
    {
    }

    public function getAll()
    {
        return $this->repository->findAll();
    }

    public function findAllByAnnee($codeAnnee, $by = "matricule")
    {
        return $this->repository->findAllByAnnee($codeAnnee, $by);
    }

    public function findAllByClasse($classe)
    {
        return $this->repository->findAllByClasse($classe);
    }

    public function findAllByClasseForBulletin($classe)
    {
        return $this->repository->findAllByClasseForBulletin($classe);
    }

    public function findOne($id)
    {
        return $this->repository->findOne($id);
    }

    public function findOneByCodeAndAnnee(string $id, string $annee)
    {
        return $this->repository->findOneByCodeAndAnnee($id, $annee);
    }

    public function findOneByMatriculeAndAnnee(string $id, string $annee)
    {
        return $this->repository->findOneByMatriculeAndAnnee($id, $annee);
    }

    public function findOneByMatriculeAndAnneeForBulletin(string $id, string $annee)
    {
        return $this->repository->findOneByMatriculeAndAnneeForBulletin($id, $annee);
    }

    public function findOneByid($id)
    {
        return $this->repository->findOneByid($id);
    }

    public function findlastOneByClasse($codeSalleClasse)
    {
        return $this->repository->findlastOneByClasse($codeSalleClasse);
    }

    public function findByCodeAnnee($codeAnnee)
    {
        return $this->repository->findByCodeAnnee($codeAnnee);
    }

    public function findLastInserted()
    {
        return $this->repository->findLastInserted();
    }

    public function count($codeAnnee = null)
    {
        return $this->repository->count($codeAnnee);
    }

    public function insert($idInscrit, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription)
    {
        return $this->repository->insert($idInscrit, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription);
    }

    public function update($idInscrit, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription)
    {
        return $this->repository->update($idInscrit, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription);
    }

    public function delete($idInscrit)
    {
        return $this->repository->delete($idInscrit);
    }
}
