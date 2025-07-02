<?php
namespace App\Models\Entities;

class EtablissementEntity
{
    public $idEtablissement;
    public $nomEtablissement="Nom Etablissement";
    public $ismeEtablissement="اسم مدرسة";
    public $adresseEtablissement="";
    public $villeEtablissement="";
    public $telEtablissement="";
    public $emailEtablissement="";
    public $imagePathEtablissement;

    public function getNomEtablissement()
    {
        return $this->nomEtablissement;
    }
    public function getIsmeEtablissement()
    {
        return $this->ismeEtablissement;
    }
    public function getAdresseEtablissement()
    {
        return $this->adresseEtablissement;
    }
    public function getVilleEtablissement()
    {
        return $this->villeEtablissement;
    }
    public function getTelEtablissement()
    {
        return $this->telEtablissement;
    }
    public function getEmailEtablissement()
    {
        return $this->emailEtablissement;
    }
    public function getImagePathEtablissement()
    {
        return $this->imagePathEtablissement;
    }
    public function setNomEtablissement($nomEtablissement)
    {
        $this->nomEtablissement = $nomEtablissement;
    }
    public function setIsmeEtablissement($ismeEtablissement)
    {
        $this->ismeEtablissement = $ismeEtablissement;
    }
    public function setAdresseEtablissement($adresseEtablissement)
    {
        $this->adresseEtablissement = $adresseEtablissement;
    }
    public function setVilleEtablissement($villeEtablissement)
    {
        $this->villeEtablissement = $villeEtablissement;
    }
    public function setTelEtablissement($telEtablissement)
    {
        $this->telEtablissement = $telEtablissement;
    }
    public function setEmailEtablissement($emailEtablissement)
    {
        $this->emailEtablissement = $emailEtablissement;
    }
    public function setImagePathEtablissement($imagePathEtablissement)
    {
        $this->imagePathEtablissement = $imagePathEtablissement;
    }
}