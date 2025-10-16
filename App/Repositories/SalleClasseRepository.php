<?php

namespace App\Repositories;


use stdClass;

class SalleClasseRepository extends Repository
{
    public function findAll(?string $codeAnnee = null): array
    {
        $sql = $codeAnnee ? "select * from salle_classe_view where codeAnnee='$codeAnnee'" : "select * from salle_classe_view";
        $sql .= " order by codeClasse,indiceSalleClasse";
        $result = $this->db->selectAll($sql, stdClass::class);
        return $result;
    }

    public function findOneByCode(string $code): false|stdClass
    {
        $sql = "select * from salle_classe_view where codeSalleClasse='$code'";
        $result = $this->db->selectOne($sql, stdClass::class);
        return $result;
    }

    public function insert($codeSalleClasse, $codeClasse, $codeSalle, $codeAnnee, $indiceSalleClasse): bool
    {
        $this->db->prepare("INSERT INTO salle_classe(codeSalleClasse, codeSalle, codeClasse, codeAnnee, indiceSalleClasse) 
    VALUES(:codeSalleClasse, :codeSalle, :codeClasse, :codeAnnee, :indiceSalleClasse)");
        return $this->db->execute([
            'codeSalleClasse' => $codeSalleClasse,
            'codeSalle' => $codeSalle,
            'codeClasse' => $codeClasse,
            'codeAnnee' => $codeAnnee,
            'indiceSalleClasse' => $indiceSalleClasse
        ]);
    }

    public function update($codeSalleClasse, $codeClasse, $codeSalle, $codeAnnee, $indiceSalleClasse): bool
    {
        $this->db->prepare("UPDATE salle_classe 
                   SET codeSalle = :codeSalle, 
                       codeClasse = :codeClasse, 
                       codeAnnee = :codeAnnee, 
                       indiceSalleClasse = :indiceSalleClasse 
                   WHERE codeSalleClasse = :codeSalleClasse");

        return $this->db->execute([
            'codeSalleClasse' => $codeSalleClasse,
            'codeSalle' => $codeSalle,
            'codeClasse' => $codeClasse,
            'codeAnnee' => $codeAnnee,
            'indiceSalleClasse' => $indiceSalleClasse
        ]);
    }

    public function delete($codeSalleClasse)
    {
        return $this->db->exec("DELETE FROM salle_classe WHERE codeSalleClasse = '$codeSalleClasse'");
    }
}
