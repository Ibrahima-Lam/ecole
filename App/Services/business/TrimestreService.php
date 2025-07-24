<?php

namespace App\Services\business;

use App\Utilities\enums\Trimestre;

class TrimestreService
{
  static  public function getCurrentTrimestre()
    {
       $today = new \DateTime();
       $currentMonth = (int)$today->format('m');
       if($currentMonth>=8) return Trimestre::Trimestre1;
       if($currentMonth>=3) return Trimestre::Trimestre3;
       else return Trimestre::Trimestre2;
    }

    static public function getDates()
    {
      $today = new \DateTime();
      $currentMonth = (int)$today->format('m');
      $currentYear = (int)$today->format('Y');
  
      if ($currentMonth >= 9 && $currentMonth <= 12) {
          $defaultDateDebut = new \DateTime("$currentYear-09-01");
          $defaultDateFin = new \DateTime("$currentYear-12-31");
      } elseif ($currentMonth >= 1 && $currentMonth <= 3) {
          $defaultDateDebut = new \DateTime("$currentYear-01-01");
          $defaultDateFin = new \DateTime("$currentYear-03-31");
      } elseif ($currentMonth >= 4 && $currentMonth <= 6) {
          $defaultDateDebut = new \DateTime("$currentYear-04-01");
          $defaultDateFin = new \DateTime("$currentYear-06-30");
      } else {
          $defaultDateDebut = new \DateTime('first day of this month');
          $defaultDateFin = new \DateTime('last day of this month');
      }
      return [$defaultDateDebut->format('Y-m-d'), $defaultDateFin->format('Y-m-d')];
        
    }
}