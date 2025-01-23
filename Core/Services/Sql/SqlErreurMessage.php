<?php
namespace Core\Services\Sql;

class SqlErreurMessage
{
    private $code;
    public function __construct($code)
    {
        $this->code = $code;
    }

    public function getCode()
    {   
        return $this->code;
    }

    public function setCode($code)
    {
        $this->code = $code;
    }

                public static function getMessage(int $code): string
                {
                    return match($code) {
                        1062 => "Cette entrée existe déjà",
                        1451 => "Cette entrée est liée à d'autres données",
                        1452 => "Cette référence n'existe pas",
                        1406 => "Les données sont trop longues",
                        1048 => "Certains champs requis sont vides",
                        default => "Une erreur s'est produite"
                    };
                }
            }