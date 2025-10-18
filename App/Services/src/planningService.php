<?php

namespace App\Services\src;

use App\Repositories\PlanningRepository;

class PlanningService
{
    public function __construct(public PlanningRepository $planningRepository, private AnneeScolaireService $anneeScolaireService) {}

    function getAllByCodeAnnee(): array
    {
        $codeAnnee = $this->anneeScolaireService->getCodeAnnee();
        return $this->planningRepository->findAllByCodeAnnee($codeAnnee);
    }
    function getAllByProf(string $matriculeProfesseur): array
    {
        return $this->planningRepository->findByProf($matriculeProfesseur);
    }
    function getAllBySalleClasse(string $codeSalleClasse): array
    {
        return $this->planningRepository->findBySalleClasse($codeSalleClasse);
    }

    public function liste(HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, MatiereService $matiereService, SalleClasseService $salleClasseService, ?callable $callback = null)
    {
        $subsidebar = $callback ? $callback(3) : '';
        $plannings = $this->getAllByCodeAnnee();
        $horaires = $horaireService->getAll();
        $professeurs = $professeurService->getAll();
        $matieres = $matiereService->getAll();
        $salleClasses = $salleClasseService->getAllSalleClasseByAnnee();
        $jours = $jourService->getAll();

        return compact("plannings", "horaires", 'professeurs', 'matieres', 'salleClasses', 'jours', 'subsidebar');
    }

    public function table_classes(HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, MatiereService $matiereService, SalleClasseService $salleClasseService, ?callable $callback = null, $codeSalleClasse = null): array
    {
        $subsidebar = $callback ? $callback(1) : '';
        $plannings = $this->getAllByCodeAnnee();
        $horaires = $horaireService->getAll();
        $professeurs = $professeurService->getAll();
        $matieres = $matiereService->getAll();
        $salleClasses = $codeSalleClasse ? [$salleClasseService->getSalleClasse($codeSalleClasse)] : $salleClasseService->getAllSalleClasseByAnnee();
        $jours = $jourService->getAll();
        $horaires = array_filter($horaires, function ($h) {
            $heure_debut = date_parse($h->debutHoraire)['hour'];
            $heure_fin = date_parse($h->finHoraire)['hour'];
            return $heure_fin - $heure_debut < 2;
        });
        $allhoraires = $horaires;
        $morningHoraires = array_filter($horaires, function ($h) {
            return $h->finHoraire <= '14:00:00';
        });
        $data = [];
        foreach ($salleClasses as  $sc) {
            $check = $this->planningRepository->findOneBySalleClasseAndIntervall($sc->codeSalleClasse, '14:00:00', '19:00:00');
            if ($check) {
                $horaires = $allhoraires;
            } else {
                $horaires = $morningHoraires;
            }
            foreach ($horaires as $h) {

                foreach ($jours as $j) {
                    $found = false;
                    foreach ($plannings as $p) {
                        if ($p->codeSalleClasse == $sc->codeSalleClasse && $p->debutHoraire < $h->finHoraire && $p->finHoraire > $h->debutHoraire && $p->codeJour == $j->codeJour) {
                            $data[$sc->codeSalleClasse][$h->codeHoraire][$j->codeJour] = $p;
                            $found = true;
                            break;
                        }
                    }
                    if (!$found) {
                        $data[$sc->codeSalleClasse][$h->codeHoraire][$j->codeJour] = null;
                    }
                }
            }
        }
        return compact("plannings", "horaires", 'professeurs', 'matieres', 'salleClasses', 'jours', 'data', 'codeSalleClasse', 'subsidebar');
    }
    public function table_profs(HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, MatiereService $matiereService, SalleClasseService $salleClasseService, ?callable $callback = null, $matriculeProfesseur = null): array
    {
        $subsidebar = $callback ? $callback(2) : '';
        $plannings = $this->getAllByCodeAnnee();
        $horaires = $horaireService->getAll();
        $professeurs = $matriculeProfesseur ? [$professeurService->getById($matriculeProfesseur)] : $professeurService->getAll();
        $matieres = $matiereService->getAll();
        $salleClasses = $salleClasseService->getAllSalleClasseByAnnee();
        $jours = $jourService->getAll();
        $horaires = array_filter($horaires, function ($h) {
            $heure_debut = date_parse($h->debutHoraire)['hour'];
            $heure_fin = date_parse($h->finHoraire)['hour'];
            return $heure_fin - $heure_debut < 2;
        });
        $allhoraires = $horaires;
        $morningHoraires = array_filter($horaires, function ($h) {
            return $h->finHoraire <= '14:00:00';
        });
        $data = [];
        foreach ($professeurs as  $prof) {
            $check = $this->planningRepository->findOneByProfAndIntervall($prof->matriculeProfesseur, '14:00:00', '19:00:00');
            if ($check) {
                $horaires = $allhoraires;
            } else {
                $horaires = $morningHoraires;
            }
            foreach ($horaires as $h) {

                foreach ($jours as $j) {
                    $found = false;
                    foreach ($plannings as $p) {
                        if ($p->matriculeProfesseur == $prof->matriculeProfesseur && $p->debutHoraire < $h->finHoraire && $p->finHoraire > $h->debutHoraire && $p->codeJour == $j->codeJour) {
                            $data[$prof->matriculeProfesseur][$h->codeHoraire][$j->codeJour] = $p;
                            $found = true;
                            break;
                        }
                    }
                    if (!$found) {
                        $data[$prof->matriculeProfesseur][$h->codeHoraire][$j->codeJour] = null;
                    }
                }
            }
        }
        return compact("plannings", "horaires", 'professeurs', 'matieres', 'salleClasses', 'jours', 'data', 'matriculeProfesseur', 'subsidebar');
    }

    public function prof(string $matriculeProfesseur, jourService $jourService, HoraireService $horaireService, ProfesseurService $professeurService, ProfesseurMatiereService $professeurMatiereService, MatiereService $matiereService, SalleClasseService $salleClasseService): array
    {
        $prof = $professeurService->getById($matriculeProfesseur);
        if (!$prof) {
            die(__("Professeur non trouvé"));
        }
        $plannings = $this->getAllByProf($matriculeProfesseur);
        $horaires = $horaireService->getAll();
        $professeurs = [$prof];
        $matieres = $professeurMatiereService->getAllByProf($matriculeProfesseur);
        $salleClasses = $salleClasseService->getAllSalleClasseByAnnee();
        $jours = $jourService->getAll();
        return compact("plannings", "horaires", 'professeurs', 'matieres', 'salleClasses', 'jours', 'prof');
    }

    public function salleclasse(string $codeSalleClasse, HoraireService $horaireService, jourService $jourService, ProfesseurService $professeurService, ProfesseurMatiereService $professeurMatiereService, ClasseMatiereService $classeMatiereService, MatiereService $matiereService, SalleClasseService $salleClasseService): array
    {
        $salleClasse = $salleClasseService->getSalleClasse($codeSalleClasse);
        if (!$salleClasse) {
            die(__("Salle de classe non trouvée"));
        }
        $plannings = $this->getAllBySalleClasse($codeSalleClasse);
        $horaires = $horaireService->getAll();
        $professeurs = $professeurService->getAll();
        $matieres = $classeMatiereService->findAllByClasseAndAnnee($salleClasse->codeClasse);
        $salleClasses = [$salleClasse];
        $jours = $jourService->getAll();
        return compact("plannings", "horaires", 'professeurs', 'matieres', 'salleClasses', 'jours', 'salleClasse');
    }
}
