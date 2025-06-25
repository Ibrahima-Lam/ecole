<?php

namespace App\Controllers\web;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\ExamenRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\MatiereRepository;
use App\Models\Repositories\EvaluationRepository;
use App\Services\Providers\ClasseResultatProvider;
use App\Controllers\src\WebController;
use App\Services\src\AnneeScolaireService;
use PhpOffice\PhpSpreadsheet\IOFactory;
use Src\Factories\NoteParamettreFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use Src\Factories\ReleveParamettreFactory;


class NoteController extends WebController
{
    private $noteRepository;
    private $salleClasseRepository;
    private $matiereRepository;
    private $evaluationRepository;
    private $inscritRepository;
    private $examenRepository;
    public function __construct(private AnneeScolaireService $anneeScolaireService)
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
    $noteParam = NoteParamettreFactory::getNoteParam();
    
    usort($notes, function ($a, $b)use($noteParam) {
        return $a->{$noteParam->sort} - $b->{$noteParam->sort};
    });

    if ($noteParam->order == 'DESC') {
        $notes = array_reverse($notes);
    }
    $this->render("note/examen", compact("examen", "notes", "noteParam"));
}
    public function examenExcel($codeExamen)
    {
        $examen = $this->examenRepository->findOne($codeExamen);
        $notes = $this->noteRepository->findAllByCodeExamen($codeExamen);


        $paramettre = NoteParamettreFactory::getNoteParam();
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        $cols = array_map('strtoupper', range('a', 'z'));
        $labels=[];
        if($paramettre->matricule) $labels[]='Matricule';
        if($paramettre->numero) $labels[]='Numero';
        if($paramettre->nom) $labels[]='Nom';
        if($paramettre->isme) $labels[]='Nom en Arabe';
        $labels[]='Note';
        $row = 5;

        $sheet->setCellValue('B2', 'Classe : ');
        $sheet->setCellValue('C2',  $examen->codeClasse . $examen->indiceSalleClasse);
        $sheet->setCellValue('E2', 'Matière : ' );
        $sheet->setCellValue('F2', $examen->codeMatiere );
        $sheet->setCellValue('H2', 'Examen : ' );
        $sheet->setCellValue('I2', $examen->nomEvaluation );
        // Définir les en-têtes
        foreach ($labels as $key => $value) {
            $sheet->setCellValue($cols[$key].$row, $value);
        }
        foreach ($notes as $key => $value) {
            $row++;
            $i=0;
            if($paramettre->matricule) $sheet->setCellValue($cols[$i++].$row, $value->matricule);
            if($paramettre->numero) $sheet->setCellValue($cols[$i++].$row, $value->numeroInscrit);
            if($paramettre->nom) $sheet->setCellValue($cols[$i++].$row, $value->nom);
            if($paramettre->isme) $sheet->setCellValue($cols[$i++].$row, $value->isme);

            $sheet->setCellValue($cols[$i++].$row, $value->note);
        }

        $writer = new Xlsx($spreadsheet);
    $filename = "Releve_{$examen->codeExamen}.xlsx";
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="' . $filename . '"');
    header('Cache-Control: max-age=0');

// Sauvegarder le fichier
$writer->save('php://output');
}

    public function formulaire($codeExamen = null)
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
            $note2 = null;
            $statut = false;
            $id = null;
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
                    $id = $nt->idNote;
                    $statut = true;
                    break;
                }
            }
            $tab[] = ['matricule' => $matricule, 'num' => $num, 'nom' => $nom, 'note' => $note, 'note2' => $note2, 'statut' => $statut, 'id' => $id];
        }

        $data = $tab;
        $this->render("note/exported", compact("data", "codeExamen"));

    }
     public function addAll($codeExamen)
    {
        

        $examen = $this->examenRepository->findOne($codeExamen);
        $notes = $this->noteRepository->findAllByCodeExamen($codeExamen);
        $eleves = $this->inscritRepository->findAllByClasse($examen->codeSalleClasse);
        $tab = [];

        foreach ($eleves as $row) {
           
            $matricule = $row->matricule;
            $num = $row->numeroInscrit;
            $nom = $row->nom;
            $note = null;
            $note2 = null;
            $statut = false;
            $id = null;
            
            
            foreach ($notes as $nt) {
                if ($nt->matricule == $matricule) {
                    $note2 = $nt->note;
                    $note = $nt->note;
                    $id = $nt->idNote;
                    $statut = true;
                    break;
                }
                }
            
            $tab[] = ['matricule' => $matricule, 'num' => $num, 'nom' => $nom, 'note' => $note, 'note2' => $note2, 'statut' => $statut, 'id' => $id];
        }

        $data = $tab;
        $this->render("note/addAll", compact("data", "codeExamen"));

    }
    

    

    public function releve($codeSalleClasse, $codeMatiere)
    {
        $model = new SalleClasseRepository();
        $salleClasse = $model->findOneByCode($codeSalleClasse);
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
        $data = new ClasseResultatProvider($matiere, $inscrits, $notes, $examens);
    
        $paramettre =ReleveParamettreFactory::getReleveParam();
    
        $this->render("note/releve", compact("data", "paramettre", "salleClasse"));
    }
    public function releveExcel($codeSalleClasse, $codeMatiere)
    {
        $model = new SalleClasseRepository();
        $salleClasse = $model->findOneByCode($codeSalleClasse);

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
        $data = new ClasseResultatProvider($matiere, $inscrits, $notes, $examens);
        $paramettre =   ReleveParamettreFactory::getReleveParam();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
    
        $cols=range('a','z');
        $cols=array_map('strtoupper', $cols);
        $labels=[];
        if($paramettre->matricule) $labels[]='Matricule';
        if($paramettre->numero) $labels[]='Numero';
        if($paramettre->nom) $labels[]='Nom';
        if($paramettre->isme) $labels[]='Nom en Arabe';
        foreach ($data->examens as $examen) {
            $labels[] = $examen->codeEvaluation;
        }

        $sheet->setCellValue('B2', 'Classe : ');
        $sheet->setCellValue('C2',  $salleClasse->codeClasse . $salleClasse->indiceSalleClasse);
        $sheet->setCellValue('E2', 'Matière : ' );
        $sheet->setCellValue('F2', $matiere->nomMatiere );
        
        $row = 5;
        // Définir les en-têtes
        foreach ($labels as $key => $value) {
            $sheet->setCellValue($cols[$key].$row, $value);
        }

        foreach ($data->getClasseResultat() as $key => $value) {
            $row++;
            $i=0;
            if($paramettre->matricule) $sheet->setCellValue($cols[$i++].$row, $value->matricule);
            if($paramettre->numero) $sheet->setCellValue($cols[$i++].$row, $value->numeroInscrit);
            if($paramettre->nom) $sheet->setCellValue($cols[$i++].$row, $value->nom);
            if($paramettre->isme) $sheet->setCellValue($cols[$i++].$row, $value->isme);

            foreach ($data->examens as $examen) {
                $sheet->setCellValue($cols[$i++].$row, $value->notes[$examen->codeEvaluation]->note??0);
            }
        }
        // Créer le fichier Excel
    $writer = new Xlsx($spreadsheet);
    $filename = "Releve_{$salleClasse->codeClasse}{$salleClasse->indiceSalleClasse}_{$matiere->codeMatiere}.xlsx";
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="' . $filename . '"');
    header('Cache-Control: max-age=0');
    
    // Sauvegarder le fichier
    $writer->save('php://output');
    
   
    }
    }





