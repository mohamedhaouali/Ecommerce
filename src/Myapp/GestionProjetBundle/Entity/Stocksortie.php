<?php

namespace Myapp\GestionProjetBundle\Entity;
use Symfony\Component\Validator\Constraints as Assert;
use Doctrine\ORM\Mapping as ORM;

/**
 * Stocksortie
 *
 * @ORM\Table(name="stocksortie")
 * @ORM\Entity(repositoryClass="Myapp\GestionProjetBundle\Repository\StocksortieRepository")
 */
class Stocksortie
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
     * @ORM\Column(name="nomdeuproduit", type="string", length=255)
     * 
     * 
     *  *  @Assert\NotBlank(message="entrer nom du produit.", groups={"Registration", "Profile"})
     * @Assert\Length(
     *     min=3,
     *     max=255,
     *     minMessage="Le nom est trop court.",
                           
     *     maxMessage="le nom est trop  long.",
     *     
     * )
     */
     
    private $nomdeuproduit;

    /**
     * @var float
     *
     * @ORM\Column(name="quantite", type="float")
     */
    private $quantite;

    /**
     * @var string
     *
     * @ORM\Column(name="nomclient", type="string", length=255)
     * 
     * 
     *   *  *  @Assert\NotBlank(message="entrer nom du client.", groups={"Registration", "Profile"})
     * @Assert\Length(
     *     min=3,
     *     max=255,
     *     minMessage="Le nom du client est trop court.",
                           
     *     maxMessage="le nom du client est trop  long.",
     *     
     * )
     */
    private $nomclient;

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
     * Set nomdeuproduit
     *
     * @param string $nomdeuproduit
     *
     * @return Stocksortie
     */
    public function setNomdeuproduit($nomdeuproduit)
    {
        $this->nomdeuproduit = $nomdeuproduit;

        return $this;
    }

    /**
     * Get nomdeuproduit
     *
     * @return string
     */
    public function getNomdeuproduit()
    {
        return $this->nomdeuproduit;
    }

    /**
     * Set quantite
     *
     * @param float $quantite
     *
     * @return Stocksortie
     */
    public function setQuantite($quantite)
    {
        $this->quantite = $quantite;

        return $this;
    }

    /**
     * Get quantite
     *
     * @return float
     */
    public function getQuantite()
    {
        return $this->quantite;
    }

    /**
     * Set nomclient
     *
     * @param string $nomclient
     *
     * @return Stocksortie
     */
    public function setNomclient($nomclient)
    {
        $this->nomclient = $nomclient;

        return $this;
    }

    /**
     * Get nomclient
     *
     * @return string
     */
    public function getNomclient()
    {
        return $this->nomclient;
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
