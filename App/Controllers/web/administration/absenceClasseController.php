<?php

namespace App\Controllers\web\administration;

use App\Controllers\src\WebController;
use App\Services\business\TrimestreService;
use App\Services\src\absenceClasseService;
use App\Services\src\EleveService;
use App\Services\src\SalleClasseService;
use App\Services\src\HoraireService;
use App\Services\src\InscritService;
use Core\caches\RedisCache;
use Core\Caches\Session;
use Core\src\Request;
use stdClass;

class absenceClasseController extends WebController
{
    public function __construct(private absenceClasseService $service)
    {
    }

   function liste(Request $request, SalleClasseService $salleClasseService, HoraireService $horaireService,$codeSalleClasse=null) {
    $salleclasses =$codeSalleClasse ? [$salleClasseService->getSalleClasse($codeSalleClasse)] : $salleClasseService->getAllSalleClasseByAnnee();
    $horaires = $horaireService->getAll();

   [$defaultDateDebut,$defaultDateFin]=TrimestreService::getDates();

    $this->render('absenceClasse/liste', [
        'salleclasses' => $salleclasses,
        'horaires' => $horaires,
        'codeSalleClasse' => $request->get('codeSalleClasse'),
        'codeHoraire' => $request->get('codeHoraire'),
        'dateDebut' => $request->get('dateDebut') ?? $defaultDateDebut,
        'dateFin' => $request->get('dateFin') ?? $defaultDateFin,
    ]);
   }

   public function form(Request $request, SalleClasseService $salleClasseService, HoraireService $horaireService)
   {
       $id = $request->get('id');
       $absenceClasse = new stdClass;
       if ($id) {
           $absenceClasse = $this->service->getById($id);
       }
       $salleclasses = $salleClasseService->getAllSalleClasseByAnnee();
       $horaires = $horaireService->getAll();

       $this->middleware('role')->render('absenceClasse/form', [
           'absenceClasse' => $absenceClasse,
           'salleclasses' => $salleclasses,
           'horaires' => $horaires,
       ]);
   }

   public function details(InscritService $inscritService,$id)
   {
    
       $absenceClasse = $this->service->getById($id);
       $eleves = $inscritService->findAllByClasse($absenceClasse->codeSalleClasse);

       if ($absenceClasse) {
           if (!empty($absenceClasse->absents)) {
               $absents = explode(',', $absenceClasse->absents);
               sort($absents);
               $absenceClasse->absents = $absents;
           }
           if (!empty($absenceClasse->justifies)) {
               $justifies = explode(',', $absenceClasse->justifies);
               sort($justifies);
               $absenceClasse->justifies = $justifies;
           }
       }

       $this->render('absenceClasse/details', [
           'absenceClasse' => $absenceClasse,
           'eleves' => $eleves,
       ]);
   }

   public function classe(Request $request, SalleClasseService $salleClasseService, HoraireService $horaireService, $codeSalleClasse)
   {
       $this->liste($request, $salleClasseService, $horaireService, $codeSalleClasse);
   }

   public function cumulAbsenceEleve(Request $request,SalleClasseService $salleClasseService, InscritService $inscritService, $codeSalleClasse)
   {
       $dateDebut = $request->get('dateDebut');
       $dateFin = $request->get('dateFin');
if(!$dateDebut || !$dateFin){
    [$dateDebut,$dateFin]=TrimestreService::getDates();
}
       $absences = $this->service->getBySalleAndDateRange($codeSalleClasse, $dateDebut, $dateFin);
       $eleves = $inscritService->findAllByClasse($codeSalleClasse);
       $salleClasse = $salleClasseService->getSalleClasse($codeSalleClasse);
       $cumulAbsences = [];
       foreach ($eleves as $eleve) {
           $cumulAbsences[$eleve->numeroInscrit] = [
               'nom' => $eleve->nom,
               'matricule' => $eleve->matricule,
               'nombreAbsences' => 0,
           ];
       }

       foreach ($absences as $absence) {
           if (!empty($absence->absents)) {
               $absentStudents = explode(',', $absence->absents);
               foreach ($absentStudents as $studentMatricule) {
                   $studentMatricule = trim($studentMatricule);
                   if (isset($cumulAbsences[$studentMatricule])) {
                       $cumulAbsences[$studentMatricule]['nombreAbsences']++;
                   }
               }
           }
       }

       // Stocker les données directement dans la session
       $session = new Session();
       $session->set('absences_batch_data', $cumulAbsences);

       $this->render('absenceClasse/cumulAbsenceEleve', [
           'cumulAbsences' => $cumulAbsences,
           'codeSalleClasse' => $codeSalleClasse,
           'salleClasse' => $salleClasse,
           'dateDebut' => $dateDebut,
           'dateFin' => $dateFin
       ]);
   }

   public function listeAbsenceEleve(Request $request, EleveService $eleveService, HoraireService $horaireService, $matricule)
   {
       [$dateDebut, $dateFin] = TrimestreService::getDates();

       $dateDebut = $request->get('dateDebut') ?? $dateDebut;
       $dateFin = $request->get('dateFin') ?? $dateFin;

       $inscription = $eleveService->getInscrit($matricule);
       $absences = [];

       if ($inscription) {
           $toutesLesAbsences = $this->service->getBySalleAndDateRange($inscription->codeSalleClasse, $dateDebut, $dateFin);
           foreach ($toutesLesAbsences as $absence) {
               if (!empty($absence->absents)) {
                   $absents = explode(',', $absence->absents);
                   if (in_array($inscription->numeroInscrit, $absents)) {
                       $absences[] = $absence;
                   }
               }
           }
       }

       $horaires = $horaireService->getAll();
       $horairesMap = [];
       foreach ($horaires as $horaire) {
           $horairesMap[$horaire->codeHoraire] = $horaire->nomHoraire;
       }
       
       $eleve = $eleveService->getEleve($matricule);

       $this->render('absenceClasse/listeAbsenceEleve', [
           'absences' => $absences,
           'eleve' => $eleve,
           'dateDebut' => $dateDebut,
           'dateFin' => $dateFin,
           'horairesMap' => $horairesMap,
       ]);
   }
}
