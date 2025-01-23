<?php

namespace Core\Services\html;

class htmlService
{
    static function options(array $data, string $val, string $label, ?string $selected = null, array $desableds = [], bool $filter = false): string
    {
        if ($filter&& $selected) {
            $tab = [];
            foreach ($data as $value) {
                $key = is_array($value) ? $value[$val] : $value->$val;
                if ($key != $selected) continue;
                $tab[] = $value;
            }
            $data = $tab;
        }


        $html = "";
        foreach ($data as $value) {
            $key = is_array($value) ? $value[$val] : $value->$val;
            $lab = is_array($value) ? $value[$label] : $value->$label;
            $desabled = (in_array($key, $desableds)) ? "disabled" : "";
            $s = $key == $selected ? "selected" : "";
            $html .= "<option value='$key' $s>$lab</option>";
        }
        return $html;
    }
}
