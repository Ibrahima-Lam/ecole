<?php
namespace App\Services\Providers;

abstract class BulletinProviderParent extends ResultatProvider {

   
    abstract public function getMoyenne():float;
    public function getMension():string{
        $moyenne=$this->getMoyenne();
        if($moyenne<5){
            return "Trés Faible";
        }elseif($moyenne<9){
            return "Faible";
        }elseif($moyenne<12){
            return "Passable";
        }elseif($moyenne<14){
            return "Bien";
        }elseif($moyenne<16){
            return "Assez Bien";
        }else{
            return "Trés Bien";
        }

    }

    public function getDecision():string{
        $moyenne=$this->getMoyenne();
        if($moyenne<9){
            return "Non Admis";
        }else{
            return "Admis";
        }
    }
    
}