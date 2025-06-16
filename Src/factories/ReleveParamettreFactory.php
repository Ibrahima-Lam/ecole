<?php
namespace Src\Factories;
use Src\Paramettres\ReleveParamettre;

class ReleveParamettreFactory
{
    private const PATH = 'res\resultat\releveParam.txt';
    public static function getReleveParam():ReleveParamettre
    {
        $param=new ReleveParamettre();
        if (!file_exists(self::PATH)) {
            return $param;
        }
        $data = file_get_contents(self::PATH);
        $tab=unserialize($data);
        if (is_array($tab)) {
            $param->setFromArray($tab);
        }
        return  $param;
    }
    public static function setReleveParam(array $releveParam): void
    {
        $param = new ReleveParamettre();
        $param->setFromArray($releveParam);
        $data = serialize($param->getArray());
        file_put_contents(self::PATH, $data);
    }
}
?>
    
