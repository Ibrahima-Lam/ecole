<?php

namespace App\Controllers\Apis;

use App\Services\src\absenceClasseService;
use App\Controllers\src\ApiController;
use App\Services\src\UserService;
use Core\Services\Sql\SqlErreurMessage;

class absenceClasseApiController extends ApiController
{

    public function __construct(private absenceClasseService $service,private UserService $userService) {
    
    }
    public function liste(): void
    {
        $data = $this->service->getAll();
        $this->response($data);
    }

    public function htmlListe(): void
    {
        $search = $_REQUEST['search'] ?? '';
        $codeSalleClasse = $_REQUEST['codeSalleClasse'] ?? '';
        $codeHoraire = $_REQUEST['codeHoraire'] ?? '';
        $dateDebut = $_REQUEST['dateDebut'] ?? '';
        $dateFin = $_REQUEST['dateFin'] ?? '';
        $admin = $this->userService->isAdmin();

        if ($codeSalleClasse || $codeHoraire || ($dateDebut && $dateFin)) {
            $data = $this->service->getByFilters($codeSalleClasse, $codeHoraire,$dateDebut, $dateFin);
        } else {
            $data = $this->service->getAll();
        }

        if ($search) {
            $data = array_filter($data, function ($value) use ($search) {
                return preg_match('/' . $search . '/i', $value->codeSalleclasse) ||
                    preg_match('/' . $search . '/i', $value->dateAbsenceClasse);
            });
        }

        $html = array_reduce($data, function ($carry, $item) use ($search,$admin) {
            $tr = "<tr data-id='" . $item->idAbsenceClasse . "'>
            <td>{$item->codeSalleClasse}</td>
            <td>{$item->codeHoraire}</td>
            <td>{$item->dateAbsenceClasse}</td>
            <td>{$item->absents}</td>
            <td>{$item->justifies}</td>
            <td>
   ";
            $tr .= $admin ? "<div class='center'>\n         
     <a href='?p=absenceClasse/form&id={$item->idAbsenceClasse}'> <i class='fa fa-edit  text-primary'></i>   
     </a>
     <div class='delete' title='Supprimer l'absence' data-id={$item->idAbsenceClasse}><i class='fa fa-trash  text-danger'></i></div>             
                   </div>" : "";  
            $tr .= "</td></tr>";
            if ($search) $tr = preg_replace('/' . $search . '/i', "<mark>$search</mark>", $tr);
            return $carry . $tr;
        }, "");
        $this->response($html);
    }

    public function id($id): void
    {
        
        $data = $this->service->getById($id);
        if (!$data) {
            $this->response([
                'response' => "ko",
                'message' => __("L'absence n'a pas été trouvée"),
                'status' => 0
            ]);
            return;
        }
        $this->response($data);
    }
    private function cleanString($string): string
    {
        return str_replace([" ","\r","\n", ";","."], ",", $string);
    }

    public function insert(): void
    {
        try {
            extract($_REQUEST);
            $justifies = $_REQUEST['justifies'] ?? '';
          $absents=$this->cleanString($absents);
          $justifies=$this->cleanString($justifies);
            $res = $this->service->create([
                'absents' => $absents,
                'codeSalleclasse' => $codeSalleClasse,
                'codeHoraire' => $codeHoraire,
                'dateAbsenceClasse' => $dateAbsenceClasse,
                'justifies' => $justifies,
            ]);
            if ($res) {
                $data = $this->service->getById($this->service->lastInsertId());
                $this->response(
                    [
                        "data" => $data,
                        'response' => "ok",
                        'message' => __("L'absence a été ajoutée"),
                        'status' => 1
                    ]
                );
            } else
                $this->response([
                    'response' => "ko",
                    'message' => __("L'absence n'a pas été ajoutée"),
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

    public function update($id): void
    {
        try {
            extract($_REQUEST);
            $justifies = $_REQUEST['justifies'] ?? '';
            $absents=$this->cleanString($absents);
            $justifies=$this->cleanString($justifies);
            $res = $this->service->update($id, [
                'absents' => $absents,
                'codeSalleclasse' => $codeSalleClasse,
                'codeHoraire' => $codeHoraire,
                'dateAbsenceClasse' => $dateAbsenceClasse,
                'justifies' => $justifies,
            ]);
            if ($res) {
                $data = $this->service->getById($id);
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
        }
        catch (\PDOException $th) {
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
          
            $data = $this->service->delete($id);
            $this->response([
                "data" => $data,
                'response' => "ok",
                'message' => __("L'absence a été supprimée"),
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

    public function removeAbsent($id, $studentId): void
    {
        try {
            $absenceClasse = $this->service->getById($id);
            if (!$absenceClasse) {
                $this->response([
                    'response' => "ko",
                    'message' => __("L'absence n'a pas été trouvée"),
                    'status' => 0
                ]);
                return;
            }

            $absents = explode(',', $absenceClasse->absents);
            $absents = array_map('trim', $absents);
            
            if (($key = array_search($studentId, $absents)) !== false) {
                unset($absents[$key]);
            }

            $newAbsents = implode(',', $absents);
            
            $res = $this->service->update($id, [
                'absents' => $newAbsents,
                'codeSalleclasse' => $absenceClasse->codeSalleClasse,
                'codeHoraire' => $absenceClasse->codeHoraire,
                'dateAbsenceClasse' => $absenceClasse->dateAbsenceClasse,
                'justifies' => $absenceClasse->justifies,
        ]);

            if ($res) {
                $updatedAbsenceClasse = $this->service->getById($id);
                $this->response(
                    [
                        "data" => $updatedAbsenceClasse,
                        'response' => "ok",
                        'message' => __("L'élève a été retiré des absents"),
                        'status' => 1
                    ]
                );
            } else {
                $this->response([
                    'response' => "ko",
                    'message' => __("Impossible de retirer l'élève des absents"),
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

    public function addAbsent($id, $studentId): void
    {
        try {
            $absenceClasse = $this->service->getById($id);
            if (!$absenceClasse) {
                $this->response([
                    'response' => "ko",
                    'message' => __("L'absence n'a pas été trouvée"),
                    'status' => 0
                ]);
                return;
            }

            $absents = explode(',', $absenceClasse->absents);
            $absents = array_map('trim', $absents);
            
            if (!in_array($studentId, $absents)) {
                $absents[] = $studentId;
            }

            $newAbsents = implode(',', $absents);
            
            $res = $this->service->update($id, [ 
                'absents' => $newAbsents,
                'codeSalleclasse' => $absenceClasse->codeSalleClasse,
                'codeHoraire' => $absenceClasse->codeHoraire,
                'dateAbsenceClasse' => $absenceClasse->dateAbsenceClasse,
                'justifies' => $absenceClasse->justifies,
        ]);

            if ($res) {
                $updatedAbsenceClasse = $this->service->getById($id);
                $this->response(
                    [
                        "data" => $updatedAbsenceClasse,
                        'response' => "ok",
                        'message' => __("L'élève a été ajouté aux absents"),
                        'status' => 1
                    ]
                );
            } else {
                $this->response([
                    'response' => "ko",
                    'message' => __("Impossible d'ajouter l'élève aux absents"),
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

    public function removeJustifies($id, $studentId): void
    {
        try {
            $absenceClasse = $this->service->getById($id);
            if (!$absenceClasse) {
                $this->response([
                    'response' => "ko",
                    'message' => __("L'absence n'a pas été trouvée"),
                    'status' => 0
                ]);
                return;
            }

            $justifies = explode(',', $absenceClasse->justifies);
            $justifies = array_map('trim', $justifies);
            
            if (($key = array_search($studentId, $justifies)) !== false) {
                unset($justifies[$key]);
            }

            $newJustifies = implode(',', $justifies);
            
            $res = $this->service->update($id, [
                'absents' => $absenceClasse->absents,
                'codeSalleclasse' => $absenceClasse->codeSalleClasse,
                'codeHoraire' => $absenceClasse->codeHoraire,
                'dateAbsenceClasse' => $absenceClasse->dateAbsenceClasse,
                'justifies' => $newJustifies,
            ]);

            if ($res) {
                $updatedAbsenceClasse = $this->service->getById($id);
                $this->response(
                    [
                        "data" => $updatedAbsenceClasse,
                        'response' => "ok",
                        'message' => __("L'élève a été retiré des justifiés"),
                        'status' => 1
                    ]
                );
            } else {
                $this->response([
                    'response' => "ko",
                    'message' => __("Impossible de retirer l'élève des justifiés"),
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

    public function addJustifies($id, $studentId): void
    {
        try {
            $absenceClasse = $this->service->getById($id);
            if (!$absenceClasse) {
                $this->response([
                    'response' => "ko",
                    'message' => __("L'absence n'a pas été trouvée"),
                    'status' => 0
                ]);
                return;
            }

            $justifies = explode(',', $absenceClasse->justifies);
            $justifies = array_map('trim', $justifies);
            
            if (!in_array($studentId, $justifies)) {
                $justifies[] = $studentId;
            }

            $newJustifies = implode(',', $justifies);
            
            $res = $this->service->update($id, [ 
                'absents' => $absenceClasse->absents,
                'codeSalleclasse' => $absenceClasse->codeSalleClasse,
                'codeHoraire' => $absenceClasse->codeHoraire,
                'dateAbsenceClasse' => $absenceClasse->dateAbsenceClasse,
                'justifies' => $newJustifies,
            ]);

            if ($res) {
                $updatedAbsenceClasse = $this->service->getById($id);
                $this->response(
                    [
                        "data" => $updatedAbsenceClasse,
                        'response' => "ok",
                        'message' => __("L'élève a été ajouté aux justifiés"),
                        'status' => 1
                    ]
                );
            } else {
                $this->response([
                    'response' => "ko",
                    'message' => __("Impossible d'ajouter l'élève aux justifiés"),
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
}