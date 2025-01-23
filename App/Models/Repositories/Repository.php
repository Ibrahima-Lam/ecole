<?php

namespace App\Models\Repositories;

use Core\Services\Database;

abstract class Repository
{
    protected $db;
    public function __construct()
    {
        $this->db = new Database();
    }
}
