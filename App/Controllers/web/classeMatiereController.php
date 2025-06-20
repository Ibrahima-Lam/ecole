<?php

namespace App\Controllers\web;

use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\ClasseRepository;
use App\Models\Repositories\MatiereRepository;
use App\Controllers\src\WebController;

class ClasseMatiereController extends WebController
{
    public function liste(): void
    {
        $model = new ClasseMatiereRepository();
        $data = $model->findAll();
        $this->render('classematiere/matiere', ['data' => $data]);
    }

    function matiere(string $codeMatiere): void
    {
        try {
            $model = new ClasseMatiereRepository();
            $data = $model->findByMatiere($codeMatiere);
            $this->render('classematiere/matiere', ['data' => $data, 'codeM' => $codeMatiere]);
        } catch (\Exception $e) {

            $this->render('error/error', ['error' => $e->getMessage()]);
        }
    }

    function classe(string $codeClasse): void
    {
        $model = new ClasseMatiereRepository();
        $data = $model->findByClasse($codeClasse);
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
        $model = new ClasseMatiereRepository();
        $data = $model->findAll();
        $model2 = new ClasseRepository();
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
        $this->render('classematiere/forms', ['data' => $list]);
    }

    public function classeform(string $codeClasse): void
    {
        $model = new ClasseMatiereRepository();
        $data = $model->findAll();
        $model2 = new MatiereRepository();
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
        $this->render('classematiere/forms', ['data' => $list]);
    }
}
