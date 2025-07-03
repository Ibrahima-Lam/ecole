<?php

namespace App\Controllers\web\administration;
use App\Repositories\ClasseMatiereRepository;
use App\Repositories\NoteRepository;
use App\Repositories\SalleClasseRepository;
use App\Services\storages\ExamenFactory;
use App\Controllers\src\WebController;
use App\Repositories\ExamenRepository;
use App\Repositories\MatiereRepository;
use App\Repositories\EvaluationRepository;
use App\Services\src\AnneeScolaireService;
use App\Services\src\ExamenService;
use Src\Factories\NoteParamettreFactory;
 class ExamenController extends WebController 
{
    private $examenRepository;
    private $salleClasseRepository;
    private $matiereRepository;
    private $evaluationRepository;
    private $noteRepository;
    public function __construct(private AnneeScolaireService $anneeScolaireService,private ExamenService $examenService)
    {
        parent::__construct();
        $this->examenRepository = new ExamenRepository();
        $this->salleClasseRepository = new SalleClasseRepository();
        $this->matiereRepository = new MatiereRepository();
        $this->evaluationRepository = new EvaluationRepository();
        $this->noteRepository = new NoteRepository();
    }

    public function liste():void
    {
        $annee=$this->anneeScolaireService->getCodeAnnee();
        $data = $this->examenRepository->findAllByAnnee($annee);
        $classes=$this->salleClasseRepository->findAll();
        $matieres=$this->matiereRepository->findAll();
        $evaluations=$this->evaluationRepository->findAll();
        $this->render("examen/liste", ["data" => $data,"classes"=>$classes,"matieres"=>$matieres,"evaluations"=>$evaluations]);
    }
    public function classe($codeSalleClasse):void
    {
       $data=$this->examenService->getExamenEntity($codeSalleClasse);
       $classe=$data->salleClasse;
        $this->render("examen/classe", ["data" => $data,"classe"=> $classe]);
    }

    public function forms($codeSalleClasse):void{
    $model = new SalleClasseRepository();
    $salleClasse = $model->findOneByCode($codeSalleClasse);
    $model = new ClasseMatiereRepository();
    $matieres = $model->findAllByClasseAndAnnee($salleClasse->codeClasse,$this->anneeScolaireService->getCodeAnnee());
    $model=new EvaluationRepository();
    $evaluations = $model->findAll();
    $this->render("examen/forms", compact('salleClasse', 'matieres', 'evaluations'));
}
public function details($codeExamen):void{
    $examen=$this->examenService->getExamen($codeExamen);
    $notes = $this->noteRepository->findAllByCodeExamen($codeExamen);
    $noteParam = NoteParamettreFactory::getNoteParam();
    $allExamen=$this->examenService->findAllByClasseAndMatiere($examen->codeSalleClasse,$examen->codeMatiere);
    usort($notes, function ($a, $b)use($noteParam) {
        return $a->{$noteParam->sort} - $b->{$noteParam->sort};
    });

    if ($noteParam->order == 'DESC') {
        $notes = array_reverse($notes);
    }
    $this->render("examen/details", compact('examen','notes','noteParam','allExamen'));
}

}