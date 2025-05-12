<?php
namespace App\Controllers\traits;

trait ProfesseurMatiereTrait {
    public function professeurMatiere(){
       $this->render('professeur/matiere');
    }
}