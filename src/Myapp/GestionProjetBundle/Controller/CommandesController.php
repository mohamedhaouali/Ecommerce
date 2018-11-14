<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Commande;

use Myapp\GestionProjetBundle\Entity\Produits;

use Myapp\GestionProjetBundle\Entity\UtilisateursAdress;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;


class CommandesController extends Controller
{
 
    public function facture()
    {
        $em = $this->getDoctrine()->getManager();
       // $generator = $this->container->get('security.secure_random');
        // generateur de token  
        $generator = random_bytes(20);
        //$session = $this->getRequest()->getSession();
        $session = $this->get('request_stack')->getCurrentRequest()->getSession();
          // stocker les adresses 
        $adress = $session->get('adress');
         // stocker le panier
        $panier = $session->get('panier');
         // array tableaux declarer un tableaux vide 
        $commande = array();
        $totalHT = 0;
        $totalTVA = 0;


        $facturation = $em->getRepository('GestionProjetBundle:UtilisateursAdress')->find($adress['facturation']);
        $livraison = $em->getRepository('GestionProjetBundle:UtilisateursAdress')->find($adress['livraison']);
        // produits modifie ou supprime plus tard alors on doit
        //les informations de produit dans la base
        $produits = $em->getRepository('GestionProjetBundle:Produits')->findArray(array_keys($session->get('panier')));

        foreach($produits as $produit)
        {
            $prixHT = ($produit->getPrix() * $panier[$produit->getId()]);
            $prixTTC = ($produit->getPrix() * $panier[$produit->getId()] / $produit->getTva()->getMultiplcate());
            $totalHT += $prixHT;
// creer tableaux tva
      //a l'interieur on va stocker la valeur Tva
      //cela pour verifier si le tableaux existe 
      // a l'interieur on va metre le prix du tva     

            if (!isset($commande['tva']['%'.$produit->getTva()->getValeur()]))
   // si il y'a un article                  
                $commande['tva']['%'.$produit->getTva()->getValeur()] = round($prixTTC - $prixHT,3);
     // si il y'a plusieurs articles +         
            else
                $commande['tva']['%'.$produit->getTva()->getValeur()] += round($prixTTC - $prixHT,3);


            $totalTVA += round($prixTTC - $prixHT,3);
            
// a l'interieur du tableaux on va creer
// le produit ou il y'a la reference 
// quantite , prix HT, prix TTC 
            
            $commande['produit'][$produit->getId()] = array('reference' => $produit->getTitre(),
                                                            'quantite' => $panier[$produit->getId()],
                                                            // round($produit->getPrix(), 2), 
                                                           // 2 chiffres apres la virgule
                                                            'prixHT' => round($produit->getPrix(),3),
                                                            'prixTTC' => round($produit->getPrix() / $produit->getTva()->getMultiplcate(),3));
        }
// on va creer tableaux livraison
        $commande['livraison'] = array('prenom' => $livraison->getPrenom(),
                                        'nom' => $livraison->getNom(),
                                        'matriculefiscale' => $livraison->getMatriculefiscale(),
                                        'bonducommande' => $livraison->getBonducommande(),
                                        'telephone' => $livraison->getTelephone(),
                                        'adresse' => $livraison->getAdresse(),
                                        'codepostal' => $livraison->getCodePostal(),
                                        'ville' => $livraison->getVille(),
                                        'pays' => $livraison->getPays(),
                                        'complement' => $livraison->getComplement());
        
        $commande['facturation'] = array('prenom' => $facturation->getPrenom(),
                                        'nom' => $facturation->getNom(),
                                        'matriculefiscale' => $livraison->getMatriculefiscale(),
                                        'bonducommande' => $livraison->getBonducommande(), 
                                        'telephone' => $facturation->getTelephone(),
                                        'adresse' => $facturation->getAdresse(),
                                        'codepostal' => $livraison->getCodePostal(),
                                        'ville' => $facturation->getVille(),
                                        'pays' => $facturation->getPays(),
                                        'complement' => $facturation->getComplement());
        $commande['prixHT'] = round($totalHT,3);
        $commande['prixTTC'] = round($totalHT + $totalTVA,3);
        $commande['token'] = bin2hex($generator);
        
      // Retour au tableaux commande      
        return $commande;
    }

   
    public function prepareCommandeAction(Request $request)
    {

        $session = $request->getSession();
        $em = $this->getDoctrine()->getManager();
        // session va appeller la commande
        if (!$session->has('commande'))
        {
          // si la session n'existe pas on va creer un new Commande   
            $commande = new Commande();
        } else {
    // on va chercher par session get commande        
            $commande = $em->getRepository('GestionProjetBundle:Commande')->find($session->get('commande'));
        }


        $commande->setDate(new \DateTime());
   // savoir quelle utilisateur a cree cette commande       
        $commande->setUtilisateur($this->container->get('security.token_storage')->getToken()->getUser());
    // valider,reference mil entite commande     
        $commande->setValider(0);
        $commande->setReference(0);
     // appel au tableaux que on a cree public function facture()     
        $commande->setCommande($this->facture());

 // si la session n'existe pas
        if (!$session->has('commande'))
        {
           // stocker la session   
            $em->persist($commande);
   // restocker la session          
            $session->set('commande',$commande);
        }
        $em->flush();
        return new Response($commande->getId());
    }



    /*
    *   Cette methode remplace l'API banque
    */
  
    public function validationCommandeAction($id, Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $commande = $em->getRepository('GestionProjetBundle:Commande')->find($id);
        if (!$commande || $commande->getValider() == 1)
        {
            throw $this->createNotFoundException('La commande n\'existe pas !');
        }
        $commande->setValider(1);
        //$commande->setReference(1); //Service a faire
        $commande->setReference($this->container->get('setNewReference')->reference()); //Service a faire
        $em->flush();

        $session = $request->getSession();

        $session->remove('adress');
        $session->remove('panier');
        $session->remove('commande');
/*
           // ici le mail de validation
        $message = \Swift_Message::newInstance()
            ->setSubject('Validation de votre commande')
            ->setFrom(array('microsystemeinformations@gmail.com' => "Wib"))
            ->setTo($commande->getUtilisateur()->getEmailCanonical())
            ->setCharset('utf-8')
            ->setContentType('text/html')
            ->setBody($this->renderView('GestionProjetBundle:Default:SwiftLayout/validationCommande.html.twig',array('utilisateur' => $commande->getUtilisateur())));
        $this->get('mailer')->send($message);
  */      
         // redireger notre utilisateur a un nouveaux message 
       $this->get('session')->getFlashBag()->add('success','Votre commande est validée avec succès');
        return $this->redirectToRoute('gestion_projet_homepage');
        
    }



}