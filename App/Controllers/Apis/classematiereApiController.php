<?php

namespace App\Controllers\Apis;

use App\Controllers\src\ApiController;
use App\Models\Repositories\ClasseMatiereRepository;

class ClassematiereApiController extends ApiController {

    public function liste(): void {
        $model = new ClasseMatiereRepository();
        $data = $model->findAll();
        $this->response($data);
    }

    public function insert(): void {
        extract($_REQUEST);
        $model = new ClasseMatiereRepository();
        $code=$matiere.$classe;
        $res = $model->insert($code,$classe, $matiere, $horaire, $coefficient,$date);
        if ($res) {
            $data = $model->findOne($code);
            $this->response([
                "data" => $data,
                'response' => "ok",
                'message' => "La classe matiere a ete ajoutee",
                'status' => 1
            ]);
        }else{
            $this->response([
                'response' => "error",
                'message' => "La classe matiere n'a pas ete ajoutee",
                'status' => 0
            ]);
        }
    }

    public function update(): void {
        extract($_REQUEST);
        $model = new ClasseMatiereRepository();
        $res = $model->update($code,$classe, $matiere, $horaire, $coefficient,$date);
        if ($res) {
            $data = $model->findOne($code);
            $this->response([
                "data" => $data,
                'response' => "ok",
                'message' => "La classe matiere a ete mise a jour",
                'status' => 1
            ]);
        }else{
            $this->response([
                'response' => "error",
                'message' => "La classe matiere n'a pas ete mise a jour",
                'status' => 0
            ]);
        }
    }

    public function delete($code): void {
        $model = new ClasseMatiereRepository();
        $res = $model->delete($code);
        if ($res) {
            $this->response([
                'response' => "ok",
                'message' => "La classe matiere a ete supprimee",
                'status' => 1
            ]);
        }else{
            $this->response([
                'response' => "error",
                'message' => "La classe matiere n'a pas ete supprimee",
                'status' => 0
            ]);
        }
    }
}
