<?php
namespace Core\Services;
class Logger
{
    public function log($msg)
    {
        echo "[LOG] $msg\n";
    }
}