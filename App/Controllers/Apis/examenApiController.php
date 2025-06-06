<?php

namespace App\Controllers\Apis;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\EvaluationRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Services\factories\UserFactory;
use Core\Controllers\Controller;
use App\Models\Repositories\ExamenRepository;
use Core\Services\html\htmlService;
use Core\Services\Sql\SqlErreurMessage;

class ExamenApiController extends Controller
{
    private $examenRepository;
    public function __construct()
    {
        $this->examenRepository = new ExamenRepository();
    }

    public function liste($annee=false)
    {
        $code = $this->getCodeAnnee();
        $data =$annee ? $this->examenRepository->findAll() : $this->examenRepository->findAllByAnnee($code);
        echo json_encode($data);

    }

    public function htmlListe($filter_annee=true)
    {
        $search=$_GET['search'] ?? null;
        $codeSalleClasse=$_GET['classe'] ?? null;
        $date=$_GET['date'] ?? null;
        $codeMatiere=$_GET['matiere'] ?? null;
        $codeEvaluation=$_GET['evaluation'] ?? null;
        $annee=$this->getCodeAnnee();
        $data =$filter_annee ? $this->examenRepository->findAllByAnnee($annee) : $this->examenRepository->findAll();
        $admin=UserFactory::isAdmin();
     if ($codeSalleClasse){
        $data =array_filter($data, function($note) use ($codeSalleClasse) {
           return 
           strtolower($note->codeSalleClasse) == strtolower($codeSalleClasse) ;
           });
     }
     if ($codeMatiere){
        $data =array_filter($data, function($note) use ($codeMatiere) {
           return 
           strtolower($note->codeMatiere) == strtolower($codeMatiere) ;
           });
     }
     if ($codeEvaluation){
        $data =array_filter($data, function($note) use ($codeEvaluation) {
           return 
           $note->codeEvaluation == $codeEvaluation ;
           });
     }
      if ($date){
        $data =array_filter($data, function($note) use ($date) {
           return 
           $note->dateExamen == $date ;
           });
     }


       if($search){
           $data =array_filter($data, function($note) use ($search) {
               return str_contains($note->codeExamen, $search) ;});
       }
       
       $data=array_reduce($data, function($a,$b) use ($admin) {
           $new="<tr>
            <td>".$b->codeExamen."</td>
            <td>".$b->codeSalleClasse."</td>
            <td>".$b->codeMatiere."</td>
            <td>".$b->codeEvaluation."</td>
            <td>".$b->dateExamen."</td>
            <td>";
            $new .= "<div class='center'>";
            $new .= "<a href='?p=note/examen/".$b->codeExamen."'><i class='fa fa-list'></i></a>";
            if($admin){
                $new .= "<a class='show' title='importer les notes' href='?p=note/formulaire/".$b->codeExamen."'><i class='fa fa-file'></i></a>";
                $new .= "<a class='addnote' title='Ajouter plusieurs notes' href='?p=note/addAll/".$b->codeExamen."'><i class='fa fa-layer-group text-success'></i></a>";
                $new .= "<a class='add' title='Ajouter des notes' data-code='".$b->codeExamen."'><i class='fa fa-plus text-success'></i></a>";
                $new .= "<a class='edit' title='Editer' data-code=".$b->codeExamen.">";
                $new .= "<i class='fa fa-edit text-primary'></i></a>";
                $new .= "<a class='delete' title='Supprimer' data-code=".$b->codeExamen.">";
                $new .= "<i class='fa fa-trash text-danger'></i></a>";
            }
            $new .= " </div></td></tr>";
            return $a.$new;
        },"");
        $this->response($data);
    }

    

    public function examen($code)
    {
        $data = $this->examenRepository->findOne($code);
        echo json_encode($data);

    }
     public function classe($codeSalleClasse)
    {
        $data = $this->examenRepository->findAllByClasse($codeSalleClasse);
        echo json_encode($data);

    }
     public function matiere($matiere,$annee)
    {
        $data = $this->examenRepository->findAllByMatiereAndAnnee($matiere,$annee);
        echo json_encode($data);

    } 

    public function insert(){
        try {
            
            extract($_REQUEST);
            $codeExamen=$codeSalleClasse.$codeClasseMatiere.$codeEvaluation;
            $res = $this->examenRepository->insert($codeExamen,$codeClasseMatiere,$codeSalleClasse,$codeEvaluation,$dateExamen,$heureDebutExamen,$heureFinExamen,$statutExamen);
            if ($res) {
                $data=$this->examenRepository->findOne($codeExamen);
                $this->response([
                    "data" => $data,
                    'response' => "ok",
                    'message' => "L'examens a ete ajoutee",
                    'status' => 1
                ]);
            }else{
                $this->response([
                    'response' => "error",
                    'message' => "L'examens n'a pas ete ajoutee",
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
    public function update($oldCode){
        try {
            extract($_REQUEST);
            $newCodeExamen=$codeExamen;
            $res = $this->examenRepository->update($oldCode,$newCodeExamen, $codeClasseMatiere, $codeSalleClasse, $codeEvaluation, $dateExamen, $heureDebutExamen, $heureFinExamen, $statutExamen);
            if ($res) {
                $data=$this->examenRepository->findOne($newCodeExamen);
                $this->response([
                    "data" => $data,
                    'response' => "ok",
                    'message' => "L'examens a ete modifiee",
                    'status' => 1
                ]);
            }else{
                $this->response([
                    'response' => "error",
                    'message' => "L'examens n'a pas ete modifiee",
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
    public function delete($code){
        try {
            $res = $this->examenRepository->delete($code);
            if ($res) {
                $this->response([
                    'response' => "ok",
                    'message' => "L'examens a ete supprimee",
                    'status' => 1
                ]);
            }else{
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

    public function form($code=null){
        $mt=$_GET['matiere'] ?? null;
        $cl=$_GET['classe'] ?? null;
        $examen = new \stdClass();
        if ($code) {
            $examen = $this->examenRepository->findOne($code);
        }
        $salleclasseRepository = new SalleClasseRepository();
        $matiereRepository = new ClasseMatiereRepository();
        $evaluationRepository = new EvaluationRepository();
       
        $salleClasse=$salleclasseRepository->findOneByCode($examen->codeSalleClasse??$cl);
        $salleclasses =$salleClasse ? [$salleClasse] : [];
        $salleclasses=array_map(function ($salleClasse) {
            $salleClasse->libelleSalleClasse=$salleClasse->pseudoSalleClasse;
            return $salleClasse;
        }, $salleclasses);
        $classeHtml=htmlService::options($salleclasses, 'codeSalleClasse', 'libelleSalleClasse', $examen->codeSalleClasse ?? null,[],!empty($cl));
        $matieres=$matiereRepository->findByClasse($examen->codeClasse??$salleClasse->codeClasse) ?? [];
        $matiereHtml=htmlService::options($matieres, 'codeClasseMatiere', 'nomMatiere', $examen->codeClasseMatiere ?? null,[],!empty($mt));
        $evaluations=$evaluationRepository->findAll();
        $evaluationHtml=htmlService::options($evaluations, 'codeEvaluation', 'nomEvaluation', $examen->codeEvaluation ?? null);
        $statut=[
            [
                'value' => 1,
                'label' => 'ouvert'
            ],
            [
                'value' => 0,
                'label' => 'ferme'
            ],
        ];
        $statutHtml=htmlService::options($statut,'value','label', $examen->statutExamen ?? null);
        $html='<form action="" class="form">
            <input type="hidden" name="edit" value="'.$code.'">
            <input type="hidden" name="codeExamen" value="'.$code.'">
            <div class="form-group">
                <label for="codeSalleClasse">Classe</label>
                <select name="codeSalleClasse" id="codeSalleClasse">
                    '.$classeHtml.'
                </select>
            </div>
             <div class="form-group">
                <label for="codeClasseMatiere">Matiere</label>
                <select name="codeClasseMatiere" id="codeClasseMatiere">
                    '.$matiereHtml.'
                </select>
            </div>
             <div class="form-group">
                <label for="codeEvaluation">Evaluation</label>
                <select name="codeEvaluation" id="codeEvaluation">
                    '.$evaluationHtml.'
                </select>
            </div>
             <div class="form-group">
                <label for="dateExamen">Date</label>
                <input type="date" name="dateExamen" id="dateExamen" value="'.($examen->dateExamen??'').'">
            </div>
            <div class="form-group">
                <label for="heureDebutExamen">Heure Debut</label>
                <input type="time" name="heureDebutExamen" id="heureDebutExamen" value="'.($examen->heureDebutExamen??'').'">
            </div>
            <div class="form-group">
                <label for="heureFinExamen">Heure Fin</label>
                <input type="time" name="heureFinExamen" id="heureFinExamen" value="'.($examen->heureFinExamen??'').'">
            </div>
            <div class="form-group">
                <label for="statutExamen">Statut</label>
                <select name="statutExamen" id="statutExamen">
                    '.$statutHtml.'
                </select>
            </div>
            <div class="form-action">
                <button type="reset" class="btn btn-default">Annuler</button>
                <button type="submit" class="btn btn-primary">Enregistrer</button>
            </div>
        </form>';
        $this->response($html);
    }
  
}
?>