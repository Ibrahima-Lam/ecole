<?php
namespace Src\Factories;
use Src\Paramettres\BulletinParamettre;

class BulletinParamettreFactory
{
    private const PATH = 'res\bulletin\bulletinParam.txt';
    public static function getBulletinParam():BulletinParamettre
    {
        $param=new BulletinParamettre();
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
    public static function setBulletinParam(array $bulletinParam): void
    {
        $param = new BulletinParamettre();
        $param->setFromArray($bulletinParam);
        $data = serialize($param->getArray());
        file_put_contents(self::PATH, $data);
    }
}
?>
    
