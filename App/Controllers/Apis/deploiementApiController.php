<?php
namespace App\Controllers\Apis;
use App\Repositories\inscritRepository;
use App\Repositories\SalleClasseRepository;
use App\Repositories\classeMatiereRepository;
use App\Repositories\MatiereRepository;
use App\Repositories\examenRepository;
use App\Repositories\noteRepository;
use App\Controllers\src\ApiController;

class deploiementApiController extends ApiController
{
    public function inscrit($annee=null)
    {
       $ripos=new inscritRepository();
       $data=$annee?$ripos->findAllByAnnee($annee,"numeroInscrit"): $ripos->findAll();
       $data=array_map(function($inscrit){
           return [
               "matricule"=>$inscrit->matricule,
               "nom"=>$inscrit->nom,
               "isme"=>$inscrit->isme,
               "nni"=>$inscrit->nni,
               "numeroInscrit"=>$inscrit->numeroInscrit,
               "codeSalleClasse"=>$inscrit->codeSalleClasse,
               "indiceSalleClasse"=>$inscrit->indiceSalleClasse,
               "typeInscrit"=>$inscrit->typeInscrit,
           ];
       },$data);
       $this->response($data);
    }

    public function salleClasse($annee=null)
    {
       $ripos=new SalleClasseRepository();
       $data=$annee?$ripos->findAll($annee):$ripos->findAll();
       
       $this->response($data);
    }
    public function matiere()
    {
       $ripos=new MatiereRepository();
       $data=$ripos->findAll();
      
       $this->response($data);
    } public function classeMatiere()
    {
       $ripos=new classeMatiereRepository();
       $data=$ripos->findAll();
      
       $this->response($data);
    }
    public function examen(){
        $ripos=new examenRepository();
        $data=$ripos->findAll();
        $data=array_map(function($examen){
            return [
                "codeExamen"=>$examen->codeExamen,
                "codeMatiere"=>$examen->codeMatiere,
                "coefficientClasseMatiere"=>$examen->coefficientClasseMatiere,
                "codeSalleClasse"=>$examen->codeSalleClasse,
                "codeAnnee"=>$examen->codeAnnee,
                "codeEvaluation"=>$examen->codeEvaluation,
                "typeEvaluation"=>$examen->typeEvaluation,
                
            ];
        },$data);
        $this->response($data);

    }
    public function note(){
        $ripos=new noteRepository();
        $data=$ripos->findAll();
        $data=array_map(function($note){
            return [
                "idNote"=>$note->idNote,
                "codeExamen"=>$note->codeExamen,
                "matricule"=>$note->matricule,
                "nom"=>$note->nom,
                "isme"=>$note->isme,
                "nni"=>$note->nni,
                "codeEvaluation"=>$note->codeEvaluation,
                "note"=>$note->note,
                "codeSalleClasse"=>$note->codeSalleClasse,
                "indiceEvaluation"=>$note->indiceEvaluation,
                "typeEvaluation"=>$note->typeEvaluation,
                "codeAnnee"=>$note->codeAnnee,
                "codeMatiere"=>$note->codeMatiere,
                "coefficientClasseMatiere"=>$note->coefficientClasseMatiere,
            ];
        },$data);
        $this->response($data);

    }
}