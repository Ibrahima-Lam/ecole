<?php 
namespace Src\Paramettres;
use Core\Caches\Cookie;


class ClasseParamettre 
{
    public const CLASSE_KEY = 'classe_paramettre';

    public $matricule=true;
    public $numero=true;
    public $nom=true;
    public $isme=false;
    public $nom_isme=true;
    public $sexe=false;
    public $dateNaissance=false;
    public $lieuNaissance=false;
    public $nni=true;
    public $adresse=false;
   private Cookie $cookie;
   public function __construct($tab=[])
   {
   
      $this->cookie = new Cookie();
   }

   public function getClasse():self
   {
      $string = $this->cookie->get(self::CLASSE_KEY)??'';
      $data=unserialize($string);
      if(!is_object($data)) $data = new self();
     return $data;
   }

   public function setClasse(self $data):void
   {
      $this->cookie->set(self::CLASSE_KEY, serialize($data));
   }
}
?>