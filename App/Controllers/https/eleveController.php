<?php

namespace App\Controllers\https;

use App\Controllers\interfaces\EleveControllerInterfaces;
use App\Models\Repositories\ClasseMatiereRepository;
use App\Models\Repositories\NoteRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Services\Factories\Bulletin1Factory;
use App\Services\Factories\Bulletin2Factory;
use App\Services\Factories\Bulletin3Factory;
use App\Services\factories\NoninscritFactory;
use App\Services\Providers\ResultatProvider;
use Core\Controllers\Controller;
use App\Models\Repositories\EleveRepository;
use App\Models\Repositories\inscritRepository;
use PhpOffice\PhpSpreadsheet\IOFactory;


class EleveController extends Controller implements EleveControllerInterfaces
{
    private function subsidebar(?string $matricule, int $active = 1): string
    {
        $html = "<div class='subsidebar'>";
        $html .= "<ul>";
        $class = "";
        if ($matricule) {
            $class = $active == 1 ? "active" : "";
            $html .= "<li><a href='?p=eleve/profil/$matricule'class='$class'>Profil</a></li>";
            $class = $active == 2 ? "active" : "";
            $html .= "<li><a href='?p=eleve/resultat/$matricule'class='$class'>Resultat</a></li>";
            $class = $active == 3 ? "active" : "";
            $html .= "<li><a href='?p=eleve/bulletin1/$matricule'class='$class'>Bulletin C1</a></li>";
            $class = $active == 4 ? "active" : "";
            $html .= "<li><a href='?p=eleve/bulletin2/$matricule'class='$class'>Bulletin C2</a></li>";
            $class = $active == 5 ? "active" : "";
            $html .= "<li><a href='?p=eleve/bulletin3/$matricule'class='$class'>Bulletin C3</a></li>";
        }
        $class = $active == 10 ? "active" : "";
        $html .= "<li><a href='?p=eleve/liste' class='$class'>Eleves</a></li>";
        $class = $active == 11 ? "active" : "";
        $html .= "<li><a href='?p=inscrit/liste' class='$class'>Les Inscrits</a></li>";
        $class = $active == 12 ? "active" : "";
        $html .= "<li><a href='?p=inscrit/noninscrit' class='$class'>Les non inscrit</a></li>";
        $html .= "</ul>";
        $html .= "</div>";
        return $html;
    }

    public function liste(): void
    {
        $model = new EleveRepository();
        $data = $model->findAll();
        $this->render("eleve/liste", ["data" => $data, 'subsidebar' => $this->subsidebar(null, 10)]);
    }

    public function profil(string $matricule): void
    {
        $model = new EleveRepository();
        $data = $model->findOneByMatricule($matricule);
        $model2 = new inscritRepository();
        $inscription = $model2->findOneByCodeAndAnnee($matricule, $this->getCodeAnnee());
        $this->render("eleve/profil", ["data" => $data, 'inscription' => $inscription, 'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($matricule, 1)]);
    }

    public function bulletin1(string $matricule): void
    {
        $annee = $this->getCodeAnnee();
        $model = new inscritRepository();
        $eleve = $model->findOne($matricule);
        (!$eleve) && $this->redirect("?p=eleve/liste");
        $notematieres = Bulletin1Factory::getBulletin($matricule, $annee);

        $tab = Bulletin1Factory::getPoints($matricule, $annee);
        $notematieres->setTabPoints($tab);
        $this->render("eleve/bulletin1", ["eleve" => $eleve, 'notematieres' => $notematieres, 'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($eleve->matricule ?? null, 3)]);
    }
    public function bulletin2(string $matricule): void
    {
        $annee = $this->getCodeAnnee();
        $model = new inscritRepository();
        $eleve = $model->findOne($matricule);
        (!$eleve) && $this->redirect("?p=eleve/liste");
        $notematieres = Bulletin2Factory::getBulletin($matricule, $annee);

        $tab = Bulletin2Factory::getPoints($matricule, $annee);
        $notematieres->setTabPoints($tab);
        $this->render("eleve/bulletin2", ["eleve" => $eleve, 'notematieres' => $notematieres, 'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($eleve->matricule ?? null, 4)]);
    }
    public function bulletin3(string $matricule): void
    {
        $annee = $this->getCodeAnnee();
        $model = new inscritRepository();
        $eleve = $model->findOne($matricule);
        (!$eleve) && $this->redirect("?p=eleve/liste");
        $notematieres = Bulletin3Factory::getBulletin($matricule, $annee);

        $tab = Bulletin3Factory::getPoints($matricule, $annee);
        $notematieres->setTabPoints($tab);
        $this->render("eleve/bulletin3", ["eleve" => $eleve, 'notematieres' => $notematieres, 'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($eleve->matricule ?? null, 5)]);
    }

    public function resultat(string $matricule): void
    {
        $annee = $this->getCodeAnnee();
        $model = new inscritRepository();
        $eleve = $model->findOne($matricule);
        $matieres = [];
        $notes = [];
        if ($eleve) {
            $model = new ClasseMatiereRepository();
            $matieres = $model->findByClasse($eleve->codeClasse);
            $model = new NoteRepository();
            $notes = $model->findAllByMatriculeAndAnnee($eleve->matricule, $annee);

        }
        $notematieres = new ResultatProvider($eleve, $matieres, $notes);

        $this->render("eleve/resultat", ["eleve" => $eleve, 'notematieres' => $notematieres, 'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($matricule, 2)]);
    }
    public function form(): void
    {
        $this->render("eleve/form");
    }
    public function traitement(): void
    {
        extract($_POST);
        $model = new EleveRepository();
        $res = $model->insert($matricule, $nom, $isme, $sexe, $dateNaissance, $lieuNaissance, $adresse, $nni);
        if ($res)
            $this->redirect("?p=eleve/liste");
        else
            $this->redirect("?p=eleve/form");
    }

    public function import(): void
    {
        $cols = range('a', 'z');
        $cols = array_map('strtoupper', $cols);
        $rows = range(1, 100);
        $this->render("eleve/import", compact("cols", "rows"));
    }
    public function traitementExcel(): void
    {
        if (!isset($_FILES['fichier']))
            die("Aucun fichier sélectionné");
        $spreadsheet = IOFactory::load($_FILES['fichier']['tmp_name']);
        $worksheet = $spreadsheet->getActiveSheet();
        $data = $worksheet->toArray();
        $model = new EleveRepository();
        $eleves = $model->findAll();

        $cols = range('a', 'z');
        $cols = array_map('strtoupper', $cols);
        $tab = [

            'matricule' => array_search($_POST['matriculeColonne'], $cols),
            'nom' => array_search($_POST['nomColonne'], $cols),
            'isme' => array_search($_POST['ismeColonne'], $cols),
            'sexe' => array_search($_POST['sexeColonne'], $cols),
            'dateNaissance' => array_search($_POST['dateNaissanceColonne'], $cols),
            'lieuNaissance' => array_search($_POST['lieuNaissanceColonne'], $cols),
            'adresse' => array_search($_POST['adresseColonne'], $cols),
            'nni' => array_search($_POST['nniColonne'] ?? null, $cols),
        ];
        $tab = array_map(function ($value) {
            return $value ? $value : null; }, $tab);

        $premierLigne = $_POST['premierLigne'] - 1 ?? 1;
        $dernierLigne = $_POST['dernierLigne'] ?? 100;
        $data = array_slice($data, $premierLigne, $dernierLigne - $premierLigne + 1);

        $data = array_map(function ($eleve) use ($eleves, $tab) {
            $matricules = array_column($eleves, 'matricule');
            $nnis = array_column($eleves, 'nni');

            $element = [];
            $element['matricule'] = $eleve[$tab['matricule']] ?? null;
            $element['nom'] = $eleve[$tab['nom']] ?? null;
            $element['isme'] = $eleve[$tab['isme']] ?? null;
            $element['sexe'] = $eleve[$tab['sexe']] ?? null;
            $element['dateNaissance'] = $eleve[$tab['dateNaissance']] ?? null;
            $element['lieuNaissance'] = $eleve[$tab['lieuNaissance']] ?? null;
            $element['adresse'] = $eleve[$tab['adresse']] ?? null;
            $element['nni'] = $eleve[$tab['nni']] ?? null;
            $element['statut'] = !empty($element['matricule']) && in_array($element['matricule'], $matricules) || !empty($element['nni']) && in_array($element['nni'], $nnis);
            return $element;
        }, $data);

        $this->render("eleve/fichier", ["data" => $data]);
    }
    public function inscrire($saved = false): void
    {
        if ($saved) {
            $ripos = new EleveRepository();
            $eleves = $ripos->findAllNonInscritsByAnnee($this->getCodeAnnee());
            $eleves=array_map(function ($e)  {
                return[
                    'matricule'=>$e->matricule,
                    'nom'=>$e->nom,
                    'isme'=>$e->isme,
                    'sexe'=>$e->sexe,
                    'dateNaissance'=>$e->dateNaissance,
                    'lieuNaissance'=>$e->lieuNaissance,
                    'adresse'=>$e->adresse,
                    'nni'=>$e->nni,
                    'statut'=>false
                ];
            },$eleves);
        } else {
            $eleves = NoninscritFactory::get();
            $ripos2 = new inscritRepository();
            $inscrits = $ripos2->findAllByAnnee($this->getCodeAnnee());
            $matricules = array_map(fn($e) => $e->matricule, $inscrits);
            $eleves = array_map(function ($eleve) use ($matricules) {
                $eleve['statut'] = in_array($eleve['matricule'], $matricules);
                return $eleve;
            }, $eleves);
        }

        $model = new SalleClasseRepository();
        $classes = $model->findAll($this->getCodeAnnee());
        $this->render("eleve/noninscrit", ["data" => $eleves, "classes" => $classes]);

}
    
}


