<?php

namespace App\Controllers\https;

use App\Models\Repositories\ProfesseurRepository;
use Core\Controllers\Controller;

class professeurController extends Controller
{
    public function liste(): void
    {
        $repos= new ProfesseurRepository();
        $profs=$repos->findAll();
        $specialites=$repos->findAllSpecialite();
        $this->render('professeur/liste',compact(['profs','specialites']));
    }

    public function profil($matricule): void
    {
        $repos= new ProfesseurRepository();
        $prof=$repos->findOneByMatricule($matricule);
        $specialites=$repos->findAllSpecialite();
        $this->render('professeur/profil',compact(['prof','specialites']));
    }
}
