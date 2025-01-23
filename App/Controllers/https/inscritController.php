<?php

namespace App\Controllers\https;

use App\Models\Repositories\inscritRepository;
use Core\Controllers\Controller;
use App\Models\Repositories\AnneeScolaireRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\EleveRepository;
use Core\Caches\Session;
use Core\Services\html\htmlService;
use Src\Paramettres\ClasseParamettre;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class inscritController extends Controller
{
    private $inscritRepository;
  
    private $annee;

    public function __construct()
    {
   
        $this->inscritRepository = new inscritRepository();
        $model = new AnneeScolaireRepository();
        $session = new Session();
        $this->annee = $session->get('annee') ?? $model->findLastAnneeScolaire()->codeAnnee;
    }

    private function subsidebar( int $active = 1): string
    {
        $html ="<div class='subsidebar'>";
        $html .= "<ul>";
        $class = "";
       
        $class = $active == 10 ? "active" : "";
        $html .= "<li><a href='?p=eleve/liste' class='$class'>Eleves</a></li>";
        $class = $active == 11 ? "active" : "";
        $html .= "<li><a href='?p=inscrit/liste' class='$class'>Les Inscrits</a></li>"; 
        $class = $active == 12 ? "active" : "";
        $html .= "<li><a href='?p=inscrit/noninscrit' class='$class'>Les non inscrit</a></li>";
        $html .= "</ul>";
        $html .= "</div>";
        return $html;
    }
    public function liste()
    {
        $inscrits = $this->inscritRepository->findAllByAnnee($this->annee);
        $model = new AnneeScolaireRepository();
        $anneescolaire = $model->findOneByCodeAnnee($this->annee);
        $this->render('inscrit/liste', ['inscrits' => $inscrits, 'anneescolaire' => $anneescolaire]);
    }

    public function export($codeSalleClasse){
       
    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();
    
    // Définir les en-têtes
    $sheet->setCellValue('A1', 'Matricule');
    $sheet->setCellValue('B1', 'Numero');
    $sheet->setCellValue('C1', 'Nom');
    $sheet->setCellValue('D1', 'Nom en Arabe');
    $sheet->setCellValue('E1', 'Date de naissance');
    $sheet->setCellValue('F1', 'Classe');
    $sheet->setCellValue('G1', 'Nni');
    $sheet->setCellValue('H1', 'Date');
    
    // Ajouter les données
    $row = 2;
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        $model = new SalleClasseRepository();
        $classe = $model->findOneByCode($codeSalleClasse);
        $model = new AnneeScolaireRepository();
    foreach ($inscrits as $inscrit) {
        $sheet->setCellValue('A' . $row, $inscrit->matricule);
        $sheet->setCellValue('B' . $row, $inscrit->numeroInscrit);
        $sheet->setCellValue('C' . $row, $inscrit->nom);
        $sheet->setCellValue('D' . $row, $inscrit->isme);
        $sheet->setCellValue('E' . $row, $inscrit->dateNaissance);
        $sheet->setCellValue('F' . $row, $inscrit->codeClasse);
        $sheet->setCellValue('G' . $row, $inscrit->nni);
        $sheet->setCellValue('H' . $row, $inscrit->dateInscription);
        $row++;
    }
    // Créer le fichier Excel
    $writer = new Xlsx($spreadsheet);
    $filename = "{$classe->codeClasse}{$classe->indiceSalleClasse}.xlsx";
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="' . $filename . '"');
    header('Cache-Control: max-age=0');
    
    // Sauvegarder le fichier
    $writer->save('php://output');
    exit;
    }

    public function classe($codeSalleClasse )
    {
        $p=new ClasseParamettre();
        $paramettre=$p->getClasse();
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        $model = new SalleClasseRepository();
        $classe = $model->findOneByCode($codeSalleClasse);
        $model = new AnneeScolaireRepository();
        $anneescolaire = $model->findOneByCodeAnnee($this->annee);
        $this->render('inscrit/classe', ['inscrits' => $inscrits, 'anneescolaire' => $anneescolaire, 'classe' => $classe,'paramettre'=> $paramettre]);
    }

    public function noninscrit(){
        $model = new EleveRepository();
        $eleves = $model->findAllNonInscritsByAnnee($this->annee);
        $model = new AnneeScolaireRepository();
        $anneescolaire = $model->findOneByCodeAnnee($this->annee);
        $this->render('inscrit/noninscrit', ['eleves' => $eleves, 'anneescolaire' => $anneescolaire]);
    }

    public function form($matricule = null)
    {
        $cls = $_GET["classe"];
        $eleveinscrit = null;
        if ($matricule) {
            $eleveinscrit = $this->inscritRepository->findOneByid($matricule);
        }
        $model = new EleveRepository();
        $eleves = $model->findAll();
        $model = new SalleClasseRepository();
        $classes = $model->findAll($this->annee);
        $classes = array_map(function ($classe) {
            $classe->libelle = $classe->codeClasse . $classe->indiceSalleClasse;
            return $classe;
        }, $classes);
        $lastOne = $this->inscritRepository->findlastOneByClasse($cls);
        $number = $lastOne->numeroInscrit ?? 0;
        $today = date('Y-m-d');
        $number++;
        $elevehtml = htmlService::options($eleves, 'matricule', 'nom', $eleveinscrit->matricule ?? null);
        $classehtml = htmlService::options($classes, 'codeSalleClasse', 'libelle', $eleveinscrit->codeSalleClasse ?? null);
        $this->render('inscrit/form', ['eleveinscrit' => $eleveinscrit, 'elevehtml' => $elevehtml, 'classetml' => $classehtml, 'today' => $today, 'number' => $number]);
    }

    public function traitement()
    {
        extract($_POST);
        $res = $edit ?? null ? $this->inscritRepository->update($idInscrit, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription) : $this->inscritRepository->insert(null, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription);
        if ($res) {
            header('location: ?p=inscrit/liste');
        } else {
            header('location: ?p=inscrit/form');
        }
    }
}
