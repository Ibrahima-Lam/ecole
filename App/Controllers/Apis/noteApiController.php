<?php

namespace App\Controllers\Apis;

use Core\Controllers\Controller;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\ExamenRepository;
use Core\Services\Sql\SqlErreurMessage;
use Core\Services\html\htmlService;

class NoteApiController extends Controller
{
    private NoteRepository $noteRepository;
    private ExamenRepository $examenRepository;

    public function __construct()
    {
        $this->noteRepository = new NoteRepository();
        $this->examenRepository = new ExamenRepository();
    }

    public function liste()
    {
        $data = $this->noteRepository->findAll();
        $this->response($data);
    }

    public function note($id){
        $note = $this->noteRepository->findOneById($id);
        $this->response($note);
    }
    

    public function insert(){
        try {
            extract($_REQUEST);
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

    public function form($id=null){
        $annee = $this->getCodeAnnee();
        $matricule=$_GET['matricule'] ?? null;
        $codeExamen=$_GET['codeExamen'] ?? null;
        $note=null;
        $noteElement = $this->noteRepository->findOneById($id);
        if ($noteElement) {
            $matricule=$noteElement->matricule;
            $codeExamen=$noteElement->codeExamen;
            $note=$noteElement->note;
        }
       $examens = $this->examenRepository->findAllByAnnee($annee);
       $examens=array_map(function($examen){
           $examen->label=$examen->codeClasse.$examen->indiceSalleClasse." - ". $examen->codeMatiere." - ". $examen->nomEvaluation;
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
                <input type='number' id='note' name='note' class='form-control' value='{$note}' placeholder='Note'>
            </div>
            <div class='form-action'>
                <button type='submit' class='btn btn-primary'>Enregistrer</button>
            </div>
        </form>";
        return $this->response($html);
    }



}
