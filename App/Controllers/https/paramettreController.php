<?php
namespace App\Controllers\https;

use Core\Controllers\Controller;
use Core\caches\Cookie;
use Src\Paramettres\ClasseParamettre;

class ParamettreController extends Controller
{
    public Cookie $cookie;

   

    public function index(): void
    {
        $this->render('paramettre/home');
    }

    public function classe(): void
    {   
       $p= new ClasseParamettre();
       $paramettre=$p->getClasse();
        $this->render('paramettre/classe',['paramettre'=>$paramettre]);
    }
}