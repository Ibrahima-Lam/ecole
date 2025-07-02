<?php
namespace Core\src;
class ResponseApi 
{
   

 

    public function json($data)
    {
        if (!($_auth??true)){echo json_encode(["error"=>"Unauthorized"]);
        exit();}
        if (is_scalar($data))
            echo $data;
        else
            echo json_encode($data, true);
        return $this;
    }  public function text($data)
    {
        if (!($_auth??true)){echo print_r(["error"=>"Unauthorized"]);exit();}
        if (is_scalar($data))
            echo $data;
        else
            echo print_r($data, true);
        return $this;
    }
}
