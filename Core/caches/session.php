<?php

namespace Core\Caches;

class Session implements cacheInterface
{
    public function __construct()
    {
        if (session_status() === PHP_SESSION_NONE || session_status() === PHP_SESSION_DISABLED) {
            session_start();
        }
    }


    public function get($key)
    {
        return $_SESSION[$key] ?? null;
    }
    public function set($key, $value)
    {
        $_SESSION[$key] = $value;
    }
    public function delete($key)
    {
        unset($_SESSION[$key]);
    }
    public function clear()
    {
        $_SESSION = [];
    }
}
