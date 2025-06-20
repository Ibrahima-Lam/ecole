<?php
namespace App\Controllers\pdfs;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Controllers\src\pdfController;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\ExamenRepository;
use Src\Factories\NoteParamettreFactory;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\MatiereRepository;
use App\Services\Providers\ClasseResultatProvider;
use Src\Factories\ReleveParamettreFactory;

class NotePdfController extends pdfController
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
        $model2 = new ClasseMatiereRepository();
        $matiere = $model2->findOneByClasseAndMatiere($salleClasse->codeClasse,$codeMatiere);
        $notes = $this->noteRepository->findAllByClasseAndMatiere($codeSalleClasse,$codeMatiere);
        $model3 = new ExamenRepository();
        $examens = $model3->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
        usort($examens, function ($a, $b) {
            if ($a->typeEvaluation != $b->typeEvaluation) {
                return $a->typeEvaluation == 'composition' ? 1 : -1;
            }
            return $a->indiceEvaluation - $b->indiceEvaluation;
        });
        $data = new ClasseResultatProvider($matiere, $inscrits, $notes, $examens);
        $paramettre =ReleveParamettreFactory::getReleveParam();
        $pseudo=$salleClasse->pseudoSalleClasse;
        $this->renderPDF("pdf/releve", compact("data", "paramettre", "salleClasse"),['name'=>"releve_{$pseudo}_{$codeMatiere}.pdf"]);
    }
}