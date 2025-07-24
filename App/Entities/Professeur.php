<?php

namespace App\Entities;

/**
 * @property string $matriculeProfesseur
 * @property string $nomProfesseur
 * @property string $ismeProfesseur
 * @property string $sexeProfesseur
 * @property string $adresseProfesseur
 * @property string $nniProfesseur
 * @property string $telProfesseur
 * @property string $emailProfesseur
 * @property string $codeSpecialite
 * @property string $dateDebutProfesseur
 * @property string $dateArriveeProfesseur
 * @property string $imagePathProfesseur
 * @property string $statutProfesseur
 * @property string $cycleProfesseur
 */
class Professeur
{
    public string $matriculeProfesseur;
    public string $nomProfesseur;
    public ?string $ismeProfesseur = null;
    public ?string $sexeProfesseur = null;
    public ?string $adresseProfesseur = null;
    public string $nniProfesseur;
    public ?string $telProfesseur = null;
    public ?string $emailProfesseur = null;
    public ?string $codeSpecialite = null;
    public ?string $dateDebutProfesseur = null;
    public ?string $dateArriveeProfesseur = null;
    public ?string $imagePathProfesseur = null;
    public string $statutProfesseur;
    public string $cycleProfesseur;
}
