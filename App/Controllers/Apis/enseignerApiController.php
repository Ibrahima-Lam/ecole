<?php

namespace App\Controllers\apis;

use App\Repositories\enseignerRepository;
use App\Controllers\src\ApiController;
use App\Controllers\interfaces\EleveControllerInterfaces;
use Core\Services\Sql\SqlErreurMessage;

class EnseignerApiController extends ApiController implements EleveControllerInterfaces
{
    public function liste(): void
    {
        $model = new enseignerRepository();
        $data = $model->findAll();
        $this->response($data);
    }
     public function one($id): void
    {
        $model = new enseignerRepository();
        $data = $model->findOneById($id);
        $this->response($data);
    }


   
    public function insert(): void
    {
        try {
        extract($_REQUEST);
        $model = new enseignerRepository();
        $res = $model->insert($matricule, $codeMatiere,$codeSalleClasse);
        if ($res) {
            $id=$model->lastInsertedId();
            $data = $model->findOneById($id);
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
    public function delete($id): void
    {
        try {
        $model = new enseignerRepository();
        $data = $model->delete($id);
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
    public function update($id): void
    {
        try {
        extract($_REQUEST);
        $model = new enseignerRepository();
        $res = $model->update($id, $matricule,$codeMatiere,$codeSalleClasse);
        if ($res) {
            $data = $model->findOneById($id);
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
