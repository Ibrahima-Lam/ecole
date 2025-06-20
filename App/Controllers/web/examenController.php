<?php

namespace App\Controllers\web;
use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Services\Factories\ExamenFactory;
use App\Controllers\src\WebController;
use App\Models\Repositories\ExamenRepository;
use App\Models\Repositories\MatiereRepository;
use App\Models\Repositories\EvaluationRepository;
 class ExamenController extends WebController 
{
    private $examenRepository;
    private $salleClasseRepository;
    private $matiereRepository;
    private $evaluationRepository;
    public function __construct()
    {
        $this->examenRepository = new ExamenRepository();
        $this->salleClasseRepository = new SalleClasseRepository();
        $this->matiereRepository = new MatiereRepository();
        $this->evaluationRepository = new EvaluationRepository();
    }

    public function liste():void
    {
        $annee=$this->getCodeAnnee();
        $data = $this->examenRepository->findAllByAnnee($annee);
        $classes=$this->salleClasseRepository->findAll();
        $matieres=$this->matiereRepository->findAll();
        $evaluations=$this->evaluationRepository->findAll();
        $this->render("examen/liste", ["data" => $data,"classes"=>$classes,"matieres"=>$matieres,"evaluations"=>$evaluations]);
    }
    public function classe($codeSalleClasse):void
    {
       $data=ExamenFactory::getExamen($codeSalleClasse);
       $classe=$data->salleClasse;
        $this->render("examen/classe", ["data" => $data,"classe"=> $classe]);
    }

    public function forms($codeSalleClasse):void{
    $model = new SalleClasseRepository();
    $salleClasse = $model->findOneByCode($codeSalleClasse);
    $model = new ClasseMatiereRepository();
    $matieres = $model->findByClasse($salleClasse->codeClasse);
    $model=new EvaluationRepository();
    $evaluations = $model->findAll();
    $this->render("examen/forms", compact('salleClasse', 'matieres', 'evaluations'));
}
}