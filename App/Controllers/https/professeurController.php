<?php

namespace App\Controllers\https;

use Core\Controllers\Controller;

class professeurController extends Controller
{
    public function liste(): void
    {
        $this->render('professeur/liste');
    }
}
