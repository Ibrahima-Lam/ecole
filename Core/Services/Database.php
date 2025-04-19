<?php

namespace Core\Services;

use \PDO;

class Database
{
    private $pdo;
    private $prepare;

    public function __construct()
    {
        $params = require("../Configs/db.php");
        $dtype = $params["dbtype"];
        $db = $params["dbname"];
        $host = $params["host"];
        $dns = "mysql:dbname=$db;host=$host";
        //$dns = "sqlite:../DB/oldfoot.db";

        if ($dtype === "mysql") $dns = "mysql:dbname=$db;host=$host";
        else if ($dtype === "sqlite") $dns = "sqlite:../DB/$db";

        $this->pdo = new PDO($dns, $params["user"], $params["password"]);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        //$this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_SILENT);
    }




    public function selectOne(string $req, $mode = PDO::FETCH_OBJ): mixed
    {
        $res = $this->pdo->query($req);
        if (is_string($mode)) {
            $res->setFetchMode(PDO::FETCH_CLASS, $mode);
            $result = $res->fetch();
        } else {
            $res->setFetchMode($mode);
            $result = $res->fetch();
        }
        return $result;
    }


    public function selectAll(string $req, $mode = PDO::FETCH_ASSOC): mixed
    {
        $res = $this->pdo->query($req);

        if (is_string($mode)) {
            $res->setFetchMode(PDO::FETCH_CLASS, $mode);
            $result = $res->fetchAll();
        } else {
            $res->setFetchMode($mode);
            $result = $res->fetchAll();
        }
        return $result;
    }


    public function exec(string $req): bool
    {
        $res= $this->pdo->exec($req);
        if($res) $this->saveRequest($req);
        return $res;
    }


    public function prepare(string $req): self
    {
        $this->prepare = $this->pdo->prepare($req);
        return $this;
    }


    public function execute(?array $params = null): bool
    {
        $res= $this->prepare->execute($params);
        if($res) $this->saveRequest($this->prepare->queryString."=>".serialize($params));
        return $res;
    }

    public function getResult($mode = PDO::FETCH_ASSOC, $one = false): mixed
    {
        if (is_string($mode)) {
            $this->prepare->setFetchMode(PDO::FETCH_CLASS, $mode);
        } else $this->prepare->setFetchMode($mode);

        if ($one) {
            return $this->prepare->fetch();
        }
        return $this->prepare->fetchAll();
    }


    public function transaction(string ...$reqs): bool
    {
        $size = sizeof($reqs);

        $this->pdo->beginTransaction();

        $check = 0;
        foreach ($reqs as $item) {
            $check += $this->pdo->exec($item);
        }

        if ($check === $size) {
            $this->pdo->commit();
            return true;
        } else $this->pdo->rollBack();

        return false;
    }


    public function lastInsertId(): int
    {
        return  $this->pdo->lastInsertId();
    }
    
    private function saveRequest($req){
        $file='..\Configs\db.txt';
        if (file_exists($file)) {
            $reqs = file_get_contents($file);
            file_put_contents($file, $reqs . "\n" . $req);
        } else {
            file_put_contents($file, $req);
        }
    }
        }
