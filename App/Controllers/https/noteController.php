<?php

namespace App\Controllers\https;

use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\MatiereRepository;
use App\Models\Repositories\EvaluationRepository;
use Core\Controllers\Controller;

class NoteController extends Controller
{
    private $noteRepository;
    private $salleClasseRepository;
    private $matiereRepository;
    private $evaluationRepository;
    public function __construct()
    {
        $this->noteRepository = new NoteRepository();
        $this->salleClasseRepository = new SalleClasseRepository();
        $this->matiereRepository = new MatiereRepository();
        $this->evaluationRepository = new EvaluationRepository();
    }
    public function liste()
    {
        $annee=$this->getCodeAnnee();
        $notes = $this->noteRepository->findAllByAnnee($annee);
        $classes=$this->salleClasseRepository->findAll();
        $matieres=$this->matiereRepository->findAll();
        $evaluations=$this->evaluationRepository->findAll();
        $this->render("note/liste", compact("notes","classes","matieres","evaluations"));
    }
}
