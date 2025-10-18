<?php

namespace App\Controllers\Apis;

use App\Controllers\src\ApiController;
use App\Services\src\AnneeScolaireService;
use App\Services\src\HoraireService;
use App\Services\src\PlanningService;
use Core\Services\Sql\SqlErreurMessage;
use stdClass;

class PlanningApiController extends ApiController
{
    public function __construct(private PlanningService $planningService) {}

    public function liste()
    {
        $data = $this->planningService->getAllByCodeAnnee();
        return $this->response($data);
    }
    public function one($id)
    {
        $data = $this->planningService->planningRepository->findOneById($id);
        return $this->response($data);
    }

    public function insert(HoraireService $horaireService, AnneeScolaireService $anneeScolaireService)
    {
        try {
            $codeAnnee = $anneeScolaireService->getCodeAnnee();
            extract($_REQUEST);
            $data = new stdClass;
            $data->codeSalleClasse = $codeSalleClasse;
            $data->matriculeProfesseur = $matriculeProfesseur ?? null;
            $data->codeJour = $codeJour;
            $data->codeHoraire = $codeHoraire;
            $data->codeMatiere = $codeMatiere;
            $data->codeAnnee = $codeAnnee;
            $horaire = $horaireService->getById($codeHoraire);
            $conflicts = $this->planningService->planningRepository->conflicts($matriculeProfesseur, $codeSalleClasse, $codeJour, $horaire->debutHoraire, $horaire->finHoraire, $codeAnnee);
            if (!empty($conflicts)) {
                return   $this->response([
                    'response' => "error",
                    'message' => __("Conflit de planning détecté"),
                    'status' => -1,
                    'data' => $conflicts
                ]);
            }
            $res = $this->planningService->planningRepository->insert($data);
            if ($res) {
                $data = $this->planningService->planningRepository->findLastInserted();
                return $this->response([
                    "data" => $data,
                    'response' => "ok",
                    'message' => __("Le planning a été ajouté"),
                    'status' => 1
                ]);
            } else {
                $this->response([
                    'response' => "error",
                    'message' => __("Le planning n'a pas été ajouté"),
                    'status' => 0
                ]);
            }
        } catch (\PDOException $th) {
            $this->response([
                'response' => "ko",
                'message' => SqlErreurMessage::getMessage($th->errorInfo[1]),
                'error' => $th->getMessage(),
                'code' => $th->errorInfo[1],
                'status' => 0
            ]);
        }
    }
    public function update($id, HoraireService $horaireService, AnneeScolaireService $anneeScolaireService)
    {
        try {
            $codeAnnee = $anneeScolaireService->getCodeAnnee();
            extract($_REQUEST);
            $data = new stdClass;
            $data->idPlanning = $id;
            $data->codeSalleClasse = $codeSalleClasse;
            $data->matriculeProfesseur = $matriculeProfesseur ?? null;
            $data->codeJour = $codeJour;
            $data->codeHoraire = $codeHoraire;
            $data->codeMatiere = $codeMatiere;
            $data->codeAnnee = $codeAnnee;
            $horaire = $horaireService->getById($codeHoraire);
            $conflicts = $this->planningService->planningRepository->conflicts($matriculeProfesseur, $codeSalleClasse, $codeJour, $horaire->debutHoraire, $horaire->finHoraire, $codeAnnee, $id);
            if (!empty($conflicts)) {
                return $this->response([
                    'data' => $conflicts,
                    'response' => "error",
                    'message' => __("Conflit de planning détecté"),
                    'status' => -1
                ]);
            }

            $res = $this->planningService->planningRepository->update($data);
            if ($res) {
                $data = $this->planningService->planningRepository->findOneById($id);
                $this->response([
                    "data" => $data,
                    'response' => "ok",
                    'message' => __("Le planning a été mis à jour"),
                    'status' => 1
                ]);
            } else {
                $this->response([
                    'response' => "error",
                    'message' => __("Le planning n'a pas été mis à jour"),
                    'status' => 0
                ]);
            }
        } catch (\PDOException $th) {
            $this->response([
                'response' => "ko",
                'message' => SqlErreurMessage::getMessage($th->errorInfo[1]),
                'error' => $th->getMessage(),
                'code' => $th->errorInfo[1],
                'status' => 0
            ]);
        }
    }


    public function delete($id)
    {
        try {

            $res = $this->planningService->planningRepository->delete($id);
            if ($res) {
                $this->response([
                    'response' => "ok",
                    'message' => __("Le planning a été supprimé"),
                    'status' => 1
                ]);
            } else {
                $this->response([
                    'response' => "error",
                    'message' => __("Le planning n'a pas été supprimé"),
                    'status' => 0
                ]);
            }
        } catch (\PDOException $th) {
            $this->response([
                'response' => "ko",
                'message' => SqlErreurMessage::getMessage($th->errorInfo[1]),
                'error' => $th->getMessage(),
                'code' => $th->errorInfo[1],
                'status' => 0
            ]);
        }
    }
}
