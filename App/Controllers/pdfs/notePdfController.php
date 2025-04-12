<?php
namespace App\Controllers\pdfs;

use Core\Controllers\Controller;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\ExamenRepository;
use Src\Factories\NoteParamettreFactory;
use Src\Paramettres\NoteParamettre;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\MatiereRepository;
use App\Services\Providers\ClasseResultatProvider;

class NotePdfController extends Controller
{
    private NoteRepository $noteRepository;
    private ExamenRepository $examenRepository;

    public function __construct()
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




    public function releve($codeSalleClasse, $codeMatiere)
    {
        $model = new SalleClasseRepository();
        $salleClasse = $model->findOneByCode($codeSalleClasse);

        $model1 = new inscritRepository();
        $inscrits = $model1->findAllByClasse($codeSalleClasse);
        $model2 = new MatiereRepository();
        $matiere = $model2->findOne($codeMatiere);
        $notes = $this->noteRepository->findAllByClasse($codeSalleClasse);
        $model3 = new ExamenRepository();
        $examens = $model3->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
        usort($examens, function ($a, $b) {
            if ($a->typeEvaluation != $b->typeEvaluation) {
                return $a->typeEvaluation == 'composition' ? 1 : -1;
            }
            return $a->indiceEvaluation - $b->indiceEvaluation;
        });
        $data = new ClasseResultatProvider($matiere, $inscrits, $notes, $examens);
        $paramettre =NoteParamettreFactory::getNoteParam();
        $this->renderPDF("pdf/releve", compact("data", "paramettre", "salleClasse"));
    }
}