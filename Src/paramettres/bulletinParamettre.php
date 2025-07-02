<?php
namespace Src\paramettres;

use App\Services\src\AnneeScolaireService;
use App\Services\src\EtablissementService;

class bulletinParamettre{
    public  $matricule=false;
    public  $numero=true;
    public  $nom=true;
    public  $isme=true;
    public  $nom_isme=true;
    public  $nni=false;
    public  $merite=false;
    public  $rang=true;
    public  $decision=true;
    public  $mention=true;
    public  $mention_decision=false;
    public  $absences=true;
    public  $observations=true;
    public  $image=false;
    public  $striped=true;
    public  $bordered=false;


    public  $orientation="portrait";
    public  $sort="numero";

    public  $order="ASC";


    
    public function setFromArray(array $data)
    {
        $this->matricule = $data['matricule']??false;
        $this->numero = $data['numero']??false;
        $this->nom = $data['nom']??false;
        $this->nni = $data['nni']??false;
        $this->isme = $data['isme']??false;
        $this->nom_isme = $data['nom_isme']??false;
        $this->merite = $data['merite']??false;
        $this->rang = $data['rang']??false; 
        $this->decision = $data['decision']??true;
        $this->mention = $data['mention']??true;
        $this->mention_decision = $data['mention_decision']??true;
        $this->absences = $data['absences']??true;
        $this->observations = $data['observations']??true;
        $this->image = $data['image']??false;
        $this->striped = $data['striped']??false;
        $this->bordered = $data['bordered']??false;
        $this->sort = $data['sort']??$this->sort;
        $this->orientation = $data['orientation']??$this->orientation;
    $this->order = $data['order']??$this->order;
}
    
    public function getArray()
    {
        return [
            'matricule' => $this->matricule,
            'numero' => $this->numero,
            'nom' => $this->nom,
            'isme' => $this->isme,
            'nom_isme' => $this->nom_isme,
            'nni' => $this->nni,
            'merite' => $this->merite,
            'rang' => $this->rang,
            'decision' => $this->decision,
            'mention' => $this->mention,
            'mention_decision' => $this->mention_decision,
            'absences' => $this->absences,
            'observations' => $this->observations,
            'image' => $this->image,
            'striped' => $this->striped,
            'bordered' => $this->bordered,
            'orientation' => $this->orientation,
            'sort' => $this->sort,
            'order' => $this->order
        ];
    }

    public static function getEtablissementName()
    {
        return EtablissementService::getInstance()->getEtablissement()->getNomEtablissement();
    }

    public static function getEtablissementNameArabe()
    {
        return EtablissementService::getInstance()->getEtablissement()->getIsmeEtablissement();
    }
    public static function AnneeScolaire()
    {
        return AnneeScolaireService::getInstance()->getAnnee()->nomAnnee;
    }
}
     