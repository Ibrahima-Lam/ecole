<?php
namespace Core\src;
class Middleware extends View
{
    public $middleware=[];
    public function __construct(array $params=[])
    {
        parent::__construct($params);
    }
    public function add($middleware,$callback){
        $this->middleware[$middleware]=$callback;
    }
    public function handle($middleware):self{
        if(isset($this->middleware[$middleware])){
            $this->middleware[$middleware]();
        }
        return $this;
    }
}