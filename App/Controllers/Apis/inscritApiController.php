<?php

namespace App\Controllers\Apis;

use App\Models\Repositories\InscritRepository;
use Core\Controllers\Controller;
use Core\Services\html\htmlService;
use App\Models\Repositories\AnneeScolaireRepository;
use App\Models\Repositories\SalleClasseRepository;
use App\Models\Repositories\EleveRepository;
use Core\Caches\Session;

class inscritApiController extends Controller
{
    private $inscritRepository;
    private $annee;

    public function __construct()
    {
        $this->inscritRepository = new InscritRepository();
        $model = new AnneeScolaireRepository();
        $session = new Session();
        $this->annee = $session->get('annee') ?? $model->findLastAnneeScolaire()->codeAnnee;
    }


    public function liste($annee = null)
    {
        $model = new InscritRepository();
        $data = !$annee ? $model->findAll() : $model->findAllByAnnee($annee);
        $this->response($data);
    }

    public function eleve($matricule)
    {
        $model = new InscritRepository();
        $data = $model->findOneByCodeAndAnnee($matricule, $this->annee);
        if (!$data) {
            $this->response([
                'response' => "ko",
                'message' => "L'élève n'a pas été trouvé",
                'status' => 0
            ]);
            return;
        }
        $this->response($data);
    }

    public function last($classe)
    {
        $model = new InscritRepository();
        $data = $model->findlastOneByClasse($classe);

        if ($data) $this->response($data);
        else $this->response(array("idInscrit" => null));
    }


    public function form($matricule = null)
    {
        $cls = $_GET["classe"] ?? null;
        $mat = $_GET["matricule"] ?? null;
        $lastOne = $this->inscritRepository->findlastOneByClasse($cls);
        $number = $lastOne->numeroInscrit ?? 0;
        $number++;
        $eleveinscrit = null;
        if ($matricule) {
            $eleveinscrit = $this->inscritRepository->findOneByid($matricule);
        }
        $idInscrit = $eleveinscrit->idInscrit ?? null;
        $matriculeInscrit = $eleveinscrit->matricule ?? $mat;
        $numeroInscrit = $eleveinscrit->numeroInscrit ?? $number;
        $typeInscrit = $eleveinscrit->typeInscrit ?? null;
        $dateInscription = $eleveinscrit->dateInscription ??  date('Y-m-d');

        $model = new EleveRepository();
        $eleves = $model->findAll();
        $model = new SalleClasseRepository();
        $classes = $model->findAll($this->annee);
        $classes = array_map(function ($classe) {
            $classe->libelle = $classe->pseudoSalleClasse;
            return $classe;
        }, $classes);


        $number++;
        $types = [
            ['code' => 'passant', 'label' => 'Passant'],
            ['code' => 'redoublant', 'label' => 'Redoublant'],
            ['code' => 'entrant', 'label' => 'Entrant'],
            ['code' => 'nouveau-passant', 'label' => 'Nouveau passant'],
            ['code' => 'nouveau-redoublant', 'label' => 'Nouveau redoublant'],
        ];

        $elevehtml = htmlService::options($eleves, 'matricule', 'nom', $matriculeInscrit ?? null, [], !empty($mat));
        $classehtml = htmlService::options($classes, 'codeSalleClasse', 'libelle', $eleveinscrit->codeSalleClasse ?? null, [], !empty($classe));
        $typeHtml = htmlService::options($types, 'code', 'label', $typeInscrit);
        $label = $idInscrit ? 'Modifier' : 'Inscrire';
        $data =  '<form  class="form">';
        $data .= '<input type="hidden" name="edit" value="' . $idInscrit . '">';
        $data .= '<input type="hidden" name="idInscrit" value="' . $idInscrit . '">';
        $data .= '<div class="form-group">';
        $data .= '<label for="matricule">Matricule</label>';
        $data .= '<select name="matricule" id="matricule" class="form-control" required>';
        $data .= $elevehtml;
        $data .= '</select>';
        $data .= '</div>';
        $data .= '<div class="form-group">';
        $data .= '<label for="codeSalleClasse"> salle classe</label>';
        $data .= '<select name="codeSalleClasse" id="codeSalleClasse" class="form-control" required>';
        $data .= $classehtml;
        $data .= '</select>';
        $data .= '</div>';
        $data .= '<div class="form-group">';
        $data .= '<label for="numeroInscrit">Numero inscrit</label>';
        $data .= '<input type="text" class="form-control" id="numeroInscrit" name="numeroInscrit" placeholder="Entrer le numero d\'inscrit" value="' . $numeroInscrit . '" required>';
        $data .= '</div>';
        $data .= '<div class="form-group">';
        $data .= '<label for="typeInscrit">Type inscrit</label>';
        $data .= '<select class="form-control" id="typeInscrit" name="typeInscrit">';
        $data .= $typeHtml;
        $data .= '</select>';
        $data .= '</div>';
        $data .= '<div class="form-group">';
        $data .= '<label for="dateInscription">Date d\'inscription</label>';
        $data .= '<input type="date" class="form-control" id="dateInscription" name="dateInscription" value="' . $dateInscription . '" placeholder="Entrer la date d\'incription" required>';
        $data .= '</div>';
        $data .= '<div class="form-action">';
        $data .= '<button type="reset" class="btn btn-secondary">Annuler</button>';
        $data .= '<button type="submit" class="btn btn-primary">' . $label . '</button>';
        $data .= '</div>';
        $data .= '</form>';
        $this->response($data);
    }

    public function insert()
    {
        extract($_REQUEST);
        $res = $this->inscritRepository->insert(null, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription);
        if ($res) {
            $data = $this->inscritRepository->findLastInserted();
            $this->response([
                'response' => 'ok',
                "status" => 1,
                "data" => $data,
                "message" => "Inscrit ajouté avec succès"
            ]);
        } else {
            $this->response([
                'response' => 'error',
                "status" => 0,
                "message" => "Erreur lors de l'ajout de l'inscrit"
            ]);
        }
    }

    public function update()
    {
        extract($_REQUEST);
        $res = $this->inscritRepository->update($idInscrit, $matricule, $codeSalleClasse, $numeroInscrit, $typeInscrit, $dateInscription);
        if ($res) {
            $data = $this->inscritRepository->findOneByid($idInscrit);
            $this->response([
                'response' => 'ok',
                "status" => 1,
                "data" => $data,
                "message" => "Inscrit modifié avec succès"
            ]);
        } else {
            $this->response([
                'response' => 'error',
                "status" => 0,
                "message" => "Erreur lors de la modification de l'inscrit"
            ]);
        }
    }

    public function delete($idInscrit)
    {
        $res = $this->inscritRepository->delete($idInscrit);
        if ($res) {
            $this->response([
                'response' => 'ok',
                "status" => 1,
                "message" => "Inscrit supprimé avec succès"
            ]);
        } else {
            $this->response([
                'response' => 'error',
                "status" => 0,
                "message" => "Erreur lors de la suppression de l'inscrit"
            ]);
        }
    }
}
