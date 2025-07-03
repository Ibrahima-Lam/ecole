<?php
namespace App\Services\src;

use App\Repositories\EtablissementRepository;
use App\Models\Etablissement;

class EtablissementService
{
    private $repository;
    private $check;
    private $etablissement;
    private static $_instance ;
    public function __construct() {
        $this->repository = new EtablissementRepository();
    }

    public static function getInstance(): EtablissementService
    {
        if (!self::$_instance) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function findAll(): array
    {
        return $this->repository->findAll();
    }

    public function getEtablissement(): Etablissement
    {
        if ($this->etablissement) {
            return $this->etablissement;
        }
        $etablissement = $this->repository->findLastOne();
        if ($etablissement) {
            $this->check = true;
            $this->etablissement = $etablissement;
            return $etablissement;
        }
        $this->check = false;
        return new Etablissement();
    }

    public function existEtablissement(): bool
    {
        return $this->check;
    }

    public function findById(int $id): false|Etablissement
    {
        return $this->repository->findById($id);
    }

    public function insert(Etablissement $Etablissement): bool
    {
        $this->etablissement =null;
        return $this->repository->insert($Etablissement);
    }

    public function update(Etablissement $Etablissement): bool
    {
        $this->etablissement =null;
        return $this->repository->update($Etablissement);
    }

    public function delete(int $id): bool
    {
        $this->etablissement =null;
        return $this->repository->delete($id);
    }
}
?>