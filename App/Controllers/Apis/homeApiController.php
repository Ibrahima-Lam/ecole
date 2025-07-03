<?php

namespace App\Controllers\apis;

use App\Repositories\correspondantRepository;
use App\Repositories\EleveRepository;
use App\Repositories\ProfesseurRepository;
use App\Repositories\SalleClasseRepository;
use App\Services\storages\DarkStorage;
use App\Services\storages\LangueStorage;
use Core\Caches\Session;
use App\Controllers\src\ApiController;
use App\Services\storages\UserStorage;
use App\Services\storages\AnneeScolaireStorage;

class homeApiController extends ApiController
{
    public function session($key, $value): void
    {
        $session = new Session();
        $session->set($key, $value);
        $this->response(["res" => "ok", "data" => $session->get($key)]);
    }
    public function annee($annee): void
    {
        AnneeScolaireStorage::setAnnee($annee);
        $this->response(["res" => "ok", "data" => AnneeScolaireStorage::getAnnee()]);
    }

    public function translate($text): void
    {
        $this->response([ "res" => __($text)]);
    }

    public function langue($langue): void
    {
        LangueStorage::setLangue($langue);
        $this->response(["res" => "ok", "data" => LangueStorage::getLangue()]);
    }

    public function login() {
        $name=$_REQUEST['name']??null;
    $password=$_REQUEST['password']??null;
    if ($password) {
        $password=sha1($password);
    }
    $res = UserStorage::setUser($name,$password);
    if($res) {
        $this->response(["res" => "ok", "data" => $res]);
    } else {
        $this->response(["res" => "error", "data" => "Invalid credentials"]);
    }
}
public function logout() {
    UserStorage::unsetUser();
    $this->response(["res" => "ok"]);
}

public function toggleDark() {
    DarkStorage::toggleDark();
    $this->response(["res" => "ok", "data" => DarkStorage::getDark()]);
}

public function search($search) {
   $model= new SalleClasseRepository();
   $classes=$model->findAll();
   $result=[];
   foreach ($classes as $class) {
       if (str_contains(strtoupper($class->pseudoSalleClasse), strtoupper($search))) {
        $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($class->pseudoSalleClasse));
          $class->result="<li title='Classe'>
          <span>$r <b>(Classe)</b></span>
          <a class='link' href='?p=salleclasse/profil/$class->codeSalleClasse'>$class->pseudoSalleClasse</a>
          </li>";
           $result[]=$class;
       }
    elseif (str_contains(strtoupper($class->codeSalleClasse), strtoupper($search))) {
       $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($class->codeSalleClasse));
        $class->result="<li title='Classe'>
       <span>$r <b>(Classe)</b></span>
       <a class='link' href='?p=salleclasse/profil/$class->codeSalleClasse'>$class->pseudoSalleClasse</a>
       </li>";
        $result[]=$class;
    }
   }
   $res=array_reduce($result, function ($a,$b)  {
    $v=$b->result;
    return "$a  $v <hr>";
    }, '');
$model=new EleveRepository();
$eleves=$model->findAll();

$result=[];
foreach ($eleves as $eleve) {
    if (str_contains(strtoupper($eleve->nom), strtoupper($search))) {
     $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($eleve->nom));
       $eleve->result="<li title='".__('Eleve')."'>
       <span>$r <b>(".__('Eleve').")</b></span>
       <a class='link' href='?p=eleve/profil/$eleve->matricule'>$eleve->nom
       <br>
       $eleve->isme
       </a>
       </li>";
        $result[]=$eleve;
    } 
    elseif (str_contains(strtoupper($eleve->isme), strtoupper($search))) {
     $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($eleve->isme));
       $eleve->result="<li title='".__('Eleve')."'>
       <span>$r <b>(".__('Eleve').")</b></span>
       <a class='link' href='?p=eleve/profil/$eleve->matricule'>$eleve->nom
       <br>
       $eleve->isme
       </a>
       </li>";
        $result[]=$eleve;
    }
 elseif (str_contains(strtoupper($eleve->matricule), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($eleve->matricule));
     $eleve->result="<li title='".__('Eleve')."'>
    <span>$r <b>(".__('Eleve').")</b></span>
    <a class='link' href='?p=eleve/profil/$eleve->matricule'>$eleve->nom
    <br>
    $eleve->isme
    </a>
    </li>";
     $result[]=$eleve;
 }elseif (str_contains(strtoupper($eleve->nni), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($eleve->nni));
     $eleve->result="<li title='".__('Eleve')."'>
    <span>$r <b>(".__('Eleve').")</b></span>
    <a class='link' href='?p=eleve/profil/$eleve->matricule'>$eleve->nom
    <br>
    $eleve->isme
    </a>
    </li>";
     $result[]=$eleve;
 }
}
$res.=array_reduce($result, function ($a,$b)  {
    $v=$b->result;
    return "$a  $v <hr>";
    }, '');
    
$model=new ProfesseurRepository();
$profs=$model->findAll();

$result=[];
foreach ($profs as $prof) {
    if (str_contains(strtoupper($prof->nomProfesseur), strtoupper($search))) {
     $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($prof->nomProfesseur));
       $prof->result="<li title='".__('Professeur')."'>
       <span>$r <b>(".__('Professeur').")</b></span>
       <a class='link' href='?p=professeur/profil/$prof->matriculeProfesseur'>$prof->nomProfesseur
       <br>
       $prof->ismeProfesseur
       </a>
       </li>";
        $result[]=$prof;
    } 
    elseif (str_contains(strtoupper($prof->ismeProfesseur), strtoupper($search))) {
     $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($prof->ismeProfesseur));
       $prof->result="<li title='  Professeur'>
       <span>$r <b>(".__('Professeur').")</b></span>
       <a class='link' href='?p=professeur/profil/$prof->matriculeProfesseur'>$prof->nomProfesseur
       <br>
       $prof->ismeProfesseur
       </a>
       </li>";
        $result[]=$prof;
    }
 elseif (str_contains(strtoupper($prof->matriculeProfesseur), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($prof->matriculeProfesseur));
     $prof->result="<li title='".__('Professeur')."'>
    <span>$r <b>(".__('Professeur').")</b></span>
    <a class='link' href='?p=professeur/profil/$prof->matriculeProfesseur'>$prof->nomProfesseur
    <br>
    $prof->ismeProfesseur
    </a>
    </li>";
     $result[]=$prof;
 }elseif (str_contains(strtoupper($prof->nniProfesseur), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($prof->nniProfesseur));
     $prof->result="<li title='".__('Professeur')."'>
    <span>$r <b>(".__('Professeur').")</b></span>
    <a class='link' href='?p=professeur/profil/$prof->matriculeProfesseur'>$prof->nomProfesseur
    <br>
    $prof->ismeProfesseur
    </a>
    </li>";
     $result[]=$prof;
 }elseif (str_contains(strtoupper($prof->emailProfesseur), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($prof->emailProfesseur));
     $prof->result="<li title='".__('Professeur')."'>
    <span>$r <b>(".__('Professeur').")</b></span>
    <a class='link' href='?p=professeur/profil/$prof->matriculeProfesseur'>$prof->nomProfesseur
    <br>
    $prof->ismeProfesseur
    </a>
    </li>";
     $result[]=$prof;
 }elseif (str_contains(strtoupper($prof->telProfesseur), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($prof->telProfesseur));
     $prof->result="<li title='".__('Professeur')."'>
    <span>$r <b>(".__('Professeur').")</b></span>
    <a class='link' href='?p=professeur/profil/$prof->matriculeProfesseur'>$prof->nomProfesseur
    <br>
    $prof->ismeProfesseur
    </a>
    </li>";
     $result[]=$prof;
 }
}   
$model=new correspondantRepository();
$correspondants=$model->findAll();

$result=[];
foreach ($correspondants as $correspondant) {
    if (str_contains(strtoupper($correspondant->nomCorrespondant), strtoupper($search))) {
     $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($correspondant->nomCorrespondant));
       $correspondant->result="<li title='".__('Correspondant')."'>
       <span>$r <b>(".__('Correspondant').")</b></span>
       <a class='link' href='?p=correspondant/profil/$correspondant->idCorrespondant'>$correspondant->nomCorrespondant
       <br>
       $correspondant->ismeCorrespondant
       </a>
       </li>";
        $result[]=$correspondant;
    } 
    elseif (str_contains(strtoupper($correspondant->ismeCorrespondant), strtoupper($search))) {
     $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($correspondant->ismeCorrespondant));
       $correspondant->result="<li title='  Professeur'>
       <span>$r <b>(".__('Professeur').")</b></span>
       <a class='link' href='?p=correspondant/profil/$correspondant->idCorrespondant'>$correspondant->nomCorrespondant
       <br>
       $correspondant->ismeCorrespondant
       </a>
       </li>";
        $result[]=$correspondant;
    }
 elseif (str_contains(strtoupper($correspondant->nniCorrespondant), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($correspondant->nniCorrespondant));
     $correspondant->result="<li title='".__('Correspondant')."'>
    <span>$r <b>(".__('Correspondant').")</b></span>
    <a class='link' href='?p=correspondant/profil/$correspondant->idCorrespondant'>$correspondant->nomCorrespondant
    <br>
    $correspondant->ismeCorrespondant
    </a>
    </li>";
     $result[]=$correspondant;
 }elseif (str_contains(strtoupper($correspondant->emailCorrespondant), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($correspondant->emailCorrespondant));
     $correspondant->result="<li title='".__('Correspondant')."'>
    <span>$r <b>(".__('Correspondant').")</b></span>
    <a class='link' href='?p=correspondant/profil/$correspondant->idCorrespondant'>$correspondant->nomCorrespondant
    <br>
    $correspondant->ismeCorrespondant
    </a>
    </li>";
     $result[]=$correspondant;
 }elseif (str_contains(strtoupper($correspondant->telCorrespondant), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($correspondant->telCorrespondant));
     $correspondant->result="<li title='".__('Correspondant')."'>
    <span>$r <b>(".__('Correspondant').")</b></span>
    <a class='link' href='?p=correspondant/profil/$correspondant->idCorrespondant'>$correspondant->nomCorrespondant
    <br>
    $correspondant->ismeCorrespondant
    </a>
    </li>";
     $result[]=$correspondant;
 }
}
$res.=array_reduce($result, function ($a,$b)  {
    $v=$b->result;
    return "$a  $v <hr>";
    }, '');



   $res=!empty($res)?"<ul>$res</ul>":"<p>".__("Aucun resultat")."</p>";
   $this->response($res);
}
}
