<?php
namespace Core\Enums;
            
enum SQLErrors: int
{
    case DUPLICATE_ENTRY = 1062;
    case FOREIGN_KEY_CONSTRAINT = 1451;
    case CANNOT_DELETE_PARENT_ROW = 1451;
    case CANNOT_ADD_FOREIGN_KEY_CONSTRAINT = 1452;
    case DATA_TOO_LONG = 1406;
    case COLUMN_CANNOT_BE_NULL = 1048;
    
    public function message(): string 
    {
        return match($this) {
            self::DUPLICATE_ENTRY => "Cette entrée existe déjà",
            self::FOREIGN_KEY_CONSTRAINT => "Cette entrée est liée à d'autres données",
            self::CANNOT_DELETE_PARENT_ROW => "Impossible de supprimer cette entrée car elle est liée à d'autres données",
            self::CANNOT_ADD_FOREIGN_KEY_CONSTRAINT => "Cette référence n'existe pas",
            self::DATA_TOO_LONG => "Les données sont trop longues",
            self::COLUMN_CANNOT_BE_NULL => "Certains champs requis sont vides",
        };
    }

   
}