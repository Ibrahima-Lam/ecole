<?php
namespace App\Controllers\web\administration;

use App\Controllers\src\WebController;
use Core\caches\Cookie;
use Src\Paramettres\ClasseParamettre;
use Src\Factories\BulletinParamettreFactory;
use Src\Factories\ResultatParamettreFactory;
use Src\Factories\ReleveParamettreFactory;
class ParamettreController extends WebController
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
    public function bulletin(): void
    {
        
        $paramettre=BulletinParamettreFactory::getBulletinParam();
        $this->render('paramettre/bulletin',['paramettre'=>$paramettre]);
    } 
     public function resultat(): void
    {
        
        $paramettre=ResultatParamettreFactory::getResultatParam();
        $this->render('paramettre/resultat',['paramettre'=>$paramettre]);
    }  public function releve(): void
    {
        
        $paramettre=ReleveParamettreFactory::getReleveParam();
        $this->render('paramettre/releve',['paramettre'=>$paramettre]);
    }
}