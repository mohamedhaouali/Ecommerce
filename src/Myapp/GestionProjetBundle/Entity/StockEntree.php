<?php

namespace Myapp\GestionProjetBundle\Entity;
use Symfony\Component\Validator\Constraints as Assert;
use Doctrine\ORM\Mapping as ORM;

/**
 * StockEntree
 *
 * @ORM\Table(name="stock_entree")
 * @ORM\Entity(repositoryClass="Myapp\GestionProjetBundle\Repository\StockEntreeRepository")
 */
class StockEntree
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
     * @var string
     *
     * @ORM\Column(name="nomduproduit", type="string", length=255)
     * 
     * 
     * * @Assert\NotBlank(message="entrer nom du produit.", groups={"Registration", "Profile"})
     * @Assert\Length(
     *     min=3,
     *     max=255,
     *     minMessage="Le nom est trop court.",
                           
     *     maxMessage="le nom est trop  long.",
     *     
     * )
     */
    private $nomduproduit;

    /**
     * @var string
     *
     * @ORM\Column(name="quantite", type="string", length=255)
     */
    private $quantite;

    /**
     * @var float
     *
     * @ORM\Column(name="prix", type="float")
     */
    private $prix;

   /**
     * @var \DateTime
     *
     * @ORM\Column(name="date", type="datetime")
     */
    private $date;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nomduproduit
     *
     * @param string $nomduproduit
     *
     * @return StockEntree
     */
    public function setNomduproduit($nomduproduit)
    {
        $this->nomduproduit = $nomduproduit;

        return $this;
    }

    /**
     * Get nomduproduit
     *
     * @return string
     */
    public function getNomduproduit()
    {
        return $this->nomduproduit;
    }

    /**
     * Set quantite
     *
     * @param string $quantite
     *
     * @return StockEntree
     */
    public function setQuantite($quantite)
    {
        $this->quantite = $quantite;

        return $this;
    }

    /**
     * Get quantite
     *
     * @return string
     */
    public function getQuantite()
    {
        return $this->quantite;
    }

    /**
     * Set prix
     *
     * @param float $prix
     *
     * @return StockEntree
     */
    public function setPrix($prix)
    {
        $this->prix = $prix;

        return $this;
    }

    /**
     * Get prix
     *
     * @return float
     */
    public function getPrix()
    {
        return $this->prix;
    }


    /**
     * Set date
     *
     * @param \DateTime $date
     *
     * @return Stockentree
     */
    public function setDate($date)
    {
        $this->date = $date;

        return $this;
    }

    /**
     * Get date
     *
     * @return \DateTime
     */
    public function getDate()
    {
        return $this->date;
    }
}
