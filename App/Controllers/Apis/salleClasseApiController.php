<?php

namespace App\Controllers\Apis;

use App\Repositories\SalleClasseRepository;
use App\Controllers\src\ApiController;
use App\Services\business\ClassebulletinService;
use App\Services\src\SalleClasseService;
use Core\Services\Sql\SqlErreurMessage;
use Src\Factories\ResultatParamettreFactory;


class salleClasseApiController extends ApiController
{
    private $salleClasseService;
    public function __construct(SalleClasseService $salleClasseService)
    {
        parent::__construct();
        $this->salleClasseService = $salleClasseService;
    }
    public function liste($annee = null)
    {
        $model = new SalleClasseRepository();
        $data = $model->findAll($annee);
        echo json_encode($data);
    }
    public function one($code)
    {
        $model = new SalleClasseRepository();
        $data = $model->findOneByCode($code);
        echo json_encode($data);
    }

    public function insert()
    {
        try {

            extract($_REQUEST);
            $model = new SalleClasseRepository();
            $codeSalleClasse = "A$codeAnnee$codeClasse{$indiceSalleClasse}";
            $res = $model->insert($codeSalleClasse, $codeClasse, $codeSalle, $codeAnnee, $indiceSalleClasse);
            if ($res) {
                $data = $model->findOneBycode($codeSalleClasse);
                $this->response([
                    "data" => $data,
                    'response' => "ok",
                    'message' => "La Salle de Classe a ete ajoutee",
                    'status' => 1
                ]);
            } else {
                $this->response([
                    'response' => "error",
                    'message' => "La Salle de Classe n'a pas ete ajoutee",
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
    public function update()
    {
        try {

            extract($_REQUEST);
            $model = new SalleClasseRepository();

            $res = $model->update($codeSalleClasse, $codeClasse, $codeSalle, $codeAnnee, $indiceSalleClasse);
            if ($res) {
                $data = $model->findOneBycode($codeSalleClasse);
                $this->response([
                    "data" => $data,
                    'response' => "ok",
                    'message' => "La Salle de Classe a ete modifiee",
                    'status' => 1
                ]);
            } else {
                $this->response([
                    'response' => "error",
                    'message' => "La Salle de Classe n'a pas ete ajoutee",
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
    public function delete($code)
    {
        try {
            $model = new SalleClasseRepository();
            $res = $model->delete($code);
            if ($res) {
                $this->response([
                    'response' => "ok",
                    'message' => "L'examens a ete supprimee",
                    'status' => 1
                ]);
            } else {
                $this->response([
                    'response' => "error",
                    'message' => "L'examens n'a pas ete supprimee",
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

    public function statistique(ClassebulletinService $classebulletinService,$codeSalleClasse, $typeBulletin)
    {
        $typeBulletin=intval($typeBulletin);
        $paramettre = ResultatParamettreFactory::getResultatParam();
        $classebulletinService->setSalleClasse($codeSalleClasse);
        $tab=[];
        if ($paramettre->rang) {
         $tab = match ($typeBulletin) {
             1 => $classebulletinService->getPoints1(),
             2 => $classebulletinService->getPoints2(),
             default => $classebulletinService->getPoints3(),
            };
        }
        match ($typeBulletin) {
            1 => $classebulletinService->getBulletins1($tab),
            2 => $classebulletinService->getBulletins2($tab),
            default => $classebulletinService->getBulletins3($tab),
        };
       $statistiques=$classebulletinService->getStatistiques($typeBulletin,$tab);
        $this->response($statistiques);
    }
}
