<?php

namespace App\Controllers\apis;

use App\Models\Repositories\EleveRepository;
use App\Models\Repositories\SalleClasseRepository;
use Core\Caches\Session;
use Core\Controllers\Controller;
use App\Services\factories\UserFactory;

class homeApiController extends Controller
{
    public function session($key, $value): void
    {
        $session = new Session();
        $session->set($key, $value);
        $this->response(["res" => "ok", "data" => $session->get($key)]);
    }

    public function login() {
        $name=$_REQUEST['name']??null;
    $password=$_REQUEST['password']??null;
    if ($password) {
        $password=sha1($password);
    }
    $res = UserFactory::setUser($name,$password);
    if($res) {
        $this->response(["res" => "ok", "data" => $res]);
    } else {
        $this->response(["res" => "error", "data" => "Invalid credentials"]);
    }
}
public function logout() {
    UserFactory::unsetUser();
    $this->response(["res" => "ok"]);
}

public function search($search) {
   $model= new SalleClasseRepository();
   $classes=$model->findAll();
   $result=[];
   foreach ($classes as $class) {
       if (str_contains(strtoupper($class->pseudoSalleClasse), strtoupper($search))) {
        $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($class->pseudoSalleClasse));
          $class->result="<li>
          <span>$r</span>
          <a class='link' href='?p=salleclasse/profil/$class->codeSalleClasse'>$class->pseudoSalleClasse</a>
          </li>";
           $result[]=$class;
       }
    elseif (str_contains(strtoupper($class->codeSalleClasse), strtoupper($search))) {
       $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($class->codeSalleClasse));
        $class->result="<li>
       <span>$r</span>
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
       $eleve->result="<li>
       <span>$r</span>
       <a class='link' href='?p=eleve/profil/$eleve->matricule'>$eleve->nom
       <br>
       $eleve->isme
       </a>
       </li>";
        $result[]=$eleve;
    } 
    elseif (str_contains(strtoupper($eleve->isme), strtoupper($search))) {
     $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($eleve->isme));
       $eleve->result="<li>
       <span>$r</span>
       <a class='link' href='?p=eleve/profil/$eleve->matricule'>$eleve->nom
       <br>
       $eleve->isme
       </a>
       </li>";
        $result[]=$eleve;
    }
 elseif (str_contains(strtoupper($eleve->matricule), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($eleve->matricule));
     $eleve->result="<li>
    <span>$r</span>
    <a class='link' href='?p=eleve/profil/$eleve->matricule'>$eleve->nom
    <br>
    $eleve->isme
    </a>
    </li>";
     $result[]=$eleve;
 }elseif (str_contains(strtoupper($eleve->nni), strtoupper($search))) {
    $r=str_replace(strtoupper($search),"<mark>$search</mark>",strtoupper($eleve->nni));
     $eleve->result="<li>
    <span>$r</span>
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



   $res=!empty($res)?"<ul>$res</ul>":"<p>Aucun resultat</p>";
   $this->response($res);
}
}
