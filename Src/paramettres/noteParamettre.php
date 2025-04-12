<?php
namespace Src\Paramettres;
class NoteParamettre
{
    public $matricule=true;
    public $numero=true;
    public $nom=true;
    public $isme=true;
    public $nom_isme=false;
    public $sort="numero";
    public $order="ASC";
    
    public function setFromArray($data)
    {
        foreach ($data as $key => $value) {
            if (property_exists($this, $key)) {
                $this->{$key} = $value;
            }
        }
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