<?php
namespace App\Services\src;

use App\Repositories\absenceRepository;

class AbsenceService
{
    private $anneeScolaireService;
    private $absenceRepository;

    public function __construct(AnneeScolaireService $anneeScolaireService, absenceRepository $absenceRepository)
    {
        $this->anneeScolaireService = $anneeScolaireService;
        $this->absenceRepository = $absenceRepository;
    }

    public function insert(array $data)
    {
        $data['codeAnnee'] = $this->anneeScolaireService->getCodeAnnee();
        return $this->absenceRepository->insert($data);
    }

    public function update(string $id, array $data)
    {
        $data['codeAnnee'] = $this->anneeScolaireService->getCodeAnnee();

        return $this->absenceRepository->update($id, $data);
    }

    public function delete(string $id)
    {
        return $this->absenceRepository->delete($id);
    }

    public function findAll()
    {
        return $this->absenceRepository->findAll();
    }

    public function findOneById(string $id)
    {
        return $this->absenceRepository->findOneById($id);
    }
    public function findOneByMatriculeAndTrimestreAndAnnee(string $matricule, string $trimestre)
    {
        return $this->absenceRepository->findOneByMatriculeAndTrimestreAndAnnee($matricule, $trimestre, $this->anneeScolaireService->getCodeAnnee());
    }

    public function findAllByMatricule(string $matricule)
    {
        return $this->absenceRepository->findAllByMatricule($matricule);
    }

    public function findAllByClasseAndTrimestre(string $codeSalleClasse, string $trimestre)
    {
        return $this->absenceRepository->findAllByClasseAndTrimestre($codeSalleClasse, $trimestre);
    }



    public function lastInsertId(): int
    {
        return $this->absenceRepository->lastInsertId();
    }
}
