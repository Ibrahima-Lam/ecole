<?php

namespace App\Controllers\Apis;

use Core\Controllers\Controller;
use App\Models\Repositories\NoteRepository;
use Core\Services\Sql\SqlErreurMessage;

class NoteApiController extends Controller
{
    private NoteRepository $noteRepository;

    public function __construct()
    {
        $this->noteRepository = new NoteRepository();
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



}
