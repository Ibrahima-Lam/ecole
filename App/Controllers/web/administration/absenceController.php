<?php

namespace App\Controllers\web\administration;

use App\Controllers\src\WebController;
use App\Repositories\inscritRepository;
use App\Services\src\AbsenceService;
use App\Services\src\AnneeScolaireService;
use App\Services\src\SalleClasseService;
use Core\Caches\Session;
use Core\src\Request;

class AbsenceController extends WebController
{

    public function __construct(protected AbsenceService $absenceService,protected AnneeScolaireService $anneeScolaireService)
    {
        parent::__construct();
    }

    public function addAll(Request $request,SalleClasseService $salleClasseService,$codeSalleClasse): void
    {
        $trimestre=$request->get('trimestre')??3;
        $absences = $this->absenceService->findAllByClasseAndTrimestre($codeSalleClasse, $trimestre);
        $repository=new inscritRepository();
        $data=$repository->findAllByClasse($codeSalleClasse);
      $salleclasses=  $salleClasseService->getAllSalleClasseByAnnee();
        $tab=[];
        foreach ($data as $value) {
            $absence=null;
            foreach ($absences as $abs) {
                if ($abs->matricule==$value->matricule) {
                    $absence=$abs;
                    break;
                }
            }
            $tab[]=[
                'matricule'=>$value->matricule,
                'num'=>$value->numeroInscrit,
                'nom'=>$value->nom,
                'statut'=>$absence?true:false,
                'nombreAbsence'=>$absence? $absence->nombreAbsence:'',
                'dbAbsence'=>$absence? $absence->nombreAbsence:'',
                'trimestreAbsence'=>$trimestre,
                'codeAnnee'=>$this->anneeScolaireService->getCodeAnnee()
            ];
        }
        $this->render("absence/addAll", ["absences" => $tab,"salleclasses"=>$salleclasses,'trimestre'=>$trimestre,'codeSalleClasse'=>$codeSalleClasse]);
    }

    public function liste(Request $request, SalleClasseService $salleClasseService): void
    {
        $salleclasses = $salleClasseService->getAllSalleClasseByAnnee();
        $this->render('absence/liste', [
            'salleclasses' => $salleclasses,
            'codeSalleClasse' => $request->get('codeSalleClasse'),
            'trimestre' => $request->get('trimestre') ?? 1,
        ]);
    }
}
