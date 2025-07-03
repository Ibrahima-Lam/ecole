<?php

use App\Repositories\AnneeScolaireRepository;
use App\Services\storages\AnneeScolaireStorage;
use App\Services\storages\DarkStorage;
use App\Services\storages\LangueStorage;
use App\Services\storages\UserStorage;
use App\Services\src\EtablissementService;
use App\Services\src\UserService;
use Core\Services\html\htmlService;
use Core\src\Middleware;
use Core\src\ResponseApi;
use Core\src\View;
putenv("LANGUAGE=en_US");
bindtextdomain("messages", "./locales");
bind_textdomain_codeset("messages", "UTF-8");
textdomain("messages");

function __($str){
    $lang = LangueStorage::getLangue();
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
    "_auth"=>UserStorage::getUser()??false,
    "_admin"=>UserStorage::isAdmin(),
    "_user"=>UserStorage::getUser(),
    "_langue"=>LangueStorage::getLangue(),
    "_annee"=>htmlService::options($model->findAll(), "codeAnnee", "nomAnnee", AnneeScolaireStorage::getAnnee()),
    "_dark"=>DarkStorage::getDark(),
    "_schoolName"=>EtablissementService::getInstance()->getEtablissement()->getNomEtablissement(),
    "_schoolNameAr"=>EtablissementService::getInstance()->getEtablissement()->getIsmeEtablissement(),
 ];
function view($path,$data=[]){
    global $params;
    $view=new View($params);
    $view->render($path,$data);
}
function redirect($url){
    global $params;
    $view=new View($params);
    $view->redirect($url);
}

function middleware($param){
    global $params;
    $middleware=new Middleware($params);
    $middleware->add("role",function()use($middleware){
            $service = new UserService();
            if(!$service->isAdmin()){
                $middleware->renderError(__("Acces non autorise"));
            }
        });
    
    return $middleware->handle($param);
}

function error($message){
    global $params;
    $view=new View($params);
    $view->renderError($message);
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


