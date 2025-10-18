<?php

namespace App\Repositories;

use stdClass;

class PlanningRepository extends Repository
{
    function findAll(): array
    {
        return $this->db->selectAll('select * from planning_view order by codeClasse,indiceSalleClasse', stdClass::class);
    }
    function findAllByCodeAnnee(string $codeAnnee): array
    {
        return $this->db->selectAll("select * from planning_view where codeAnnee = '$codeAnnee' order by codeClasse,indiceSalleClasse", stdClass::class);
    }

    function findOneById(int $id): false | stdClass
    {
        return $this->db->selectOne("select * from planning_view where idPlanning = '$id'", stdClass::class);
    }

    function findBySalleClasse(string $codeSalleClasse): array
    {
        return $this->db->selectAll("select * from planning_view where codeSalleClasse = '$codeSalleClasse' order by codeJour, debutHoraire", stdClass::class);
    }
    function findByProf(string $matriculeProfesseur): array
    {
        return $this->db->selectAll("select * from planning_view where matriculeProfesseur = '$matriculeProfesseur' order by codeJour, debutHoraire", stdClass::class);
    }

    function findOneByProfAndJourAndHoraire(string $matriculeProfesseur, string $codeJour, string $codeHoraire): false | stdClass
    {
        return $this->db->selectOne("select * from planning_view where matriculeProfesseur = '$matriculeProfesseur' and codeJour = '$codeJour' and codeHoraire = '$codeHoraire'", stdClass::class);
    }

    function findOneBySalleClasseAndJourAndHoraire(string $codeSalleClasse, string $codeJour, string $codeHoraire): false | stdClass
    {
        return $this->db->selectOne("select * from planning_view where codeSalleClasse = '$codeSalleClasse' and codeJour = '$codeJour' and codeHoraire = '$codeHoraire'", stdClass::class);
    }
    function findOneBySalleClasseAndIntervall(string $codeSalleClasse, string $debut, string $fin): false | stdClass
    {
        return $this->db->selectOne("select * from planning_view where codeSalleClasse = '$codeSalleClasse' and debutHoraire < '$fin' and finHoraire > '$debut'", stdClass::class);
    }
    function findOneByProfAndIntervall(string $matriculeProfesseur, string $debut, string $fin): false | stdClass
    {
        return $this->db->selectOne("select * from planning_view where matriculeProfesseur = '$matriculeProfesseur' and debutHoraire < '$fin' and finHoraire > '$debut'", stdClass::class);
    }

    function insert(stdClass $planning): bool
    {
        return $this->db->prepare("insert into planning (matriculeProfesseur, codeSalleClasse, codeMatiere, codeJour, codeHoraire,codeAnnee) values (:matriculeProfesseur, :codeSalleClasse, :codeMatiere, :codeJour, :codeHoraire,:codeAnnee)")->execute([
            'matriculeProfesseur' => $planning->matriculeProfesseur,
            'codeSalleClasse' => $planning->codeSalleClasse,
            'codeMatiere' => $planning->codeMatiere,
            'codeJour' => $planning->codeJour,
            'codeHoraire' => $planning->codeHoraire,
            'codeAnnee' => $planning->codeAnnee
        ]);
    }
    function update(stdClass $planning): bool
    {
        return $this->db->prepare("update planning set matriculeProfesseur = :matriculeProfesseur, codeSalleClasse = :codeSalleClasse, codeMatiere = :codeMatiere, codeJour = :codeJour, codeHoraire = :codeHoraire,codeAnnee = :codeAnnee where idPlanning = :idPlanning")->execute([
            'matriculeProfesseur' => $planning->matriculeProfesseur,
            'codeSalleClasse' => $planning->codeSalleClasse,
            'codeMatiere' => $planning->codeMatiere,
            'codeJour' => $planning->codeJour,
            'codeHoraire' => $planning->codeHoraire,
            'idPlanning' => $planning->idPlanning,
            'codeAnnee' => $planning->codeAnnee
        ]);
    }

    function delete(int $id): bool
    {
        return $this->db->prepare("delete from planning where idPlanning = :idPlanning")->execute(['idPlanning' => $id]);
    }

    function findLastInserted(): false | stdClass
    {
        $lastId = $this->db->lastInsertId();
        return $this->findOneById($lastId);
    }

    function conflicts($prof, $codeSalleClasse, $jour, $debut, $fin, $codeAnnee, $id = null): array
    {
        $profConflicts = $this->db->selectAll("select * from planning_view where ( matriculeProfesseur = '$prof') and codeJour = '$jour' and codeAnnee='$codeAnnee' and (debutHoraire < '$fin' and finHoraire > '$debut')" . ($id ? " and idPlanning != '$id'" : ""), stdClass::class);
        $salleConflicts = $this->db->selectAll("select * from planning_view where (codeSalleClasse = '$codeSalleClasse') and codeJour = '$jour' and codeAnnee='$codeAnnee' and (debutHoraire < '$fin' and finHoraire > '$debut')" . ($id ? " and idPlanning != '$id'" : ""), stdClass::class);
        return [
            ...array_map(function ($conflict) {
                $conflict->type_prof = true;
                return $conflict;
            }, $profConflicts),
            ...array_map(function ($conflict) {
                $conflict->type_classe = true;
                return $conflict;
            }, $salleConflicts)

        ];
    }



    // Define your repository methods here
}
