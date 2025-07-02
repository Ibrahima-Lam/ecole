<?php
namespace Src\paramettres;

class ReleveParamettre{
    public  $matricule=false;
    public  $numero=true;
    public  $nom=true;
    public  $isme=true;
    public  $nom_isme=true;
    public  $nni=false;
    public  $merite=false;
    public  $striped=true;
    public  $bordered=false;
    public  $moyenne=false;
    public  $coefficient=false;
    public  $moyenne_interro=false;
    public  $points=false;
    public  $rang=true;
    public  $total=false;
    public  $statistiques=true;

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
        $this->moyenne = $data['moyenne']??false;
        $this->coefficient = $data['coefficient']??false;
        $this->moyenne_interro = $data['moyenne_interro']??false;
        $this->points = $data['points']??false;
        $this->total = $data['total']??false;
        $this->striped = $data['striped']??false;
        $this->bordered = $data['bordered']??false;
        $this->statistiques = $data['statistiques']??false;
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
            'moyenne' => $this->moyenne,
            'coefficient' => $this->coefficient,
            'points' => $this->points,
            'total' => $this->total,
            'moyenne_interro' => $this->moyenne_interro,
            'striped' => $this->striped,
            'bordered' => $this->bordered,
            'statistiques' => $this->statistiques,
            'orientation' => $this->orientation,
            'sort' => $this->sort,
            'order' => $this->order
        ];
    }
}
     