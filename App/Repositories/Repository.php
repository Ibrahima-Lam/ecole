<?php

namespace App\Repositories;

use Core\Data\Database;

abstract class Repository
{
    protected $db;
    public function __construct()
    {
        $this->db = new Database();
    }
}
