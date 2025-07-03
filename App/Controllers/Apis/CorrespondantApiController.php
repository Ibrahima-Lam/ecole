<?php

namespace App\Controllers\apis;

use App\Repositories\CorrespondantRepository;
use App\Services\storages\UserStorage;
use App\Controllers\src\ApiController;
use Core\Services\Sql\SqlErreurMessage;

class CorrespondantApiController extends ApiController 
{
    public function liste(): void
    {
        $model = new CorrespondantRepository();
        $data = $model->findAll();
        $this->response($data);
    } public function htmlListe(): void
    {
        $admin=UserStorage::isAdmin();
        $sort = $_REQUEST['sort'] ?? 'idCorrespondant';
        $order = $_REQUEST['order'] ?? 'asc';
        $search = $_REQUEST['search'] ?? '';
        $model = new CorrespondantRepository();
        $data = $model->findAll();

        if ($search) {
            $data = array_filter($data, function ($value) use ($search) {
                return preg_match('/'.$search.'/i', $value->nomCorrespondant) ||
                preg_match('/'.$search.'/i', $value->nniCorrespondant) ||
                 preg_match('/'.$search.'/i', $value->ismeCorrespondant);
            });
        }
        usort($data, function ($a, $b) use ($sort, $order) {
            $result = strcmp($a->$sort, $b->$sort);
            return $order === 'asc' ? $result : -$result;
        });
        $html = array_reduce($data, function ($carry, $item)use($search,$admin) {
           $imgTag="<div class=\"img-circle\">";
           $imgTag.=file_exists("profiles/correspondant/".$item->imagePathCorrespondant)&&$item->imagePathCorrespondant?"<img  src=\"profiles/correspondant/" . $item->imagePathCorrespondant . "\" >":
           "<div class=\"center\">
                            <i class=\"fa fa-user\"></i>
                         </div>";
           $imgTag.="</div>";
            $tr=  "<tr data-id=\"" . $item->idCorrespondant . "\">
            <td>{$imgTag}</td>
            <td>{$item->nomCorrespondant}</td>
            <td>{$item->ismeCorrespondant}</td>
            <td>{$item->sexeCorrespondant}</td>
            <td>{$item->adresseCorrespondant}</td>
            <td>{$item->telCorrespondant}</td>
            <td>{$item->emailCorrespondant}</td>
            <td>{$item->nniCorrespondant}</td>
            <td>
            <div class='center'>

                            <a href=\"?p=correspondant/profil/" . $item->idCorrespondant . "\" title=\"Voir le correspondant\"><i class=\"fa fa-eye text-info\"></i></a>
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



    public function id($idCorrespondant): void
    {
        $model = new CorrespondantRepository();
        $data = $model->findOneById($idCorrespondant);
        if (!$data) {
            $this->response([
                'response' => "ko",
                'message' => __("Le correspondant n'a pas été trouvé"),
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
        $model = new CorrespondantRepository();
        $res = $model->insert([
            'nomCorrespondant' => $nom,
            'ismeCorrespondant' => $isme,
            'adresseCorrespondant' => $adresse,
            'sexeCorrespondant' => $sexe,
            'telCorrespondant' => $tel,
            'emailCorrespondant' => $email,
            'nniCorrespondant' => $nni,
        ]);
        if ($res) {
            $data = $model->findOneById($model->lastInsertId());
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => __("Le correspondant a été ajouté"),
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => __("Le correspondant n'a pas été ajouté"),
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
    public function delete($idCorrespondant): void
    {
        try {
        $model = new CorrespondantRepository();
        $data = $model->delete($idCorrespondant);
        $this->response([
            "data" => $data,
            'response' => "ok",
            'message' => __("Le correspondant a été supprimé"),
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
    public function update($idCorrespondant): void
    {
        try {
        extract($_REQUEST);
        $model = new CorrespondantRepository();
        $res = $model->update($idCorrespondant, [
            'nomCorrespondant' => $nom,
            'ismeCorrespondant' => $isme,
            'adresseCorrespondant' => $adresse,
            'sexeCorrespondant' => $sexe,
            'telCorrespondant' => $tel,
            'emailCorrespondant' => $email,
            'nniCorrespondant' => $nni,
        ]);
        if ($res) {
            $data = $model->findOneById($idCorrespondant);
            $this->response(
                [
                    "data" => $data,
                    'response' => "ok",
                    'message' => __("Le correspondant a été mis à jour"),
                    'status' => 1
                ]
            );
        } else
            $this->response([
                'response' => "ko",
                'message' => __("Le correspondant n'a pas été mis à jour"),
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
