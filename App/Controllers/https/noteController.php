<?php

namespace App\Controllers\https;

use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\ExamenRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\MatiereRepository;
use App\Models\Repositories\EvaluationRepository;
use Core\Controllers\Controller;
use PhpOffice\PhpSpreadsheet\IOFactory;


class NoteController extends Controller
{
    private $noteRepository;
    private $salleClasseRepository;
    private $matiereRepository;
    private $evaluationRepository;
    private $inscritRepository;
    private $examenRepository;
    public function __construct()
    {
        $this->noteRepository = new NoteRepository();
        $this->salleClasseRepository = new SalleClasseRepository();
        $this->matiereRepository = new MatiereRepository();
        $this->evaluationRepository = new EvaluationRepository();
        $this->examenRepository = new ExamenRepository();
        $this->inscritRepository = new inscritRepository();
    }
    public function liste()
    {
        $annee = $this->getCodeAnnee();
        $notes = $this->noteRepository->findAllByAnnee($annee);
        $classes = $this->salleClasseRepository->findAll();
        $matieres = $this->matiereRepository->findAll();
        $evaluations = $this->evaluationRepository->findAll();
        $this->render("note/liste", compact("notes", "classes", "matieres", "evaluations"));
    }

    public function examen($codeExamen)
{
    $examen = $this->examenRepository->findOne($codeExamen);
    $notes = $this->noteRepository->findAllByCodeExamen($codeExamen);
    $this->render("note/examen", compact("examen", "notes"));
}
    public function formulaire($codeExamen=null)
    {
        $cols = array_map('strtoupper', range('a', 'z'));
        $rows = range(1, 100);
        $this->render("note/formulaire", compact("cols", "rows", "codeExamen"));
    }

    public function imported()
    {
        $codeExamen = $_POST['codeExamen'];
        $numColonne = $_POST['numColonne'];
        $nomColonne = $_POST['nomColonne'];
        $noteColonne = $_POST['noteColonne'];
        $premierLigne = $_POST['premierLigne'];
        $dernierLigne = $_POST['dernierLigne'];
        $spreadsheet = IOFactory::load($_FILES['fichier']['tmp_name']);
        $worksheet = $spreadsheet->getActiveSheet();
        $data = $worksheet->toArray();

        $examen = $this->examenRepository->findOne($codeExamen);
$notes = $this->noteRepository->findAllByCodeExamen($codeExamen);
$eleves = $this->inscritRepository->findAllByClasse($examen->codeSalleClasse);
$cols = array_map('strtoupper', range('a', 'z'));
$numColonne = array_search($numColonne, $cols);
$nomColonne = array_search($nomColonne, $cols);
$noteColonne = array_search($noteColonne, $cols);
        $data = array_slice($data, $premierLigne - 1, $dernierLigne - $premierLigne + 1);
        $tab = [];

        foreach ($data as $row) {
            $num = $row[$numColonne];
            $nom = $row[$nomColonne];
            $note = $row[$noteColonne];
            $matricule = null;
            $eleve = null;
            $note2=null;
            $statut=false;
            $id=null;
            foreach ($eleves as $eleve) {
                if ($eleve->numeroInscrit == $row[$numColonne]) {
                    $matricule = $eleve->matricule;
                    $nom = $eleve->nom;
                    break;
                }
            }
            foreach ($notes as $nt) {
                if ($nt->matricule == $matricule) {
                    $note2 = $nt->note;
                    $id=$nt->idNote;
                    $statut=true;
                    break;
                }
            }
            $tab[] = ['matricule' => $matricule, 'num' => $num, 'nom' => $nom, 'note' => $note, 'note2' => $note2, 'statut' => $statut, 'id' => $id];
        }

        $data = $tab;
        $this->render("note/exported", compact("data", "codeExamen"));

    }


}





