<?php

namespace App\Controllers\apis;

use App\Repositories\professeurMatiereRepository;
use App\Controllers\src\ApiController;
use App\Controllers\interfaces\EleveControllerInterfaces;
use Core\Services\Sql\SqlErreurMessage;

class ProfesseurMatiereApiController extends ApiController implements EleveControllerInterfaces
{
    public function liste(): void
    {
        $model = new professeurMatiereRepository();
        $data = $model->findAll();
        $this->response($data);
    }


   
    public function insert(): void
    {
        try {
        extract($_REQUEST);
        $model = new professeurMatiereRepository();
        $res = $model->insert($matricule, $codeMatiere);
        if ($res) {
            $data = $model->findByCodeMatiereAndMatriculeProfesseur($codeMatiere,$matricule);
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => "La matiere du professeur a été ajouté",
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => "La matiere du professeur n'a pas été ajouté",
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
    public function delete($codeMatiere,$matricule): void
    {
        try {
        $model = new professeurMatiereRepository();
        $data = $model->delete($codeMatiere,$matricule);
        $this->response([
            "data" => $data,
            'response' => "ok",
            'message' => "La matiere du professeur a été supprimé",
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
    public function update($oldMatricule,$oldCodeMatiere): void
    {
        try {
        extract($_REQUEST);
        $model = new professeurMatiereRepository();
        $res = $model->update($oldMatricule, $oldCodeMatiere, $matricule, $codeMatiere);
        if ($res) {
            $data = $model->findByCodeMatiereAndMatriculeProfesseur($matricule,$codeMatiere);
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => "La matiere du professeur a été mis à jour",
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => "La matiere du professeur n'a pas été mis à jour",
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
