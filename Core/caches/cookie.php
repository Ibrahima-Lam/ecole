<?php

namespace Core\Caches;

class Cookie
{
    private int $expire;
    public function __construct()
    {
        $this->expire = time() + 30 * 24 * 60 * 60;
    }


    public function get($key)
    {
        return $_COOKIE[$key]??null;
    }
    public function set($key, $value)
    {
        setcookie($key, $value, $this->expire);
    }

    public function delete($key)
    {
        setcookie($key);
    }
    function clear()
    {
        $_COOKIE = [];
    }
}
