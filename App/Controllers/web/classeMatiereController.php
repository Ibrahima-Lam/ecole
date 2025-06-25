<?php

namespace App\Controllers\web;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\ClasseRepository;
use App\Models\Repositories\MatiereRepository;
use App\Controllers\src\WebController;
use App\Services\src\AnneeScolaireService;
use App\Services\src\ClasseMatiereService;
use Core\src\Request;

class ClasseMatiereController extends WebController
{
    public function __construct(private AnneeScolaireService $anneeScolaireService,private ClasseMatiereService $classeMatiereService)
    {
        parent::__construct();
    }
    public function liste(): void
    {
        $data = $this->classeMatiereService->findAllByAnnee();
        $anneescolaire=$this->anneeScolaireService->getAnnee();
        $this->render('classematiere/matiere', ['data' => $data,'anneescolaire'=>$anneescolaire]);
    }

    function matiere(string $codeMatiere): void
    {
        try {
            $data = $this->classeMatiereService->findAllByMatiereAndAnnee($codeMatiere);
            $this->render('classematiere/matiere', ['data' => $data, 'codeM' => $codeMatiere]);
        } catch (\Exception $e) {

            $this->render('error/error', ['error' => $e->getMessage()]);
        }
    }

    function classe(string $codeClasse): void
    {
        $data = $this->classeMatiereService->findAllByClasseAndAnnee($codeClasse);
        $coeffients = 0;
        $horaires = 0;
       foreach ($data as $value) {
            $coeffients += $value->coefficientClasseMatiere;
            $horaires += $value->horaireClasseMatiere;
        }
        $this->render('classematiere/matiere', ['data' => $data, 'codeC' => $codeClasse,'coeffients'=>$coeffients,'horaires'=>$horaires]);
    }

    function matiereform(string $codeMatiere): void
    {
        $data = $this->classeMatiereService->findAllByAnnee();
        $model2 = new ClasseRepository();
        $length=count($data);
        $classes = $model2->findAll();
        $list = [];
        foreach ($classes as $classe) {
            $found = false;
            foreach ($data as $value) {
                if ($value->codeClasse == $classe->codeClasse && $value->codeMatiere == $codeMatiere) {
                    $list[] = $value;
                    $found = true;
                }
            }
            if (!$found) {
                $list[] = $classe;
            }
        }
        $list = array_map(function ($element) use ($codeMatiere) {
            if (empty($element->codeMatiere)) {
                $element->codeMatiere = $codeMatiere;
            }
            return $element;
        }, $list);
        usort($list, function ($a, $b) {
           $sort=($a->coefficientClasseMatiere??0) - ($b->coefficientClasseMatiere??0);
            if ($sort==0) {
                $sort=($a->horaireClasseMatiere??0) - ($b->horaireClasseMatiere??0);
            }
            return -$sort;
        });
        $anneescolaire=$this->anneeScolaireService->getAnnee();
        $this->render('classematiere/forms', ['data' => $list,'annees'=>$this->anneeScolaireService->getAll(),'codeM'=>$codeMatiere,'length'=>$length,'anneescolaire'=>$anneescolaire]);
    }

    public function classeform(string $codeClasse): void
    {
        $data = $this->classeMatiereService->findAllByClasseAndAnnee($codeClasse);
        $model2 = new MatiereRepository();
        $length=count($data);
        $matieres = $model2->findAll();
        $list = [];
        foreach ($matieres as $matiere) {
            $found = false;
            foreach ($data as $value) {
                if ($matiere->codeMatiere == $value->codeMatiere && $value->codeClasse == $codeClasse) {
                    $list[] = $value;
                    $found = true;
                }
            }
            if (!$found) {
                $list[] = $matiere;
            }
        }
        $list = array_map(function ($element) use ($codeClasse) {            
            if (empty($element->codeClasse)) {
                $element->codeClasse= $codeClasse;
            }
            return $element;
        }, $list);
        usort($list, function ($a, $b) {
            $sort=($a->coefficientClasseMatiere??0) - ($b->coefficientClasseMatiere??0);
             if ($sort==0) {
                 $sort=($a->horaireClasseMatiere??0) - ($b->horaireClasseMatiere??0);
             }
             return -$sort;
         });
         $anneescolaire=$this->anneeScolaireService->getAnnee();
        $this->render('classematiere/forms', ['data' => $list,'annees'=>$this->anneeScolaireService->getAll(),'codeC'=>$codeClasse,'length'=>$length,'anneescolaire'=>$anneescolaire]);
    }
    public function import(Request $request){
       
     $this->classeMatiereService->import($request);
     $this->redirect('?p=classeMatiere/liste');
    }
}
