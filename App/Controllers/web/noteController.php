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
    private $classeMatiereRepository;
    public function __construct(private AnneeScolaireService $anneeScolaireService)
    {
        parent::__construct();
        $this->noteRepository = new NoteRepository();
        $this->salleClasseRepository = new SalleClasseRepository();
        $this->matiereRepository = new MatiereRepository();
        $this->evaluationRepository = new EvaluationRepository();
        $this->examenRepository = new ExamenRepository();
        $this->inscritRepository = new inscritRepository();
        $this->classeMatiereRepository = new ClasseMatiereRepository();
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
        $rows = range(1, 200);
        $this->middleware('role')->render("note/formulaire", compact("cols", "rows", "codeExamen"));
    }

    public function matiere_file_form($codeSalleClasse,$codeMatiere)
    {
        $cols=array_map('strtoupper', range('a', 'z'));
        $rows=range(1,200);
        $salleClasse = $this->salleClasseRepository->findOneByCode($codeSalleClasse);
        $classeMatiere = $this->classeMatiereRepository->findOneByClasseAndMatiereAndAnnee($salleClasse->codeClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());
        if (!$classeMatiere) {
                                    $this->renderError(__($salleClasse->pseudoSalleClasse." - ".$codeMatiere." <br> Cette classe avec cette matiere n'est pas disponible ! "));

        }
        $examens = $this->examenRepository->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
        $sallesClasse = $this->salleClasseRepository->findAll($this->anneeScolaireService->getCodeAnnee());
        $matieres = $this->matiereRepository->findAll();
        $this->middleware('role')->render("note/matiere_file_form", compact("salleClasse","classeMatiere","codeSalleClasse","codeMatiere","examens","cols","rows","sallesClasse","matieres"));
    }


    public function traitement_matiere_file($codeSalleClasse,$codeMatiere)
    {

        $numColonne = $_POST['numColonne'];
        $noteColonne1 = $_POST['noteColonne1'];
        $noteColonne2 = $_POST['noteColonne2'];
        $premierLigne = $_POST['premierLigne'];
        $dernierLigne = $_POST['dernierLigne'];
        $spreadsheet = IOFactory::load($_FILES['fichier']['tmp_name']);
        $worksheet = $spreadsheet->getActiveSheet();
        $data = $worksheet->toArray();
        $salleClasse = $this->salleClasseRepository->findOneByCode($codeSalleClasse);
      $sallesClasse = $this->salleClasseRepository->findAll($this->anneeScolaireService->getCodeAnnee());
      $matieres = $this->matiereRepository->findAll();
      $classeMatiere = $this->classeMatiereRepository->findOneByClasseAndMatiereAndAnnee($salleClasse->codeClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());
      if (!$classeMatiere) {
                                    $this->renderError(__($salleClasse->pseudoSalleClasse." - ".$codeMatiere." <br> Cette classe avec cette matiere n'est pas disponible ! "));

        }
      $examens = $this->examenRepository->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
      $notes = $this->noteRepository->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
      $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);

      $cols = array_map('strtoupper', range('a', 'z'));
      $numColonne = array_search($numColonne, $cols);
      $noteColonne1 = array_search($noteColonne1, $cols);
      $noteColonne2 = array_search($noteColonne2, $cols);

      $data=array_slice($data,$premierLigne-1, $dernierLigne-$premierLigne+1);

     
     $tab=[];
     foreach ($data as $value) {
        $num=$value[$numColonne];
        $k=1;
        for($i=$noteColonne1;$i<=$noteColonne2;$i++){
            $tab[$num]["note$k"]=$value[$i]??null;
            $k++;
        }
     }
     
     $data=[];
      foreach ($inscrits as $inscrit) {
        $data[$inscrit->matricule]=[];
        $key=1;
        foreach ($examens as $examen) {
            $data[$inscrit->matricule][$examen->codeExamen]['db_note']=null;
            $data[$inscrit->matricule][$examen->codeExamen]['file_note']=null;
            $data[$inscrit->matricule][$examen->codeExamen]['id']=null;
            foreach ($notes as $note) {
                if($note->matricule==$inscrit->matricule && $note->codeExamen==$examen->codeExamen){
                    $data[$inscrit->matricule][$examen->codeExamen]['db_note']=$note->note;
                    $data[$inscrit->matricule][$examen->codeExamen]['id']=$note->idNote;
                }
            }
            $data[$inscrit->matricule][$examen->codeExamen]['file_note']=$tab[$inscrit->matricule]["note$key"]??$tab[$inscrit->numeroInscrit]["note$key"]??null;
            $key++;
           
        }
      }
      $classeMatiere = $this->classeMatiereRepository->findOneByClasseAndMatiereAndAnnee($salleClasse->codeClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());

        $this->middleware('role')->render("note/matiere_forms", compact("salleClasse","classeMatiere","codeSalleClasse","codeMatiere","examens","inscrits","data","sallesClasse","matieres"));
    }
    public function matiere_forms($codeSalleClasse,$codeMatiere)
    {
        $salleClasse = $this->salleClasseRepository->findOneByCode($codeSalleClasse);
        $classeMatiere = $this->classeMatiereRepository->findOneByClasseAndMatiereAndAnnee($salleClasse->codeClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());
     
        if (!$classeMatiere) {
                        $this->renderError(__($salleClasse->pseudoSalleClasse." - ".$codeMatiere." <br> Cette classe avec cette matiere n'est pas disponible ! "));

        }
     
        $sallesClasse = $this->salleClasseRepository->findAll($this->anneeScolaireService->getCodeAnnee());
        $matieres = $this->matiereRepository->findAll();
      $examens = $this->examenRepository->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
      $notes = $this->noteRepository->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
      $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
      $data=[];
      foreach ($inscrits as $inscrit) {
        $data[$inscrit->matricule]=[];
        foreach ($examens as $examen) {
            $data[$inscrit->matricule][$examen->codeExamen]['db_note']=null;
            $data[$inscrit->matricule][$examen->codeExamen]['file_note']=null;
            $data[$inscrit->matricule][$examen->codeExamen]['id']=null;
            foreach ($notes as $note) {
                if($note->matricule==$inscrit->matricule && $note->codeExamen==$examen->codeExamen){
                    $data[$inscrit->matricule][$examen->codeExamen]['db_note']=$note->note;
                    $data[$inscrit->matricule][$examen->codeExamen]['id']=$note->idNote;
                }
            }
        }
      }
      
        $this->middleware('role')->render("note/matiere_forms", compact("salleClasse","classeMatiere","codeSalleClasse","codeMatiere","examens","inscrits","data","sallesClasse","matieres"));
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
        if (!$examen) {
            $this->renderError(__('Examen non trouvé !'));
        }
        $notes = $this->noteRepository->findAllByCodeExamen($codeExamen);
        $eleves = $this->inscritRepository->findAllByClasse($examen->codeSalleClasse);
        $examens=$this->examenRepository->findAllByClasseAndMatiere($examen->codeSalleClasse,$examen->codeMatiere);
       
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
        $this->middleware('role')->render("note/imported", compact("data", "examens","examen","codeExamen"));

    }
     public function addAll($codeExamen)
    {
        

        $examen = $this->examenRepository->findOne($codeExamen);
        if (!$examen) {
            $this->renderError(__('Examen non trouvé !'));
        }
        $notes = $this->noteRepository->findAllByCodeExamen($codeExamen);
        $eleves = $this->inscritRepository->findAllByClasse($examen->codeSalleClasse);
        $examens=$this->examenRepository->findAllByClasseAndMatiere($examen->codeSalleClasse,$examen->codeMatiere);
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
        $this->middleware('role')->render("note/addAll", compact("data", "examen","examens"));

    }
    

    

    public function releve($codeSalleClasse, $codeMatiere)
    {
        $model = new SalleClasseRepository();
        $salleClasse = $model->findOneByCode($codeSalleClasse);
        $model1 = new inscritRepository();
        $inscrits = $model1->findAllByClasse($codeSalleClasse);
        $model2 = new ClasseMatiereRepository();
        $matiere = $model2->findOneByClasseAndMatiereAndAnnee($salleClasse->codeClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());
        if (!$matiere) {
            $this->renderError(__($salleClasse->pseudoSalleClasse." - ".$codeMatiere." <br> Cette classe avec cette matiere n'est pas disponible ! "));
        }
        $notes = $this->noteRepository->findAllByClasseAndMatiere($codeSalleClasse,$codeMatiere);
        $model3 = new ExamenRepository();
        $examens = $model3->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
        usort($examens, function ($a, $b) {
            if ($a->typeEvaluation != $b->typeEvaluation) {
                return $a->typeEvaluation == 'composition' ? 1 : -1;
            }
            return $a->indiceEvaluation - $b->indiceEvaluation;
        });
        $data = new ClasseResultatProvider($codeSalleClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());
    
        $paramettre =ReleveParamettreFactory::getReleveParam();
        $sallesClasse = $this->salleClasseRepository->findAll($this->anneeScolaireService->getCodeAnnee());
        $matieres = $this->matiereRepository->findAll();
        $this->render("note/releve", compact("data", "paramettre", "salleClasse","codeSalleClasse","codeMatiere","sallesClasse","matieres"));
    }
    public function releveExcel($codeSalleClasse, $codeMatiere)
    {
        $model = new SalleClasseRepository();
        $salleClasse = $model->findOneByCode($codeSalleClasse);

        $model2 = new ClasseMatiereRepository();
        $matiere = $model2->findOneByClasseAndMatiereAndAnnee($salleClasse->codeClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());
        $model3 = new ExamenRepository();
        $examens = $model3->findAllByClasseAndMatiere($codeSalleClasse, $codeMatiere);
      
        usort($examens, function ($a, $b) {
            if ($a->typeEvaluation != $b->typeEvaluation) {
                return $a->typeEvaluation == 'composition' ? 1 : -1;
            }
            return $a->indiceEvaluation - $b->indiceEvaluation;
        });
        $data = new ClasseResultatProvider($codeSalleClasse,$codeMatiere,$this->anneeScolaireService->getCodeAnnee());

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
    
        $cols=range('a','z');
        $cols=array_map('strtoupper', $cols);
        $labels=[];
        $labels[]='Matricule';
        $labels[]='Numero';
        $labels[]='Nom';
        $labels[]='Nom en Arabe';
        foreach ($examens as $examen) {
            $labels[] = $examen->codeEvaluation;
        }
        $labels[]='MI';
        $labels[]='Tot.';
        $labels[]='Moy.';
        $labels[]='Coeff.';
        $labels[]='Pts';

        $sheet->setCellValue('B2', 'Classe : ');
        $sheet->setCellValue('C2',  $salleClasse->pseudoSalleClasse);
        $sheet->setCellValue('E2', 'Matière : ' );
        $sheet->setCellValue('F2', $matiere->nomMatiere );
        
        $row = 5;
      
        foreach ($labels as $key => $value) {
            $sheet->setCellValue($cols[$key].$row, $value);
        }
        $sheet->getStyle('A'.$row.':'.$cols[count($labels)-1].$row)
      ->getFill()
      ->setFillType('solid')
      ->getStartColor()
      ->setARGB('FFCCFFCC');

        foreach ($data->getClasseResultat() as $key => $eleve) {
            $row++;
            
            $i=0;
            $sheet->setCellValue($cols[$i++].$row, $eleve->matricule);
            $sheet->setCellValue($cols[$i++].$row, $eleve->numeroInscrit);
            $sheet->setCellValue($cols[$i++].$row, $eleve->nom);
            $sheet->setCellValue($cols[$i++].$row, $eleve->isme);

            foreach ($examens as $examen) {
                $value=$data->notes[$eleve->matricule][$examen->codeEvaluation]??null;
               
                $sheet->setCellValue($cols[$i++].$row, $value?->note??0);
            }
            $sheet->setCellValue($cols[$i++].$row, $eleve->mi??0);
            $sheet->setCellValue($cols[$i++].$row, $eleve->total??0);
            $sheet->setCellValue($cols[$i++].$row, $eleve->moyenne??0);
            $sheet->setCellValue($cols[$i++].$row, $eleve->coefficient??0);
            $sheet->setCellValue($cols[$i++].$row, $eleve->points??0);
        }
$sheet->getStyle('A1:'.$cols[count($labels)-1].$row)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
 
    $writer = new Xlsx($spreadsheet);
    $filename = "Releve_{$salleClasse->pseudoSalleClasse}_{$matiere->codeMatiere}.xlsx";
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="' . $filename . '"');
    header('Cache-Control: max-age=0');
    
    // Sauvegarder le fichier
    $writer->save('php://output');
     
   
    }
    
    }





