<?php

namespace App\Repositories;

use stdClass;

class EvaluationRepository extends Repository
{
   public function findAll(): array
   {
      $sql = "select * from evaluation";
      $result = $this->db->selectAll($sql, stdClass::class);
      return $result;
   }
}

?>