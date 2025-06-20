<?php
namespace App\Controllers\Apis;

use App\Controllers\src\ApiController;

use Src\Paramettres\ClasseParamettre;
use Src\Factories\BulletinParamettreFactory;
use Src\Factories\ResultatParamettreFactory;
use Src\Factories\ReleveParamettreFactory;
class ParamettreApiController extends ApiController
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


    public function bulletin($set=false){
        if($set){
            BulletinParamettreFactory::setBulletinParam($_REQUEST);
        }
        $this->response(
            BulletinParamettreFactory::getBulletinParam()->getArray()
        );
    }
   
    public function resultat($set=false){
        if($set){
            ResultatParamettreFactory::setResultatParam($_REQUEST);
         
        }
        $this->response(
            ResultatParamettreFactory::getResultatParam()->getArray()
        );
    }
     public function releve($set=false){
        if($set){
            ReleveParamettreFactory::setReleveParam($_REQUEST);
         
        }
        $this->response(
            ReleveParamettreFactory::getReleveParam()->getArray()
        );
    }
}
?>
