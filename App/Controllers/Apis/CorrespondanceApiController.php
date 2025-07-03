<?php

namespace App\Controllers\apis;

use App\Repositories\CorrespondanceRepository;
use App\Services\storages\UserStorage;
use App\Controllers\src\ApiController;
use Core\Services\Sql\SqlErreurMessage;

class CorrespondanceApiController extends ApiController 
{
    public function liste(): void
    {
        $model = new CorrespondanceRepository();
        $data = $model->findAll();
        $this->response($data);
    } public function htmlListe(): void
    {
        $admin=UserStorage::isAdmin();
        $sort = $_REQUEST['sort'] ?? 'idCorrespondance';
        $order = $_REQUEST['order'] ?? 'asc';
        $search = $_REQUEST['search'] ?? '';
        $model = new CorrespondanceRepository();
        $data = $model->findAll();

        if ($search) {
            $data = array_filter($data, function ($value) use ($search) {
                return preg_match('/'.$search.'/i', $value->nomCorrespondant) ||
                preg_match('/'.$search.'/i', $value->nniCorrespondant) ||
                 preg_match('/'.$search.'/i', $value->ismeCorrespondant) ||
                 preg_match('/'.$search.'/i', $value->telCorrespondant) ||
                 preg_match('/'.$search.'/i', $value->adresseCorrespondant) ||
                 preg_match('/'.$search.'/i', $value->nom) ||
                 preg_match('/'.$search.'/i', $value->isme) ||
                 preg_match('/'.$search.'/i', $value->nni) ||
                 preg_match('/'.$search.'/i', $value->matricule);
            });
        }
        usort($data, function ($a, $b) use ($sort, $order) {
            $result = strcmp($a->$sort, $b->$sort);
            return $order === 'asc' ? $result : -$result;
        });
        $html = array_reduce($data, function ($carry, $item)use($search,$admin) {
           $imgTag="<div class=\"img-circle\">";
           $imgTag.=file_exists("profiles/eleve/".$item->imagePath)&&$item->imagePath?"<img  src=\"profiles/eleve/" . $item->imagePath . "\" >":
           "<div class=\"center\">
                            <i class=\"fa fa-user\"></i>
                         </div>";
           $imgTag.="</div>"; 
           $imgTag2="<div class=\"img-circle\">";
           $imgTag2.=file_exists("profiles/correspondant/".$item->imagePathCorrespondant)&&$item->imagePathCorrespondant?"<img  src=\"profiles/correspondant/" . $item->imagePathCorrespondant . "\" >":
           "<div class=\"center\">
                            <i class=\"fa fa-user\"></i>
                         </div>";
           $imgTag2.="</div>";
            $tr=  "<tr data-matricule=\"" . $item->matricule . "\">
            <td>{$imgTag}</td>
            <td>{$item->matricule}</td>
            <td>{$item->nom}
            <br>
            {$item->isme}</td>
            <td>{$item->nni}</td>
            <td>{$imgTag2}</td>
            <td>{$item->nomCorrespondant}
            <br>
            {$item->ismeCorrespondant}</td>
            <td>{$item->telCorrespondant}</td>
            <td>{$item->adresseCorrespondant}</td>
            <td>
            <div class='center'>

                            <a href=\"?p=correspondance/profil/" . $item->idCorrespondance . "\" title=\"Voir le correspondant\"><i class=\"fa fa-eye text-info\"></i></a>
                           ";
                           if($admin){
                                $tr.="
                                <div class=\"edit\" title=\"Editer le correspondant\" data-id=\"" . $item->idCorrespondant . "\"><i class=\"fa fa-edit text-primary\"></i></div>
                                <div class=\"delete\" title=\"Supprimer le correspondant\" data-id=\"" . $item->idCorrespondant . "\"><i class=\"fa fa-trash  text-danger\"></i></div>
                            ";
                           }    
                           $tr.="</div>
            </td></tr>";
           if($search) $tr=preg_replace('/'.$search.'/i', "<mark>$search</mark>", $tr);
            return $carry.$tr;
        }, "");
        $this->response($html);
    }



    public function id($idCorrespondance): void
    {
        $model = new CorrespondanceRepository();
        $data = $model->findOneById($idCorrespondance);
        if (!$data) {
            $this->response([
                'response' => "ko",
                'message' => __("La correspondance n'a pas été trouvée"),
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
        $model = new CorrespondanceRepository();
        $res = $model->insert([
            'matricule' => $matricule,
            'idCorrespondant' => $idCorrespondant,
        ]);
        if ($res) {
            $data = $model->findOneById($model->lastInsertId());
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => __("La correspondance a été ajoutée"),
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => __("La correspondance n'a pas été ajoutée"),
                'status' => 0,
                'data' => []
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
    public function update($idCorrespondance): void
    {
        try {
        extract($_REQUEST);
        $model = new CorrespondanceRepository();
        $res = $model->update($idCorrespondance, [
            'matricule' => $matricule,
            'idCorrespondant' => $idCorrespondant,
        ]);
        if ($res) {
            $data = $model->findOneById($idCorrespondance);
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => __("La correspondance a été modifiée"),
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => __("La correspondance n'a pas été modifiée"),
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
    public function delete($idCorrespondance): void
    {
        try {
        $model = new CorrespondanceRepository();
        $data = $model->delete($idCorrespondance);
        $this->response([
            "data" => $data,
            'response' => "ok",
            'message' => __("La correspondance a été supprimée"),
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


}
