<?php
namespace App\Services\src;

use App\Models\Repositories\EtablissementRepository;
use App\Models\Entities\EtablissementEntity;

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

    public function getEtablissement(): EtablissementEntity
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
        return new EtablissementEntity();
    }

    public function existEtablissement(): bool
    {
        return $this->check;
    }

    public function findById(int $id): false|EtablissementEntity
    {
        return $this->repository->findById($id);
    }

    public function insert(EtablissementEntity $etablissementEntity): bool
    {
        $this->etablissement =null;
        return $this->repository->insert($etablissementEntity);
    }

    public function update(EtablissementEntity $etablissementEntity): bool
    {
        $this->etablissement =null;
        return $this->repository->update($etablissementEntity);
    }

    public function delete(int $id): bool
    {
        $this->etablissement =null;
        return $this->repository->delete($id);
    }
}
?>