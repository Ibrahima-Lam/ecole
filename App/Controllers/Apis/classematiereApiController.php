<?php

namespace App\Controllers\Apis;

use App\Controllers\src\ApiController;
use App\Repositories\ClasseMatiereRepository;
use App\Services\src\AnneeScolaireService;
use App\Services\src\ClasseMatiereService;
use Core\Services\Sql\SqlErreurMessage;
use Core\src\Request;

class ClassematiereApiController extends ApiController {

    private $classeMatiereRepository;
    public function __construct(private AnneeScolaireService $anneeScolaireService,private ClasseMatiereService $classeMatiereService)
    {
        $this->classeMatiereRepository = new ClasseMatiereRepository();
    }
    public function liste(): void {
        $data = $this->classeMatiereRepository->findAll();
        $this->response($data);
    }
    public function listeForApi(): void {
        $data = $this->classeMatiereRepository->findAllForApi();
        $this->response($data);
    }

    public function insert(): void {
       try {
        extract($_REQUEST);
        $res = $this->classeMatiereService->insert($classe, $matiere, $horaire, $coefficient,$annee,$statut);
        if ($res) {
            $data = $this->classeMatiereRepository->findOne($code);
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
       } catch (\PDOException $e) {
           $this->response([
               'response' => "ko",
               'message' => SqlErreurMessage::getMessage($e->errorInfo[1]),
               'error' => $e->getMessage(),
               'code' => $e->errorInfo[1],
               'status' => 0
           ]);
       }
    }

    public function update(): void {
        try {
            extract($_REQUEST);
        $res = $this->classeMatiereService->update($code,$classe, $matiere, $horaire, $coefficient,$annee,$statut);
        if ($res) {
            $data = $this->classeMatiereService->findOne($code);
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
    } catch (\PDOException $e) {
        $this->response([
            'response' => "ko",
            'message' => SqlErreurMessage::getMessage($e->errorInfo[1]),
            'error' => $e->getMessage(),
            'code' => $e->errorInfo[1],
            'status' => 0
        ]);
    }
    }

    public function delete($code): void {
        try {
            $res = $this->classeMatiereService->delete($code);
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
    } catch (\PDOException $e) {
        $this->response([
            'response' => "ko",
            'message' => SqlErreurMessage::getMessage($e->errorInfo[1]),
            'error' => $e->getMessage(),
            'code' => $e->errorInfo[1],
            'status' => 0
        ]);
    }
}

public function import(Request $request): void {
    try {
        extract($_REQUEST);
    $res = $this->classeMatiereService->import($request);
    if ($res) {
        $this->response([
            'response' => "ok",
            'message' => "La classe matiere a ete importee",
            'status' => 1
        ]);
    }else{
        $this->response([
            'response' => "error",
            'message' => "La classe matiere n'a pas ete importee",
            'status' => 0
        ]);
    }
} catch (\PDOException $e) {
    $this->response([
        'response' => "ko",
        'message' => SqlErreurMessage::getMessage($e->errorInfo[1]),
        'error' => $e->getMessage(),
        'code' => $e->errorInfo[1],
        'status' => 0
    ]);
}
}
}
