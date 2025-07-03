<?php

namespace App\Controllers\web\administration;

 use App\Repositories\AnneeScolaireRepository;
use App\Repositories\SalleClasseRepository;
use App\Services\src\AnneeScolaireService;
use Src\Paramettres\ClasseParamettre;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class inscritController extends EleveController
{
    public function __construct( AnneeScolaireService $anneeScolaireService)
    {
        parent::__construct($anneeScolaireService);
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
   

    public function export($codeSalleClasse){
       
    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();

    $cols=range('a','z');
    $cols=array_map(function ($a){
        return ucwords($a);
    }, $cols);
    $labels=[  /* 'Code', */  'Numero', 'Nom', 'Nom en Arabe'  /*, 'Date de Naissance' , 'Classe', 'NNI', 'Date d\'Inscription' */ ];
    $row = 5;
    // Définir les en-têtes
   foreach ($labels as $key => $value) {
    $sheet->setCellValue($cols[$key].$row, $value);
   }
    
    // Ajouter les données
 
        $inscrits = $this->inscritRepository->findAllByClasse($codeSalleClasse);
        $model = new SalleClasseRepository();
        $classe = $model->findOneByCode($codeSalleClasse);
      
    foreach ($inscrits as $inscrit) {
        $row++;
        $i=0;
      if(in_array('Code',$labels))  $sheet->setCellValue($cols[$i++] . $row, $inscrit->matricule);
         if(in_array('Numero',$labels))  $sheet->setCellValue($cols[$i++] . $row, $inscrit->numeroInscrit);
         if(in_array('Nom',$labels))  $sheet->setCellValue($cols[$i++] . $row, $inscrit->nom);
         if(in_array('Nom en Arabe',$labels))  $sheet->setCellValue($cols[$i++] . $row, $inscrit->isme);
         if(in_array('Date de Naissance',$labels))  $sheet->setCellValue($cols[$i++] . $row, $inscrit->dateNaissance);
         if(in_array('Classe',$labels))  $sheet->setCellValue($cols[$i++] . $row, $inscrit->codeClasse.$inscrit->indiceSalleClasse);
         if(in_array('NNI',$labels))  $sheet->setCellValue($cols[$i++] . $row, $inscrit->nni);
         if(in_array('Date d\'Inscription',$labels))  $sheet->setCellValue($cols[$i++] . $row, $inscrit->dateInscription);
      
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
        $anneescolaire = $this->anneeScolaireService->getAnnee();
        $this->render('inscrit/classe', ['inscrits' => $inscrits, 'anneescolaire' => $anneescolaire, 'classe' => $classe,'paramettre'=> $paramettre]);
    }

   /* public function noninscrit(){
        $model = new EleveRepository();
        $eleves = $model->findAllNonInscritsByAnnee($this->annee);
        $model = new AnneeScolaireRepository();
        $anneescolaire = $model->findOneByCodeAnnee($this->annee);
        $this->render('inscrit/noninscrit', ['eleves' => $eleves, 'anneescolaire' => $anneescolaire]);
    } */

   /*  public function form($matricule = null)
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
    } */
}
