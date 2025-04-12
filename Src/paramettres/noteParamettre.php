<?php
namespace Src\Paramettres;
class NoteParamettre
{
    public  $matricule;
    public  $numero;
    public  $nom;
    public  $isme;
    public  $nom_isme;
    public  $sort;
    public  $order;
    
    public function __construct() {
        $this->matricule=true;
        $this->numero=true;
        $this->nom=true;
        $this->isme=true;
        $this->nom_isme=false;
        $this->sort="numero";
        $this->order="ASC";
    }
    
    public function setFromArray($data)
    {
        $this->matricule = $data['matricule']??false;
    $this->numero = $data['numero']??false;
    $this->nom = $data['nom']??false;
    $this->isme = $data['isme']??false;
    $this->nom_isme = $data['nom_isme']??false;
    $this->sort = $data['sort']??$this->sort;
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
            'sort' => $this->sort,
            'order' => $this->order
        ];
    }
}