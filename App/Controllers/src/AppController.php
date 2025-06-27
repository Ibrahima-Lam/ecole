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
                $this->responseError(__("Acces non autorise"));
            }
        });
    }

        protected function addMiddleware($middleware,$callback){
            $this->middleware[$middleware]=$callback;
        }

        public function responseError($message){
            http_response_code(500);
            echo $message;
            exit;
        }

        public function middleware($middleware):self{
           
         if(isset($this->middleware[$middleware])){
            $this->middleware[$middleware]();
         }
          return $this;
        }
  
}
