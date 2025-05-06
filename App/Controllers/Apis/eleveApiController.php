<?php

namespace App\Controllers\apis;

use App\Models\Repositories\EleveRepository;
use App\Services\factories\NoninscritFactory;
use Core\Controllers\Controller;
use App\Controllers\interfaces\EleveControllerInterfaces;
use Core\Services\Sql\SqlErreurMessage;

class EleveApiController extends Controller implements EleveControllerInterfaces
{
    private const KEY="noninscrit";
    public function liste(): void
    {
        $model = new EleveRepository();
        $data = $model->findAll();
        $this->response($data);
    }

    public function autocomplete($ar=false) : void {
        $tab=[];
        $checks=[];
        $model = new EleveRepository();
        $data = $model->findAll();
        foreach ($data as  $value) {
            $t1=explode(" ",trim($value->nom));
            $t2=explode(" ",trim($value->isme));
            if ($ar && sizeof($t2)!=sizeof($t1)) continue;
            foreach ($t1 as $k => $v) {
                $val=ucfirst(strtolower($v));
                if(in_array($val, $checks)) continue;
                $checks[]=$val;
                $tab[]=["fr"=>$val,"ar"=>$t2[$k]??''];
            }
        }
        usort($tab, function($a, $b) {
            return mb_strtolower($a['fr'])>mb_strtolower($b['fr']) ? 1 : -1;
        });
        $this->response($tab);

    }
    public function enregistrer(): void {
        unset($_REQUEST['p']);
      if (!empty($_REQUEST))  NoninscritFactory::add($_REQUEST);
        $this->response(NoninscritFactory::get());
    }
    public function noninscrit(): void {
        $this->response(NoninscritFactory::get());
    }

    public function clearNoninscrit(): void {
        NoninscritFactory::clear();
        $this->response(NoninscritFactory::get());
    }


    public function matricule($matricule): void
    {
        $model = new EleveRepository();
        $data = $model->findOneByMatricule($matricule);
        if (!$data) {
            $this->response([
                'response' => "ko",
                'message' => "L'élève n'a pas été trouvé",
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
        $model = new EleveRepository();
        $res = $model->insert($matricule, ucwords($nom), $isme, $sexe, $dateNaissance, $lieuNaissance, $adresse, $nni);
        if ($res) {
            $data = $model->findOneByMatricule($matricule);
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => "L'élève a été ajouté",
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => "L'élève n'a pas été ajouté",
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
        $model = new EleveRepository();
        $data = $model->delete($matricule);
        $this->response([
            "data" => $data,
            'response' => "ok",
            'message' => "L'élève a été supprimé",
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
        $model = new EleveRepository();
        $res = $model->update($oldMatricule, $matricule, ucwords($nom), $isme, $sexe, $dateNaissance, $lieuNaissance, $adresse, $nni);
        if ($res) {
            $data = $model->findOneByMatricule($matricule);
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => "L'élève a été mis à jour",
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => "L'élève n'a pas été mis à jour",
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
