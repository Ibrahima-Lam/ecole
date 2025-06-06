<?php

namespace App\Controllers\https;

use App\Models\Repositories\correspondanceRepository;
use App\Models\Repositories\correspondantRepository;
use Core\Controllers\Controller;

class CorrespondantController extends Controller
{
    public function liste()
    {
        $correspondanceRepository = new correspondantRepository();
        $correspondants = $correspondanceRepository->findAll();
        $this->render('correspondant/liste', ['correspondants' => $correspondants]);
    }

    public function traitementImage(): void
    {
        $id=$_REQUEST['id'];
        $model = new correspondantRepository();
        if(isset($_FILES['image']) && $_FILES['image']['error'] == 0){
            move_uploaded_file($_FILES['image']['tmp_name'], "profiles/correspondant/img_C$id.jpg");
            $model->updateImage($id,"img_C$id.jpg");
            $this->redirect("?p=correspondant/profil/$id");
        }
    }
    public function profil($id)
    {
        $correspondanceRepository = new correspondantRepository();
        $correspondant = $correspondanceRepository->findOneById($id);
        $this->render('correspondant/profil', ['correspondant' => $correspondant]);
    }
     public function correspondance()
    {
        $correspondanceRepository = new correspondanceRepository();
        $correspondants = $correspondanceRepository->findAll();
        $this->render('correspondant/correspondance', ['correspondants' => $correspondants]);
    }
}