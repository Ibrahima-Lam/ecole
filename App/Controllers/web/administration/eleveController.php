<?php

namespace App\Controllers\web\administration;

use App\Controllers\interfaces\EleveControllerInterfaces;
use App\Repositories\ClasseMatiereRepository;
use App\Repositories\correspondanceRepository;
use App\Repositories\ExamenRepository;
use App\Repositories\NoteRepository;
use App\Repositories\SalleClasseRepository;
use App\Services\storages\NoninscritStorage;
use App\Services\business\bulletinService;
use App\Services\business\ClassebulletinService;
use App\Services\business\ResultatProvider;
use App\Services\src\AnneeScolaireService;
use App\Services\src\ClasseMatiereService;
use App\Services\src\EleveService;
use App\Controllers\src\WebController;
use App\Repositories\EleveRepository;
use App\Repositories\inscritRepository;
use Core\src\Request;
use PhpOffice\PhpSpreadsheet\IOFactory;
use Src\Factories\BulletinParamettreFactory;


class EleveController extends WebController implements EleveControllerInterfaces
{
   
    protected $inscritRepository;
    protected $annee;
    public function __construct(protected AnneeScolaireService $anneeScolaireService)
    {
        parent::__construct();
        $this->inscritRepository = new inscritRepository();
        $this->annee = $anneeScolaireService->getCodeAnnee();
    }
    public function profil($matricule){
        $model = new EleveRepository();
        $data = $model->findOneByMatricule($matricule);
        if(!$data){
            die(__("eleve non trouvé"));
        }
        $model2 = new inscritRepository();
        $inscription = $model2->findOneByCodeAndAnnee($matricule, $this->annee);
       
        $subsidebar =strtolower(self::class) == strtolower("App\Controllers\web\administration\inscritController") ? $this->subsidebar( 11) : $this->subsidebar($matricule, 1);
        $this->render("eleve/profil", ["data" => $data, 'inscription' => $inscription, 'annee' => $this->getNomAnnee(), "subsidebar" => $subsidebar]);
    }
    public function inscrit()
    {
        $inscrits = $this->inscritRepository->findAllByAnnee($this->annee);
      
        $anneescolaire = $this->anneeScolaireService->getAnnee();
        $subsidebar =strtolower(self::class) == strtolower("App\Controllers\web\administration\inscritController") ? $this->subsidebar( 11) : $this->subsidebar(null, 11);
        $this->render('inscrit/liste', ['inscrits' => $inscrits, 'anneescolaire' => $anneescolaire,'subsidebar' => $subsidebar]);
    }
    public function noninscrit(){
        $model = new EleveRepository();
        $eleves = $model->findAllNonInscritsByAnnee($this->annee);
       $anneescolaire = $this->anneeScolaireService->getAnnee();
        $subsidebar =strtolower(self::class) == strtolower("App\Controllers\https\inscritController") ? $this->subsidebar( 1) : $this->subsidebar(null, 12);
        $this->render('inscrit/noninscrit', ['eleves' => $eleves, 'anneescolaire' => $anneescolaire,'subsidebar' => $subsidebar]);
    }


    private function subsidebar(?string $matricule, int $active = 1): string
    {
        $eleve = null;
        $inscrit = null;
        if ($matricule) {
            $repos = new EleveRepository();
            $eleve = $repos->findOneByMatricule($matricule);
            $inscrit = $this->inscritRepository->findOneByCodeAndAnnee($matricule, $this->annee);
        }
        $html = "<div class='subsidebar'>";
        if ($eleve) {
            $html .= '<h4>' . $eleve->nom . '</h4>';
            $html .= '<p class="text-center">' . $eleve->isme . '</p>';
        }
        $html .= "<ul>";
        $class = "";
        if ($matricule) {
            $class = $active == 1 ? "active" : "";
            $html .= "<li><a href='?p=eleve/profil/$matricule'class='$class'>" . __("Profil") . "</a></li>";
            $class = $active == 2 ? "active" : "";
            $html .= "<li><a href='?p=eleve/resultat/$matricule'class='$class'>" . __("Resultat") . "</a></li>";
            $class = $active == 3 ? "active" : "";
            $html .= "<li><a href='?p=eleve/bulletin1/$matricule'class='$class'>" . __("Bulletin C1") . "</a></li>";
            $class = $active == 4 ? "active" : "";
            $html .= "<li><a href='?p=eleve/bulletin2/$matricule'class='$class'>" . __("Bulletin C2") . "</a></li>";
            $class = $active == 5 ? "active" : "";
            $html .= "<li><a href='?p=eleve/bulletin3/$matricule'class='$class'>" . __("Bulletin C3") . "</a></li>";
            $class = $active == 6 ? "active" : "";
            $html .= "<li><a href='?p=eleve/correspondant/$matricule'class='$class'>" . __("Correspondant") . "</a></li>";
            if($inscrit){
                $class = $active == 7 ? "active" : "";
                $html .= "<li><a href='?p=inscrit/classe/$inscrit->codeSalleClasse'class='$class'>" . __("Collegues") . "</a></li>";
            }
            $html.='<hr>';
        }
        $class = $active == 10 ? "active" : "";
        $html .= "<li><a href='?p=eleve/liste' class='$class'>" . __("Eleves") . "</a></li>";
        $class = $active == 11 ? "active" : "";
        $html .= "<li><a href='?p=eleve/inscrit' class='$class'>" . __("Les inscrits") . "</a></li>";
        $class = $active == 12 ? "active" : "";
        $html .= "<li><a href='?p=eleve/noninscrit' class='$class'>" . __("Les non inscrits") . "</a></li>";
        $class = $active == 13 ? "active" : "";
        $html .= "<li><a href='?p=eleve/statut/actif' class='$class'>" . __("Les Actifs") . "</a></li>";
        $class = $active == 14 ? "active" : "";
        $html .= "<li><a href='?p=eleve/statut/inactif' class='$class'>" . __("Les Inactifs") . "</a></li>";
        $class = $active == 15 ? "active" : "";
        $html .= "<li><a href='?p=eleve/statut/exclus' class='$class'>" . __("Les Exclus") . "</a></li>";
        $class = $active == 16 ? "active" : "";
        $html .= "<li><a href='?p=eleve/statut/abandonne' class='$class'>" . __("Les Abandonnes") . "</a></li>";
        $html .= "</ul>";
        $html .= "</div>";
        return $html;
    }

    public function liste(): void
    {
        if($this instanceof inscritController){
          
            $this->inscrit();
            return;
        }
        $model = new EleveRepository();
        $data = $model->findAll();
        $this->render("eleve/liste", ["data" => $data, 'subsidebar' => $this->subsidebar(null, 10)]);
    }

    public function correspondant($matricule)
    {
        $eleveRepository = new EleveRepository();
        $eleve = $eleveRepository->findOneByMatricule($matricule);
        if (!$eleve) {
            die(__("eleve non trouvé"));
        }
        $correspondanceRepository = new correspondanceRepository();
        $correspondances = $correspondanceRepository->findAllByMatricule($matricule);
        $this->render('eleve/correspondant', ['correspondances' => $correspondances, 'subsidebar' => $this->subsidebar($matricule, 6)]);
    }
    public function statut($statutEleve): void
    {
        $model = new EleveRepository();
        $data = $model->findAllByStatut($statutEleve);
        $tab = [
            "actif" => __("Les eleves actifs"),
            "inactif" => __("Les eleves inactifs"),
            "exclus" => __("Les eleves exclus"),
            "abandonne" => __("Les eleves abandonnes")
        ];
        $num = [
            "actif" => 13,
            "inactif" => 14,
            "exclus" => 15,
            "abandonne" => 16
        ];
        $this->render("eleve/statut", ["data" => $data, 'statut' => $statutEleve, 'title' => sprintf($tab[$statutEleve], count($data)), 'subsidebar' => $this->subsidebar(null, $num[$statutEleve])]);

    }
    public function traitementImage(): void
    {
        $matricule = $_REQUEST['matricule'];
        $model = new EleveRepository();
        if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
            move_uploaded_file($_FILES['image']['tmp_name'], "profiles/eleve/img_$matricule.jpg");
            $model->updateImage($matricule, "img_$matricule.jpg");
            $this->redirect("?p=eleve/profil/$matricule");
        }
    }

    public function bulletin1(bulletinService $bulletinService, ClassebulletinService $classebulletinService, EleveService $eleveService,string $matricule): void
    {
        $bulletinService->setMatricule($matricule);
        $eleve = $eleveService->getInscrit($matricule);
        (!$eleve) && $this->renderError(__("eleve non inscrit!"));
        $collegues = $eleveService->getCollegues($matricule);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $tab = [];
        if ($paramettre->rang) {
            $classebulletinService->setSalleClasse($eleve->codeSalleClasse);
            $tab = $classebulletinService->getPoints1();
        }
        $bulletin = $bulletinService->getBulletin1($tab);

        $this->render("eleve/bulletin1", ["eleve" => $eleve, 'collegues'=>$collegues,'notematieres' => $bulletin, 'paramettre'=>$paramettre,'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($eleve->matricule ?? null, 3)]);
    }
    public function bulletin2(bulletinService $bulletinService, ClassebulletinService $classebulletinService, EleveService $eleveService,string $matricule): void
    {
       $bulletinService->setMatricule($matricule);
        $eleve = $eleveService->getInscrit($matricule);
        (!$eleve) && $this->renderError(__("eleve non inscrit!"));
        $collegues = $eleveService->getCollegues($matricule);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $tab = [];
        if ($paramettre->rang) {
            $classebulletinService->setSalleClasse($eleve->codeSalleClasse);
            $tab = $classebulletinService->getPoints2();
        }
        $bulletin = $bulletinService->getBulletin2($tab);
        $this->render("eleve/bulletin2", ["eleve" => $eleve, 'collegues'=>$collegues,'notematieres' => $bulletin, 'paramettre'=>$paramettre,'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($eleve->matricule ?? null, 4)]);
    }
    public function bulletin3(bulletinService $bulletinService, ClassebulletinService $classebulletinService, EleveService $eleveService, string $matricule): void
    {
        $eleve = $eleveService->getInscrit($matricule);
        (!$eleve) && $this->renderError(__("eleve non inscrit!"));
        $bulletinService->setMatricule($matricule);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $collegues = $eleveService->getCollegues($matricule);
        $tab = [];
        if ($paramettre->rang) {
            $classebulletinService->setSalleClasse($eleve->codeSalleClasse);
            $tab = $classebulletinService->getPoints3();
        }
        $bulletin = $bulletinService->getBulletin3($tab);
        $this->render("eleve/bulletin3", ["eleve" => $eleve, 'collegues'=>$collegues,'notematieres' => $bulletin, 'paramettre' => $paramettre, 'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($eleve->matricule ?? null, 5)]);
    }

    public function resultat(bulletinService $bulletinService,ClasseMatiereService $classeMatiereService, Request $request, EleveService $eleveService, string $matricule): void
    {
        $trimestre = $request->get('trimestre') ?? 3;
        $codeMatiere = $request->get('matiere') ?? null;
        $eleve = $eleveService->getInscrit($matricule);
        $collegues = $eleveService->getCollegues($matricule);
        $matieres = $classeMatiereService->findAllByInscrit($matricule);
        (!$eleve) && $this->renderError(__("eleve non inscrit!"));
        $bulletinService->setMatricule($matricule);
        $paramettre = BulletinParamettreFactory::getBulletinParam();
        $bulletin =$trimestre == 3 ? $bulletinService->getBulletin3() :($trimestre == 2 ? $bulletinService->getBulletin2() : $bulletinService->getBulletin1());
        $this->render("eleve/resultat", ["eleve" => $eleve, 'collegues'=>$collegues, 'trimestre'=>$trimestre, 'matieres'=>$matieres, 'codeMatiere'=>$codeMatiere, 'notematieres' => $bulletin, 'paramettre' => $paramettre, 'annee' => $this->getNomAnnee(), "subsidebar" => $this->subsidebar($eleve->matricule ?? null, 2)]);
    }
    public function form(): void
    {
        $this->middleware("role")->render("eleve/form");
    }
    public function traitement(): void
    {
        extract($_POST);
        $model = new EleveRepository();
        $res = $model->insert($matricule, $nom, $isme, $sexe, $dateNaissance, $lieuNaissance, $adresse, $nni, $statutEleve ?? "actif");
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
        $this->middleware("role")->render("eleve/import", compact("cols", "rows"));
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
        $tab = array_map(fn($value) => $value != '' ? $value : null, $tab);

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
        $eleves = [];
        if ($saved) {
            $ripos = new EleveRepository();
            $eleves = $ripos->findAllNonInscritsByAnnee($this->getCodeAnnee());

            $eleves = array_map(function ($e) {
                return [
                    'matricule' => $e->matricule,
                    'nom' => $e->nom,
                    'isme' => $e->isme,
                    'sexe' => $e->sexe,
                    'dateNaissance' => $e->dateNaissance,
                    'lieuNaissance' => $e->lieuNaissance,
                    'adresse' => $e->adresse,
                    'nni' => $e->nni,
                    'statut' => false
                ];
            }, $eleves);
        } else {
            $eleves = NoninscritStorage::get();
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
        $this->middleware("role")->render("eleve/inscrire", ["data" => $eleves, "classes" => $classes]);

    }

}


