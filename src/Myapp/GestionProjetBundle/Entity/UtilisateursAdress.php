<?php

namespace Myapp\GestionProjetBundle\Entity;
use Symfony\Component\Validator\Constraints as Assert;
use Doctrine\ORM\Mapping as ORM;

/**
 * UtilisateursAdress
 *
 * @ORM\Table(name="utilisateurs_adress")
 * @ORM\Entity(repositoryClass="Myapp\GestionProjetBundle\Repository\UtilisateursAdressRepository")
 */
class UtilisateursAdress
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    
   /**
   * @ORM\ManyToOne(targetEntity="MedBac\UtilisateursBundle\Entity\Utilisateurs",inversedBy="adresses")
   * @ORM\JoinColumn(nullable=true)
    */
   private $utilisateur;

    /**
     * @var string
     *
     * @Assert\NotBlank(message="entrer votre nom.", groups={"Registration", "Profile"})
     * @ORM\Column(name="nom", type="string", length=255)
     */
    private $nom;

    /**
     * @var string
     *
     * @Assert\NotBlank(message="entrer votre prenom.", groups={"Registration", "Profile"})
     * @ORM\Column(name="prenom", type="string", length=255)
     */
    private $prenom;

    /**
     * @var string
     *
     *  @Assert\NotBlank(message="entrer votre telephone.", groups={"Registration", "Profile"})
     * @ORM\Column(name="telephone", type="string", length=255)
     */
    private $telephone;

    /**
     * @var string
     *
     *  @Assert\NotBlank(message="entrer votre adresse.", groups={"Registration", "Profile"})
     * @ORM\Column(name="adresse", type="string", length=255)
     */
    private $adresse;

    /**
     * @var string
     *
     * @Assert\NotBlank(message="entrer votre codepostal.", groups={"Registration", "Profile"})
     * @ORM\Column(name="codepostal", type="string", length=255)
     */
    private $codepostal;

    /**
     * @var string
     *
     *  @Assert\NotBlank(message="entrer votre pays.", groups={"Registration", "Profile"})
     * @ORM\Column(name="pays", type="string", length=255)
     */
    private $pays;

    /**
     * @var string
     *
     *  @Assert\NotBlank(message="entrer votre ville.", groups={"Registration", "Profile"})
     * @ORM\Column(name="ville", type="string", length=255)
     */
    private $ville;

    /**
     * @var string
     *
     
     * @ORM\Column(name="complement", type="string", length=255, nullable=true)
     */
    private $complement;

    /**
     * @var string
     *
     *  @Assert\NotBlank(message="entrer votre matriculefiscale.", groups={"Registration", "Profile"})
     * @ORM\Column(name="matriculefiscale", type="string", length=255)
     */
    private $matriculefiscale;

     /**
     * @var string
     *
     *  @Assert\NotBlank(message="entrer votre bonducommande.", groups={"Registration", "Profile"})
     * @ORM\Column(name="bonducommande", type="string", length=255)
     */
    private $bonducommande;
    
    

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return UtilisateursAdress
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set prenom
     *
     * @param string $prenom
     *
     * @return UtilisateursAdress
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;

        return $this;
    }

    /**
     * Get prenom
     *
     * @return string
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * Set telephone
     *
     * @param string $telephone
     *
     * @return UtilisateursAdress
     */
    public function setTelephone($telephone)
    {
        $this->telephone = $telephone;

        return $this;
    }

    /**
     * Get telephone
     *
     * @return string
     */
    public function getTelephone()
    {
        return $this->telephone;
    }

    /**
     * Set adresse
     *
     * @param string $adresse
     *
     * @return UtilisateursAdress
     */
    public function setAdresse($adresse)
    {
        $this->adresse = $adresse;

        return $this;
    }

    /**
     * Get adresse
     *
     * @return string
     */
    public function getAdresse()
    {
        return $this->adresse;
    }

    /**
     * Set codepostal
     *
     * @param string $codepostal
     *
     * @return UtilisateursAdress
     */
    public function setCodepostal($codepostal)
    {
        $this->codepostal = $codepostal;

        return $this;
    }

    /**
     * Get codepostal
     *
     * @return string
     */
    public function getCodepostal()
    {
        return $this->codepostal;
    }

    /**
     * Set pays
     *
     * @param string $pays
     *
     * @return UtilisateursAdress
     */
    public function setPays($pays)
    {
        $this->pays = $pays;

        return $this;
    }

    /**
     * Get pays
     *
     * @return string
     */
    public function getPays()
    {
        return $this->pays;
    }

    /**
     * Set ville
     *
     * @param string $ville
     *
     * @return UtilisateursAdress
     */
    public function setVille($ville)
    {
        $this->ville = $ville;

        return $this;
    }

    /**
     * Get ville
     *
     * @return string
     */
    public function getVille()
    {
        return $this->ville;
    }

    /**
     * Set complement
     *
     * @param string $complement
     *
     * @return UtilisateursAdress
     */
    public function setComplement($complement)
    {
        $this->complement = $complement;

        return $this;
    }

    /**
     * Get complement
     *
     * @return string
     */
    public function getComplement()
    {
        return $this->complement;
    }

    /**
     * Set utilisateur
     *
     * @param \MedBac\UtilisateursBundle\Entity\Utilisateurs $utilisateur
     *
     * @return UtilisateursAdress
     */
    public function setUtilisateur(\MedBac\UtilisateursBundle\Entity\Utilisateurs $utilisateur = null)
    {
        $this->utilisateur = $utilisateur;

        return $this;
    }

    /**
     * Get utilisateur
     *
     * @return \MedBac\UtilisateursBundle\Entity\Utilisateurs
     */
    public function getUtilisateur()
    {
        return $this->utilisateur;
    }

    /**
     * Set matriculefiscale
     *
     * @param string $matriculefiscale
     *
     * @return UtilisateursAdress
     */
    public function setMatriculefiscale($matriculefiscale)
    {
        $this->matriculefiscale = $matriculefiscale;

        return $this;
    }

    /**
     * Get matriculefiscale
     *
     * @return string
     */
    public function getMatriculefiscale()
    {
        return $this->matriculefiscale;
    }

    /**
     * Set bonducommande
     *
     * @param string $bonducommande
     *
     * @return UtilisateursAdress
     */
    public function setBonducommande($bonducommande)
    {
        $this->bonducommande = $bonducommande;

        return $this;
    }

    /**
     * Get bonducommande
     *
     * @return string
     */
    public function getBonducommande()
    {
        return $this->bonducommande;
    }
}
