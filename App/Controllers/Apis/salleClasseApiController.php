<?php

namespace App\Controllers\Apis;

use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Services\Factories\Bulletin1Factory;
use App\Services\Factories\Bulletin2Factory;
use App\Services\Factories\Bulletin3Factory;
use App\Services\Factories\BulletinFactory;
use App\Controllers\src\ApiController;
use Core\Services\Sql\SqlErreurMessage;


class salleClasseApiController extends ApiController
{
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

    public function statistique($codeSalleClasse,$typeBulletin)
    {
        $inscritRepository = new inscritRepository();
        $annee = $this->getCodeAnnee();
        $inscrits = $inscritRepository->findAllByClasse($codeSalleClasse);
        $tab=[];
        $data = [];
        foreach ($inscrits as $inscrit) {
            $notematiere =$typeBulletin=='C1' ?
            Bulletin1Factory::getBulletin($inscrit->matricule, $annee):
            ($typeBulletin=='C2' ?Bulletin2Factory::getBulletin($inscrit->matricule, $annee):
            Bulletin3Factory::getBulletin($inscrit->matricule, $annee));
            $tab[] = $notematiere->getPoints();
            $data[] = $notematiere;
        }
        $data = array_map(function ($bulletin) use ($tab) {
            $bulletin->setTabPoints($tab);
            return $bulletin;
        }, $data);
      
        $statistiques=BulletinFactory::getStatistiques($data);
        $this->response($statistiques);
    }
}
