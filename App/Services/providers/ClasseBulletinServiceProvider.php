<?php
namespace App\Services\Providers;
use App\Models\Repositories\inscritRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Services\src\AnneeScolaireService;

class ClasseBulletinServiceProvider
{
    private $salleclasse;
    private $eleves=[];
    private $bulletins3=[];
    private $bulletins2=[];
    private $bulletins1=[];
    public function __construct(private AnneeScolaireService $anneeScolaireService,private $codeSalleClasse=null) {
    $ripos=new SalleClasseRepository();
    $this->salleclasse=$codeSalleClasse?$ripos->findOneByCode($codeSalleClasse):null;
    }

    public function setSalleClasse($codeSalleClasse){
        $this->codeSalleClasse=$codeSalleClasse;
        $ripos=new SalleClasseRepository();
        $this->salleclasse=$ripos->findOneByCode($codeSalleClasse);
    }
  public function getEleves(){
    if(!empty($this->eleves))return $this->eleves;
    $inscritRepository=new inscritRepository();
    $this->eleves=$inscritRepository->findAllByClasse($this->codeSalleClasse);
    return $this->eleves;
  }
  public function getBulletins3($tab=[]){
   if($tab) foreach ($this->bulletins3 as $bulletin) {
      $bulletin->setPointsTab($tab);
    }
    if(!empty($this->bulletins3))return $this->bulletins3;
    foreach ($this->getEleves() as $eleve) {
      
        $bulletinServiceProvider=new bulletinServiceProvider($this->anneeScolaireService,$eleve->matricule);
        $this->bulletins3[$eleve->matricule]=$bulletinServiceProvider->getBulletin3($tab);
    }
    return $this->bulletins3;
  }
  public function getBulletins2($tab=[]){
    foreach ($this->bulletins2 as $bulletin) {
      $bulletin->setPointsTab($tab);
    }
    if(!empty($this->bulletins2))return $this->bulletins2;
    foreach ($this->getEleves() as $eleve) {
        $bulletinServiceProvider=new bulletinServiceProvider($this->anneeScolaireService,$eleve->matricule);
        $this->bulletins2[$eleve->matricule]=$bulletinServiceProvider->getBulletin2();
    }
    return $this->bulletins2;
  }
  public function getBulletins1($tab=[]){
    foreach ($this->bulletins1 as $bulletin) {
      $bulletin->setPointsTab($tab);
    }
    if(!empty($this->bulletins1))return $this->bulletins1;
    foreach ($this->getEleves() as $eleve) {
        $bulletinServiceProvider=new bulletinServiceProvider($this->anneeScolaireService,$eleve->matricule);
        $this->bulletins1[$eleve->matricule]=$bulletinServiceProvider->getBulletin1();
    }
    return $this->bulletins1;
  }

  public function getPoints1(){
    $points=[];
    foreach ($this->getBulletins1() as $bulletin) {
      $points[$bulletin->eleve->matricule]=$bulletin->getPoints();
    }
    return $points;
  }
  public function getPoints2(){
    $points=[];
    foreach ($this->getBulletins2() as $bulletin) {
      $points[$bulletin->eleve->matricule]=$bulletin->getPoints();
    }
    return $points;
  }
  public function getPoints3(){
    $points=[];
   
    foreach ($this->getBulletins3() as $bulletin) {
      $points[$bulletin->eleve->matricule]=$bulletin->getPoints();
    }
  
    return $points;
  }
}