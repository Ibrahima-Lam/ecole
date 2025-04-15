<?php
namespace App\Controllers\Apis;

use Core\Controllers\Controller;

use Src\Paramettres\ClasseParamettre;
use Src\Factories\BulletinParamettreFactory;

class ParamettreApiController extends Controller
{
  
    
    public function __construct()
    {
        
    }

    public function classe()
    {
        unset($_GET['p']);
        extract($_GET);
       $p=new ClasseParamettre();
       $v=$p->getClasse();
       $p->matricule=$matricule ?? false;
       $p->nom=$nom ?? false;
       $p->isme=$isme ?? false;
       $p->nom_isme=$nom_isme ?? false;
       $p->dateNaissance=$dateNaissance ?? false;
       $p->lieuNaissance=$lieuNaissance ?? false;
       $p->numero=$numero ?? false;
       $p->sexe=$sexe ?? false;
       $p->nni=$nni ?? false;
       $p->setClasse($p);
       $paramettre=$p->getClasse();
        $this->response($paramettre);
    }

    public function setBulletin(){
        BulletinParamettreFactory::setBulletinParam($_REQUEST);
        $this->response(
            BulletinParamettreFactory::getBulletinParam()->getArray()
        );
    }

    public function bulletin(){
        $this->response(
            BulletinParamettreFactory::getBulletinParam()->getArray()
        );
    }
}
?>