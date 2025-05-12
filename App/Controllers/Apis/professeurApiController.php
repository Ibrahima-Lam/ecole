<?php

namespace App\Controllers\apis;

use App\Models\Repositories\ProfesseurRepository;
use Core\Controllers\Controller;
use App\Controllers\interfaces\EleveControllerInterfaces;
use Core\Services\Sql\SqlErreurMessage;

class ProfesseurApiController extends Controller implements EleveControllerInterfaces
{
    public function liste(): void
    {
        $model = new ProfesseurRepository();
        $data = $model->findAll();
        $this->response($data);
    }


    public function matricule($matricule): void
    {
        $model = new ProfesseurRepository();
        $data = $model->findOneByMatricule($matricule);
        if (!$data) {
            $this->response([
                'response' => "ko",
                'message' => "Le professeur n'a pas été trouvé",
                'status' => 0
            ]);
            return;
        }
        $this->response($data);
    }
    public function insert(): void
    {
        try {
        extract($_REQUEST);
        $model = new ProfesseurRepository();
        $res = $model->insert($matricule, ucwords($nom), $isme, $sexe, $adresse, $nni,$codeSpecialite,$dateDebut,$dateArrivee,$tel,$email,$statut);
        if ($res) {
            $data = $model->findOneByMatricule($matricule);
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => "Le professeur a été ajouté",
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => "Le professeur n'a pas été ajouté",
                'status' => 0
            ]);
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
    public function delete($matricule): void
    {
        try {
        $model = new ProfesseurRepository();
        $data = $model->delete($matricule);
        $this->response([
            "data" => $data,
            'response' => "ok",
            'message' => "Le professeur a été supprimé",
            'status' => 200
        ]);
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
    public function update($oldMatricule): void
    {
        try {
        extract($_REQUEST);
        $model = new ProfesseurRepository();
        $res = $model->update($oldMatricule, $matricule, ucwords($nom), $isme, $sexe, $adresse, $nni,$codeSpecialite,$dateDebut,$dateArrivee,$tel,$email,$statut);
        if ($res) {
            $data = $model->findOneByMatricule($matricule);
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => "Le professeur a été mis à jour",
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => "Le professeur n'a pas été mis à jour",
                'status' => 0,
                'data' => []
            ]);
        } catch(\PDOException $th) {
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
