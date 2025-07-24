<?php
namespace App\Utilities\enums;
enum Trimestre: int
{
    case Trimestre1 = 1;
    case Trimestre2 = 2;
    case Trimestre3 = 3;

    public function __toString(): string
    {
        return match ($this) {
            self::Trimestre1 => "Trimestre 1",
            self::Trimestre2 => "Trimestre 2",
            self::Trimestre3 => "Trimestre 3",
        };
    }

    public function getNumber(): int
    {
        return $this->value;
    }

    public function getNext(): Trimestre
    {
        return match ($this) {
            self::Trimestre1 => self::Trimestre2,
            self::Trimestre2 => self::Trimestre3,
            self::Trimestre3 => self::Trimestre1,
        };
    }

    public function getPrevious(): Trimestre
    {
        return match ($this) {
            self::Trimestre1 => self::Trimestre3,
            self::Trimestre2 => self::Trimestre1,
            self::Trimestre3 => self::Trimestre2,
        };
    }
    public function getDates(): array
    {
        $today = new \DateTime();
        $currentMonth = (int)$today->format('m');
        $currentYear = (int)$today->format('Y');
$year1 =$currentMonth<8 ? $currentYear - 1 : $currentYear;
$year2 =$currentMonth>=8 ? $currentYear  : $currentYear+1;
        return match ($this) {
            self::Trimestre1 => [$year1."-09-01", $year1."-12-31"],
            self::Trimestre2 => [$year2."-01-01", $year2."-03-31"],
            self::Trimestre3 => [$year2."-04-01", $year2."-06-30"],
        };
    }
}
