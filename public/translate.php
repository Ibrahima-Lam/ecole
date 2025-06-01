<?php

use App\Services\factories\LangueFactory;
putenv("LANGUAGE=en_US");
bindtextdomain("messages", "./locales");
bind_textdomain_codeset("messages", "UTF-8");
textdomain("messages");

function __($str){
    $lang = LangueFactory::getLangue();
    $file = "./languages/$lang.json";
    if (file_exists($file)) {
        $data = json_decode(file_get_contents($file), true);
        return $data[$str] ?? $str;
    }
    return $str;
}

function __format($str,...$values){
  return sprintf(__($str),...$values);
}

