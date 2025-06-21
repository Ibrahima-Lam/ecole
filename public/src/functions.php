<?php

use App\Models\Repositories\AnneeScolaireRepository;
use App\Services\factories\AnneeFactory;
use App\Services\factories\DarkFactory;
use App\Services\factories\LangueFactory;
use App\Services\factories\UserFactory;
use Core\Services\html\htmlService;
use Core\src\ResponseApi;
use Core\src\View;
putenv("LANGUAGE=en_US");
bindtextdomain("messages", "./locales");
bind_textdomain_codeset("messages", "UTF-8");
textdomain("messages");

function __($str){
    $lang = LangueFactory::getLangue();
    $file = "./languages/$lang.json";
    if (file_exists($file)) {
        $data = json_decode(file_get_contents($file), true);
        return $data[$str] ?? $str;
    }
    return $str;
}

function __format($str,...$values){
    return sprintf(__($str),...$values);
}

$model=new AnneeScolaireRepository();
 $params=[
    "_auth"=>UserFactory::getUser()??false,
    "_admin"=>UserFactory::isAdmin(),
    "_user"=>UserFactory::getUser(),
    "_langue"=>LangueFactory::getLangue(),
    "_annee"=>htmlService::options($model->findAll(), "codeAnnee", "nomAnnee", AnneeFactory::getAnnee()),
    "_dark"=>DarkFactory::getDark(),
    "_schoolName"=>"Etablissement",
    "_schoolNameAr"=>"المدرسة",
 ];
function view($path,$data=[]){
    global $params;
    $view=new View($params);
    $view->render($path,$data);
}
function pdf($file,$data=[],$options=[]){
    global $params;
    $view=new View($params);
    $view->renderPDF($file,$data,$options);
}
function raw($file,$data=[]){
    global $params;
    $view=new View($params);
    $view->raw($file,$data);
}
function rawPDF($file,$data=[]){
    global $params;
    $view=new View($params);
    $view->rawPDF($file,$data);
}
function response(){
    $response=new ResponseApi();
 return $response;
}


