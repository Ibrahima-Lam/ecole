<?php
namespace Src\Factories;
use Src\Paramettres\NoteParamettre;

class NoteParamettreFactory
{
    private const PATH = 'res\note\noteParam.txt';
    public static function getNoteParam():NoteParamettre
    {
        $param=new NoteParamettre();
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
    public static function setNoteParam(array $noteParam): void
    {
        $param = new NoteParamettre();
        $param->setFromArray($noteParam);
        $data = serialize($param->getArray());
        file_put_contents(self::PATH, $data);
    }
}
?>
    
