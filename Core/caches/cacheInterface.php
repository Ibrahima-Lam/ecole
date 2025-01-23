<?php

namespace Core\Caches;

interface cacheInterface
{
    public function get($key);
    public function set($key, $value);
    public function delete($key);
    public function clear();
}
