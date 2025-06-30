<?php
namespace App\Controllers\src;

use App\Services\src\UserService;
use Core\Controllers\Controller;

class AppController extends Controller
{
    protected $middleware=[];
   
    public function __construct() {
        parent::__construct();
        $this->addMiddleware('role',function(){
            $service = new UserService();
            if(!$service->isAdmin()){
                $this->renderError(__("Acces non autorise"));
            }
        });
    }

        protected function addMiddleware($middleware,$callback){
            $this->middleware[$middleware]=$callback;
        }

        public function renderError($message){
           $this->render('app/error',compact('message'));
        }

        public function middleware($middleware):self{
           
         if(isset($this->middleware[$middleware])){
            $this->middleware[$middleware]();
         }
          return $this;
        }
  
}
