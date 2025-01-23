<?php

namespace App\Controllers\https;
use App\Models\Repositories\SalleClasseRepository;
use App\Services\Factories\ExamenFactory;
use Core\Controllers\Controller;
use App\Models\Repositories\ExamenRepository;
 class ExamenController extends Controller 
{
    private $examenRepository;
    public function __construct()
    {
        $this->examenRepository = new ExamenRepository();
    }

    public function liste():void
    {
        $annee=$this->getCodeAnnee();
        $data = $this->examenRepository->findAllByAnnee($annee);
        $this->render("examen/liste", ["data" => $data]);
    }
    public function classe($codeSalleClasse):void
    {
       $data=ExamenFactory::getExamen($codeSalleClasse);
       $classe=$data->salleClasse;
        $this->render("examen/liste", ["data" => $data,"classe"=> $classe]);
    }
}

?>