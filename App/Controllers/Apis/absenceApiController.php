<?php

namespace App\Controllers\Apis;

use App\Repositories\absenceRepository;
use App\Services\src\AbsenceService;
use App\Services\storages\UserStorage;
use App\Controllers\src\ApiController;
use Core\Services\Sql\SqlErreurMessage;

class absenceApiController extends ApiController
{

    public function __construct(private AbsenceService $absenceService) {
    
    }
    public function liste(): void
    {
        $model = new absenceRepository();
        $data = $model->findAll();
        $this->response($data);
    }

    public function htmlListe(): void
    {
        $admin = UserStorage::isAdmin();
        $sort = $_REQUEST['sort'] ?? 'idAbsence';
        $order = $_REQUEST['order'] ?? 'asc';
        $search = $_REQUEST['search'] ?? '';
        $model = new absenceRepository();
        $data = $model->findAll();

        if ($search) {
            $data = array_filter($data, function ($value) use ($search) {
                return preg_match('/' . $search . '/i', $value->matricule) ||
                    preg_match('/' . $search . '/i', $value->nombreAbsence) ||
                    preg_match('/' . $search . '/i', $value->trimestreAbsence) ||
                    preg_match('/' . $search . '/i', $value->codeAnnee);
            });
        }

        usort($data, function ($a, $b) use ($sort, $order) {
            $result = strcmp($a->$sort, $b->$sort);
            return $order === 'asc' ? $result : -$result;
        });

        $html = array_reduce($data, function ($carry, $item) use ($search, $admin) {
            $tr = "<tr data-id=\"" . $item->idAbsence . "\">
            <td>{$item->matricule}</td>
            <td>{$item->nombreAbsence}</td>
            <td>{$item->trimestreAbsence}</td>
            <td>{$item->codeAnnee}</td>
            <td>
            <div class='center'>";
            if ($admin) {
                $tr .= "
                                <div class=\"edit\" title=\"Editer l'abscence\" data-id=\"" . $item->idAbsence . "\"><i class=\"fa fa-edit text-primary\"></i></div>
                                <div class=\"delete\" title=\"Supprimer l'abscence\" data-id=\"" . $item->idAbsence . "\"><i class=\"fa fa-trash  text-danger\"></i></div>
                            ";
            }
            $tr .= "</div>
            </td></tr>";
            if ($search) $tr = preg_replace('/' . $search . '/i', "<mark>$search</mark>", $tr);
            return $carry . $tr;
        }, "");
        $this->response($html);
    }

    public function id($idAbscence): void
    {
        
        $data = $this->absenceService->findOneById($idAbscence);
        if (!$data) {
            $this->response([
                'response' => "ko",
                'message' => __("L'abscence n'a pas été trouvée"),
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
          
            $res = $this->absenceService->insert([
                'matricule' => $matricule,
                'nombreAbsence' => $nombreAbsence,
                'trimestreAbsence' => $trimestreAbsence,
            ]);
            if ($res) {
                $data = $this->absenceService->findOneById($this->absenceService->lastInsertId());
                $this->response(
                    [
                        "data" => $data,
                        'response' => "ok",
                        'message' => __("L'abscence a été ajoutée"),
                        'status' => 1
                    ]
                );
            } else
                $this->response([
                    'response' => "ko",
                    'message' => __("L'abscence n'a pas été ajoutée"),
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

    public function update($idAbscence): void
    {
        try {
            extract($_REQUEST);
            
            $res = $this->absenceService->update($idAbscence, [
                'matricule' => $matricule,
                'nombreAbsence' => $nombreAbsence,
                'trimestreAbsence' => $trimestreAbsence,
            ]);
            if ($res) {
                $data = $this->absenceService->findOneById($idAbscence);
                $this->response(
                    [
                        "data" => $data,
                        'response' => "ok",
                        'message' => __("L'absence a été modifiée"),
                        'status' => 1
                    ]
                );
            } else
                $this->response([
                    'response' => "ko",
                    'message' => __("L'absence n'a pas été modifiée"),
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

    public function delete($idAbscence): void
    {
        try {
          
            $data = $this->absenceService->delete($idAbscence);
            $this->response([
                "data" => $data,
                'response' => "ok",
                'message' => __("L'abscence a été supprimée"),
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