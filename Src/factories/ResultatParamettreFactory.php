<?php
namespace Src\Factories;
use Src\Paramettres\ResultatParamettre;

class ResultatParamettreFactory
{
    private const PATH = 'res\resultat\resultatParam.txt';
    public static function getResultatParam():ResultatParamettre
    {
        $param=new ResultatParamettre();
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
    public static function setResultatParam(array $resultatParam): void
    {
        $param = new ResultatParamettre();
        $param->setFromArray($resultatParam);
        $data = serialize($param->getArray());
        file_put_contents(self::PATH, $data);
    }
}
?>
    
