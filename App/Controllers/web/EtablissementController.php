<?php
namespace App\Controllers\web;
use App\Controllers\src\WebController;
use App\Models\Entities\EtablissementEntity;
use App\Services\src\EtablissementService;

class EtablissementController extends WebController
{
    public function index(EtablissementService $service)
    {
        $etablissement = $service->getEtablissement();
        $exist = $service->existEtablissement();
        return view('etablissement/home', compact('etablissement','exist'));
    }

    public function create()
    {
        $etablissement=EtablissementService::getInstance()->getEtablissement();
        return middleware('role')->render('etablissement/create', compact('etablissement'));
    }

    public function store()
    {
        $edit=EtablissementService::getInstance()->existEtablissement();
        $etablissement =$edit ? EtablissementService::getInstance()->getEtablissement() : new EtablissementEntity();
        $etablissement->setNomEtablissement($_POST['nomEtablissement']);
        $etablissement->setIsmeEtablissement($_POST['ismeEtablissement']);
        $etablissement->setAdresseEtablissement($_POST['adresseEtablissement']);
        $etablissement->setVilleEtablissement($_POST['villeEtablissement']);
        $etablissement->setTelEtablissement($_POST['telEtablissement']);
        $etablissement->setEmailEtablissement($_POST['emailEtablissement']);
        $etablissement->setImagePathEtablissement($_POST['imagePathEtablissement']);
        $service = EtablissementService::getInstance();
        if ($edit) {
            $service->update($etablissement);
        } else {
            $service->insert($etablissement);
        }
        return redirect("?p=etablissement/index");
    }
}