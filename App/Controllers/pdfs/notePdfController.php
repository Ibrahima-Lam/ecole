<?php
namespace App\Controllers\pdfs;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Controllers\src\pdfController;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\ExamenRepository;
use App\Services\src\AnneeScolaireService;
use Core\src\Request;
use Src\Factories\NoteParamettreFactory;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\inscritRepository;
use App\Services\Providers\ClasseResultatProvider;
use Src\Factories\ReleveParamettreFactory;

class NotePdfController extends pdfController
{
    private NoteRepository $noteRepository;
    private ExamenRepository $examenRepository;
    public function __construct(private AnneeScolaireService $anneeScolaireService)
    {
        $this->noteRepository = new NoteRepository();
        $this->examenRepository = new ExamenRepository();
    }

    public function examen($codeExamen)
    {
        $noteParam = NoteParamettreFactory::getNoteParam();
        $examen = $this->examenRepository->findOne($codeExamen);
        $notes = $this->noteRepository->findAllByCodeExamen($codeExamen);
        if ($noteParam->sort == 'note') {
            usort($notes, function ($a, $b) {
                return $a->note - $b->note;
            });
        }
        if ($noteParam->order == 'DESC') {
            $notes = array_reverse($notes);
        }
        $this->renderPDF("pdf/notes", ["notes" => $notes, "examen" => $examen, "noteParam" => $noteParam]);
    }




    public function releve(Request $request,$codeSalleClasse, $codeMatiere)
    {
        $model = new SalleClasseRepository();
        $salleClasse = $model->findOneByCode($codeSalleClasse);
        $trimestre=$request->get('trimestre')??3;
        $model1 = new inscritRepository();
        $inscrits = $model1->findAllByClasse($codeSalleClasse);
        $model2 = new ClasseMatiereRepository();
        $matiere = $model2->findOneByClasseAndMatiereAndAnnee($salleClasse->codeClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());
        $notes = $this->noteRepository->findAllByClasseAndMatiere($codeSalleClasse,$codeMatiere);
        $model3 = new ExamenRepository();
        $examens = $model3->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
        usort($examens, function ($a, $b) {
            if ($a->typeEvaluation != $b->typeEvaluation) {
                return $a->typeEvaluation == 'composition' ? 1 : -1;
            }
            return $a->indiceEvaluation - $b->indiceEvaluation;
        });
        $data = new ClasseResultatProvider($codeSalleClasse,$codeMatiere, $this->anneeScolaireService->getCodeAnnee());
        $paramettre =ReleveParamettreFactory::getReleveParam();
        $pseudo=$salleClasse->pseudoSalleClasse;
        $this->renderPDF("pdf/releve", compact("data", "paramettre", "salleClasse","trimestre"),['name'=>"releve_{$pseudo}_{$codeMatiere}.pdf"]);
    }
}