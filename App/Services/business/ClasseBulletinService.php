<?php
namespace App\Services\business;
use App\Repositories\ClasseMatiereRepository;
use App\Repositories\inscritRepository;
use App\Repositories\SalleClasseRepository;
use App\Services\src\AbsenceService;
use App\Services\src\AnneeScolaireService;
use App\Entities\Bulletin;
use App\Entities\ClasseStatistique;

class ClassebulletinService
{
    private $salleclasse;
    private $eleves=[];
    private $bulletins3=[];
    private $bulletins2=[];
    private $bulletins1=[];

    private $matieres=[];
    public function __construct(private AnneeScolaireService $anneeScolaireService,private AbsenceService $absenceService,private $codeSalleClasse=null) {
    $ripos=new SalleClasseRepository();
    $this->salleclasse=$codeSalleClasse?$ripos->findOneByCode($codeSalleClasse):null;
    $this->setMatieres();
  }

    public function setMatieres(){
      if ($this->salleclasse) {
        $this->matieres=(new ClasseMatiereRepository())->findAllByClasseAndAnnee($this->salleclasse->codeClasse,$this->anneeScolaireService->getCodeAnnee());
      }
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
      
        $bulletinService=new bulletinService($this->anneeScolaireService,$this->absenceService,$eleve->matricule);
        $this->bulletins3[$eleve->matricule]=$bulletinService->getBulletin3($tab);
    }
    return $this->bulletins3;
  }
  public function getBulletins2($tab=[]){
  if($tab) foreach ($this->bulletins2 as $bulletin) {
      $bulletin->setPointsTab($tab);
    }
    if(!empty($this->bulletins2))return $this->bulletins2;
    foreach ($this->getEleves() as $eleve) {
        $bulletinService=new bulletinService($this->anneeScolaireService,$this->absenceService,$eleve->matricule);
        $this->bulletins2[$eleve->matricule]=$bulletinService->getBulletin2($tab);
    }
    return $this->bulletins2;
  }
  public function getBulletins1($tab=[]){
  if($tab) foreach ($this->bulletins1 as $bulletin) {
      $bulletin->setPointsTab($tab);
    }
    if(!empty($this->bulletins1))return $this->bulletins1;
    foreach ($this->getEleves() as $eleve) {
        $bulletinService=new bulletinService($this->anneeScolaireService,$this->absenceService,$eleve->matricule);
        $this->bulletins1[$eleve->matricule]=$bulletinService->getBulletin1($tab);
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
  public function getStatistiques($type,$tab=[]):ClasseStatistique{
    
   $data= match ($type) {
        1 => $this->getBulletins1($tab),
        2 => $this->getBulletins2($tab),
        default => $this->getBulletins3($tab),
    };
    
    $statistiques=new ClasseStatistique();
    $statistiques->effectif=count($data);
    $statistiques->admis=count(array_filter($data, fn($bulletin) => $bulletin->getDecision()==Bulletin::DECISION_ADMIS));
    $statistiques->nonAdmis=count(array_filter($data, fn($bulletin) => $bulletin->getDecision()==Bulletin::DECISION_NON_ADMIS));
    $statistiques->mentionTresFaible=count(array_filter($data, fn($bulletin) => $bulletin->getMension()==Bulletin::MENTION_TRES_FAIBLE));
    $statistiques->mentionFaible=count(array_filter($data, fn($bulletin) => $bulletin->getMension()==Bulletin::MENTION_FAIBLE));
    $statistiques->mentionPassable=count(array_filter($data, fn($bulletin) => $bulletin->getMension()==Bulletin::MENTION_PASSABLE));
    $statistiques->mentionBien=count(array_filter($data, fn($bulletin) => $bulletin->getMension()==Bulletin::MENTION_BIEN));
    $statistiques->mentionAssezBien=count(array_filter($data, fn($bulletin) => $bulletin->getMension()==Bulletin::MENTION_ASSEZ_BIEN));
    $statistiques->mentionTresBien=count(array_filter($data, fn($bulletin) => $bulletin->getMension()==Bulletin::MENTION_TRES_BIEN));
    return $statistiques;
 }
}