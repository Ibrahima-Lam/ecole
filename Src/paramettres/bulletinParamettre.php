<?php
namespace Src\paramettres;

class bulletinParamettre{
    public  $matricule=false;
    public  $numero=true;
    public  $nom=true;
    public  $isme=true;
    public  $nom_isme=true;
    public  $nni=false;
    public  $merite=false;
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
            'striped' => $this->striped,
            'bordered' => $this->bordered,
            'orientation' => $this->orientation,
            'sort' => $this->sort,
            'order' => $this->order
        ];
    }
}
     