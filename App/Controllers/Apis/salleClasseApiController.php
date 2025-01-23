<?php
namespace App\Controllers\Apis;
use App\Models\Repositories\SalleClasseRepository;


class salleClasseApiController
{
    public function liste($annee=null)
    {
        $model = new SalleClasseRepository();
        $data = $model->findAll($annee);
        echo json_encode($data);
    }
}
?>