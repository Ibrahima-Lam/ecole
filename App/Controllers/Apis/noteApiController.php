<?php

namespace App\Controllers\Apis;

use App\Services\factories\UserFactory;
use Core\Controllers\Controller;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\ExamenRepository;
use Core\Services\Sql\SqlErreurMessage;
use Core\Services\html\htmlService;
use App\Models\Repositories\inscritRepository;
use Src\Paramettres\NoteParamettre;
use Src\Factories\NoteParamettreFactory;

class NoteApiController extends Controller
{
    private NoteRepository $noteRepository;
    private ExamenRepository $examenRepository;
    private inscritRepository $inscritRepository;

    public function __construct()
    {
        $this->noteRepository = new NoteRepository();
        $this->examenRepository = new ExamenRepository();
        $this->inscritRepository = new inscritRepository();
    }

    public function liste($filter_annee=false)
    {
        $annee=$this->getCodeAnnee();
        $data =$filter_annee ? $this->noteRepository->findAllByAnnee($annee) : $this->noteRepository->findAll();
        $this->response($data);
    }
     public function htmlListe($filter_annee=true)
    {
        $search=$_GET['search'] ?? null;
        $codeSalleClasse=$_GET['classe'] ?? null;
        $codeMatiere=$_GET['matiere'] ?? null;
        $codeEvaluation=$_GET['evaluation'] ?? null;
        $annee=$this->getCodeAnnee();
        $data =$filter_annee ? $this->noteRepository->findAllByAnnee($annee) : $this->noteRepository->findAll();
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


       if($search){
           $data =array_filter($data, function($note) use ($search) {
               return str_contains($note->matricule, $search) || 
               str_contains(strtolower($note->nni), strtolower($search)) || 
               str_contains(strtolower($note->codeExamen), strtolower($search));
           });
       }
       
       $data=array_reduce($data, function($a,$b) use ($admin) {
           $new="<tr>
            <td>".$b->matricule."</td>
            <td>".$b->nom."</td>
            <td>".$b->codeExamen."</td>
            <td>".$b->note."</td>
            <td>".$b->dateExamen."</td>
            <td>".$b->createdAt."</td>
            <td>".$b->updatedAt."</td>
            <td>";
            if($admin){
                  $new .= "<div class='center'> <button class=\"btn circle edit\" data-id=".$b->idNote.">
                       <i class=\"fa fa-edit text-primary\"></i>
                   </button>
                   <button class=\"btn  circle delete\" data-id=".$b->idNote.">
                       <i class=\"fa fa-trash text-danger\"></i>
                   </button></div>";
             }
          $new .= " </td></tr>";
           return $a.$new;
       },"");
        $this->response($data);
    }

    public function note($id){
        $note = $this->noteRepository->findOneById($id);
        $this->response($note);
    }
    

    public function insert(){
        try {
            extract($_REQUEST);
            $note=str_replace(',', '.', $note);
            $res = $this->noteRepository->insert($matricule, $codeExamen, $note);
            if($res){
                $data= $this->noteRepository->findLastInserted();
                $this->response([
                    "status" =>1,
                    "message" => "Note ajoutée avec succès",
                    "data" => $data,
                    'response' => "ok"
                ]);
            }else{
                $this->response([
                    "status" => 0,
                    "message" => "Erreur lors de l'ajout de la note",
                    'response' => "ko"
                ]);
            }
        } catch (\PDOException $th) {
            $this->response([
                "status" => 0,
                "message" => SQLErreurMessage::getMessage($th->errorInfo[1]),
                "error" => $th->getMessage(),
                'response' => "error"
            ]);
        }
    }

    public function update($id){
        try {
            extract($_REQUEST);
            $note=str_replace(',', '.', $note);
            $res = $this->noteRepository->update($id, $note);
            if($res){
                $data= $this->noteRepository->findOneById($id);
                $this->response([
                    "status" =>1,
                    "message" => "Note modifiée avec succès",
                    "data" => $data,
                    'response' => "ok"
                ]);
            }else{
                $this->response([
                    "status" => 0,
                    "message" => "Erreur lors de la modification de la note",
                    'response' => "ko"
                ]);
            }
        } catch (\PDOException $th) {
            $this->response([
                "status" => 0,
                "message" => SQLErreurMessage::getMessage($th->errorInfo[1]),
                "error" => $th->getMessage(),
                'response' => "error"
            ]);
        }
    }

    public function delete($id){
        try {
            $res = $this->noteRepository->delete($id);
            if($res){
                $this->response([
                    "status" =>1,
                    "message" => "Note supprimée avec succès",
                    'response' => "ok"
                ]);
            }else{
                $this->response([
                    "status" => 0,
                    "message" => "Erreur lors de la suppression de la note",
                    'response' => "ko"
                ]);
            }
        } catch (\PDOException $th) {
            $this->response([
                "status" => 0,
                "message" => SQLErreurMessage::getMessage($th->errorInfo[1]),
                "error" => $th->getMessage(),
                'response' => "error"
            ]);
        }
    }

    public function changeParametre(){
        NoteParamettreFactory::setNoteParam($_REQUEST);
        $this->response(
            NoteParamettreFactory::getNoteParam()->getArray()
        );
    }

    public function parametre(){
        $this->response(
            NoteParamettreFactory::getNoteParam()->getArray()
        );
    }
    
    public function form($id=null){
        $annee = $this->getCodeAnnee();
        $matricule=$_GET['matricule'] ?? null;
        $codeExamen=$_GET['codeExamen'] ?? null;
        $idInscrit=$_GET['idInscrit'] ?? null;
        $codeSalleClasse=$_GET['codeSalleClasse'] ?? null;
        $codeMatiere=$_GET['codeMatiere'] ?? null;
        $note=null;
        $inscrit = null;
        $noteElement = $this->noteRepository->findOneById($id);
        $notes = $this->noteRepository->findAllByMatriculeAndAnnee($matricule, $annee);
        if ($noteElement) {
            $matricule=$noteElement->matricule;
            $codeExamen=$noteElement->codeExamen;
            $note=$noteElement->note;
        }elseif($idInscrit){
            $inscrit = $this->inscritRepository->findOneById($idInscrit);
            if ($inscrit) {
                $matricule=$inscrit->matricule;
            }
        }elseif($matricule){
            $inscrit = $this->inscritRepository->findOneByMatriculeAndAnnee($matricule, $annee);
            if ($inscrit) {
                $idInscrit=$inscrit->idInscrit;
            }
        }
       $examens = $this->examenRepository->findAllByAnnee($annee);
       if($inscrit){
           $examens = array_filter($examens, function($examen) use ($inscrit) {
               return $examen->codeSalleClasse == $inscrit->codeSalleClasse;
           });
       }
       if($codeSalleClasse){
           $examens = array_filter($examens, function($examen) use ($codeSalleClasse) {
               return $examen->codeSalleClasse == $codeSalleClasse;
           });
       }
       if($codeMatiere){
           $examens = array_filter($examens, function($examen) use ($codeMatiere) {
               return $examen->codeMatiere == $codeMatiere;
           });
       }
       if (sizeof($notes) > 0&&$codeMatiere) {
        $matieres=array_map(function($note) {
            return $note->codeMatiere;
        }, $notes);
        $matieres = array_unique($matieres);
        $evaluations=array_map(function($note) {
            return $note->codeEvaluation;
        }, $notes);
        $evaluations = array_unique($evaluations);
           $examens = array_filter($examens, function($examen) use ($matieres, $evaluations) {
               return !in_array($examen->codeMatiere, $matieres) || !in_array($examen->codeEvaluation, $evaluations);
           });
       }


       $examens=array_map(function($examen){
           $examen->label=$examen->pseudoSalleClasse." - ". $examen->codeMatiere." - ". $examen->nomEvaluation;
           return $examen;
       }, $examens);
       $examensHtml = htmlService::options($examens, 'codeExamen', 'label', $codeExamen);
      $html = "<form id='form'>
      <input type='hidden' name='edit' value='{$id}'>
      <input type='hidden' name='id' value='{$id}'>
            <div class='form-group'>
                <label for='matricule'>Matricule</label>
                <input type='text' id='matricule' name='matricule' class='form-control' value='{$matricule}' placeholder='Matricule'>
            </div>
            <div class='form-group'>
                <label for='codeExamen'>Code Examen</label>
                <select name='codeExamen' id='codeExamen' class='form-control'>
                    '.$examensHtml.'
                </select>
            </div>
            <div class='form-group'>
                <label for='note'>Note</label>
                <input type='text' id='note' name='note' class='form-control' value='$note' placeholder='Note'>
            </div>
            <div class='form-action'>
                <button type='submit' class='btn btn-primary'>Enregistrer</button>
            </div>
        </form>";
        return $this->response($html);
    }



}
