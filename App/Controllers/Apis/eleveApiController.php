<?php

namespace App\Controllers\apis;

use App\Models\Repositories\EleveRepository;
use App\Models\Repositories\ProfesseurRepository;
use App\Services\factories\NomFactory;
use App\Services\factories\NoninscritFactory;
use Core\Controllers\Controller;
use App\Controllers\interfaces\EleveControllerInterfaces;
use Core\Services\Sql\SqlErreurMessage;
use App\Services\factories\UserFactory;

class EleveApiController extends Controller implements EleveControllerInterfaces
{
    private const KEY = "noninscrit";
    public function liste(): void
    {
        $model = new EleveRepository();
        $data = $model->findAll();
        $this->response($data);
    }

    public function htmlListe(): void
    {
        $user=UserFactory::getUser();
        $admin=$user->roleUser=="admin";
        $sort = $_REQUEST['sort'] ?? 'matricule';
        $order = $_REQUEST['order'] ?? 'asc';
        $search = $_REQUEST['search'] ?? null;
        $model = new EleveRepository();
        $data = $model->findAll();

        if ($search) {
            $data = array_filter($data, function ($value) use ($search) {
                return preg_match('/'.$search.'/i', $value->nom) ||
                preg_match('/'.$search.'/i', $value->nni) ||
                preg_match('/'.$search.'/i', $value->matricule) ||
                 preg_match('/'.$search.'/i', $value->isme);
            });
        }
        usort($data, function ($a, $b) use ($sort, $order) {
            $result = strcmp($a->$sort, $b->$sort);
            return $order === 'asc' ? $result : -$result;
        });
        $html = array_reduce($data, function ($carry, $item)use($search,$admin) {
            $tr=  "<tr data-matricule=\"" . $item->matricule . "\"><td>" . $item->matricule . "</td><td>" . $item->nom . "<br><span dir=\"rtl\">" . $item->isme . "</span></td><td>" . $item->sexe . "</td><td>" . $item->dateNaissance . "</td><td>" . $item->lieuNaissance . "</td><td>" . $item->adresse . "</td><td>" . $item->nni . "</td>
            <td>
            <div class='center'>

                            <a href=\"?p=eleve/profil/" . $item->matricule . "\" title=\"Voir l'eleve\"><i class=\"bi-eye\"></i></a>
                           ";
                           if($admin){
                                $tr.="
                                <div class=\"edit\" title=\"Editer l'eleve\" data-matricule=\"" . $item->matricule . "\"><i class=\"fa fa-edit\"></i></div>
                                <div class=\"delete\" title=\"Supprimer l'eleve\" data-matricule=\"" . $item->matricule . "\"><i class=\"fa fa-trash  text-danger\"></i></div>
                            ";
                           }    
                           $tr.="</div>
            </td></tr>";
           if($search) $tr=preg_replace('/'.$search.'/i', "<mark>$search</mark>", $tr);
            return $carry.$tr;
        }, "");
        $this->response($html);
    }

    public function autocomplete($ar = false): void
    {
        $tab = NomFactory::getNoms();
        $checks = [];
        $model = new EleveRepository();
        $eleves = $model->findAll();
        foreach ($eleves as $value) {
            $t1 = explode(" ", trim($value->nom));
            $t2 = explode(" ", trim($value->isme));
            if ($ar && sizeof($t2) != sizeof($t1))
                continue;
            foreach ($t1 as $k => $v) {
                $val = ucfirst(strtolower($v));
                if (in_array($val, $checks))
                    continue;
                $checks[] = $val;
                $tab[] = ["fr" => $val, "ar" => $t2[$k] ?? ''];
            }
        }
        $model = new ProfesseurRepository();
        $professeurs = $model->findAll();
        foreach ($professeurs as $value) {
            $t1 = explode(" ", trim($value->nomProfesseur));
            $t2 = explode(" ", trim($value->ismeProfesseur));
            if ($ar && sizeof($t2) != sizeof($t1))
                continue;
            foreach ($t1 as $k => $v) {
                $val = ucfirst(strtolower($v));
                if (in_array($val, $checks))
                    continue;
                $checks[] = $val;
                $tab[] = ["fr" => $val, "ar" => $t2[$k] ?? ''];
            }
        }
        usort($tab, function ($a, $b) {
            return mb_strtolower($a['fr']) > mb_strtolower($b['fr']) ? 1 : -1;
        });
        $this->response($tab);

    }
    public function enregistrer(): void
    {
        unset($_REQUEST['p']);
        if (!empty($_REQUEST))
            NoninscritFactory::add($_REQUEST);
        $this->response(NoninscritFactory::get());
    }
    public function noninscrit(): void
    {
        $this->response(NoninscritFactory::get());
    }

    public function clearNoninscrit(): void
    {
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
