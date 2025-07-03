<?php

namespace App\Controllers\Apis;

use App\Repositories\ClasseMatiereRepository;
use App\Repositories\EvaluationRepository;
use App\Repositories\SalleClasseRepository;
use App\Services\storages\UserStorage;
use App\Controllers\src\ApiController;
use App\Repositories\ExamenRepository;
use App\Services\src\AnneeScolaireService;
use Core\Services\html\htmlService;
use Core\Services\Sql\SqlErreurMessage;

class ExamenApiController extends ApiController
{
    private $examenRepository;
    public function __construct( private AnneeScolaireService $anneeScolaireService)
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
        $statut=$_GET['statut'] ?? null;
        $annee=$this->getCodeAnnee();
        $data =$filter_annee ? $this->examenRepository->findAllByAnnee($annee) : $this->examenRepository->findAll();
        $admin=UserStorage::isAdmin();
     if ($codeSalleClasse){
        $data =array_filter($data, function($note) use ($codeSalleClasse) {
           return strtolower($note->codeSalleClasse) == strtolower($codeSalleClasse) ;
           });
     }
     if ($codeMatiere){
        $data =array_filter($data, function($note) use ($codeMatiere) {
           return   strtolower($note->codeMatiere) == strtolower($codeMatiere) ;
           });
     }
     if ($codeEvaluation){
        $data =array_filter($data, function($note) use ($codeEvaluation) {
           return $note->codeEvaluation == $codeEvaluation ;
           });
     }
      if ($date){
        $data =array_filter($data, function($note) use ($date) {
           return $note->dateExamen == $date ;
           });
     }
     if ($statut!=null){
        $data =array_filter($data, function($note) use ($statut) {
           return $note->statutExamen == $statut ;
           });
     }

       if($search){
           $data =array_filter($data, function($note) use ($search) {
               return str_contains($note->codeExamen, $search) ;});
       }
       
       $data=array_reduce($data, function($a,$b) use ($admin) {
       $class="examen-row ";
        $class.=$b->statutExamen==1?'':'text-warning';
        $new="<tr class=".$class." data-code=".$b->codeExamen.">
            <td>".$b->codeExamen."</td>
            <td>".$b->pseudoSalleClasse."</td>
            <td>".$b->codeMatiere."</td>
            <td>".$b->codeEvaluation."</td>
            <td>".$b->dateExamen."</td>
            <td>"._($b->statutExamen==1?"Ouvert":"Fermer")."</td>
            <td>".$b->trimestreExamen."</td>
            <td>";
            $new .= "<div class='center'>";
            $new .= "<a href='?p=examen/details/".$b->codeExamen."'><i class='fa fa-list'></i></a>";
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
            $codeExamen="{$codeSalleClasse}0{$codeClasseMatiere}0{$codeEvaluation}";
            $res = $this->examenRepository->insert($codeExamen,$codeClasseMatiere,$codeSalleClasse,$codeEvaluation,$dateExamen,$heureDebutExamen,$heureFinExamen,$statutExamen,$trimestreExamen);
            if ($res) {
                $data=$this->examenRepository->findOne($codeExamen);
                $this->response([
                    "data" => $data,
                    'response' => "ok",
                    'message' => __("L'examen a été ajouté"),
                    'status' => 1
                ]);
            }else{
                $this->response([
                    'response' => "error",
                    'message' => __("L'examens n'a pas ete ajoutee"),
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
            $res = $this->examenRepository->update($oldCode, $dateExamen, $heureDebutExamen, $heureFinExamen, $statutExamen,$trimestreExamen);
            if ($res) {
                $data=$this->examenRepository->findOne($oldCode);
                $this->response([
                    "data" => $data,
                    'response' => "ok",
                    'message' => __("L'examen a été modifié"),
                    'status' => 1
                ]);
            }else{
                $this->response([
                    'response' => "error",
                    'message' => __("L'examens n'a pas été modifié"),
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
                    'message' => __("L'examens a été supprimé"),
                    'status' => 1
                ]);
            }else{
                $this->response([
                    'response' => "error",
                    'message' => __("L'examens n'a pas été supprimé"),
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
       
        $salleClasse=$salleclasseRepository->findOneByCode($examen->codeSalleClasse??$cl??'');
        $salleclasses =$salleClasse ? [$salleClasse] : [];
        if(!$salleclasses){
            $salleclasses=$salleclasseRepository->findAll();
        }
        $salleclasses=array_map(function ($salleClasse) {
            $salleClasse->libelleSalleClasse=$salleClasse->pseudoSalleClasse;
            return $salleClasse;
        }, $salleclasses);
        $classeHtml=htmlService::options($salleclasses, 'codeSalleClasse', 'libelleSalleClasse', $examen->codeSalleClasse ?? null,[],!empty($cl));
        $matieres=$matiereRepository->findAllByClasseAndAnnee($examen->codeClasse??$salleClasse?->codeClasse??'',$this->anneeScolaireService->getCodeAnnee()) ?? [];
        if(!$matieres){
            $matieres=$matiereRepository->findAllByAnnee($this->anneeScolaireService->getCodeAnnee());
        }
        $matieres=array_map(function ($matiere) {
            $matiere->libelleMatiere=$matiere->codeMatiere." - ".$matiere->codeClasse;
            return $matiere;
        }, $matieres);
        $matiereHtml=htmlService::options($matieres, 'codeClasseMatiere', 'libelleMatiere', $examen->codeClasseMatiere ?? null,[],!empty($mt));
     
        $evaluations=$evaluationRepository->findAll();
        $evaluationHtml=htmlService::options($evaluations, 'codeEvaluation', 'nomEvaluation', $examen->codeEvaluation ?? null);
        $statut=[
            [
                'value' => 1,
                'label' =>__( 'ouvert')
            ],
            [
                'value' => 0,
                'label' =>__( 'fermé')
            ],
        ];
        $statutHtml=htmlService::options($statut,'value','label', $examen->statutExamen ?? null);
        $trimestre=[
            [
                'value' => 1,
                'label' => '1'
            ],
            [
                'value' => 2,
                'label' => '2'
            ],
            [
                'value' => 3,
                'label' => '3'
            ],
        ];
        $trimestreHtml=htmlService::options($trimestre,'value','label', $examen->trimestreExamen ?? 1);
        $html='<form action="" class="form">
            <input type="hidden" name="edit" value="'.$code.'">
            <input type="hidden" name="codeExamen" value="'.$code.'">';
            $html.=!$code?'<div class="form-group">
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
            </div>':'';
           $html.=' <div class="form-group">
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
            <div class="form-group">
                <label for="trimestreExamen">Trimestre</label>
                <select name="trimestreExamen" id="trimestreExamen">
                    '.$trimestreHtml.'
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