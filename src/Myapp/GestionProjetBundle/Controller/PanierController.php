<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Produits;
use Myapp\GestionProjetBundle\Entity\UtilisateursAdress;
use Ben\EcommerceBundle\Form\RechercheProduitType;
use Myapp\GestionProjetBundle\Form\UtilisateursAdressType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;




class PanierController extends Controller
{
    
    public function panierAction(Request $request)
    {
        $session= $request->getSession();
        // on recupere la session si elle n'existe pas elle va la creer
        if (!$session->has('panier')) {  $session->set('panier', array());  }
        $panier = $session->get('panier');
        // var_dump($session->get('panier'));
       // die();
        // on passe en parametre qui corespond a nos produits
        $produits=$this->getDoctrine()->getRepository('GestionProjetBundle:Produits')->findArray(array_keys($panier));

 // on a besoin du panier (qte) on va la stocke dans la variable session panier 'panier' => $session->get('panier'))
        return $this->render('GestionProjetBundle:Default:panier/layout/panier.html.twig',array('produits'=>$produits ,'panier'=>$panier));
    }


    
    public function menuAction(Request $request)
    {
        // cette function pour recuperer  la quantite
        $session= $request->getSession();
        // on recupere la session si elle n'existe pas elle va la creer
        if (!$session->has('panier')) {  $session->set('panier', array());  }
        
        $panier = $session->get('panier');

        $articles=$this->getDoctrine()->getRepository('GestionProjetBundle:Produits')->findArray(array_keys($panier));


        return $this->render('GestionProjetBundle:Default:panier/modulesUsed/panier.html.twig',array('articles'=>$articles ,'panier'=>$panier));
    }

 
    public function AjouterAction($id,Request $request)
    {

        $session= $request->getSession();
      // on recupere la session si elle n'existe pas elle va la creer
        if (!$session->has('panier')) {
            $session->set('panier', array());
            $session->getFlashBag()->add('success', " Article ajouté avec succès");
        }
             $panier = $session->get('panier');


        if (array_key_exists($id, $panier)) {

            if ($request->query->get('qte') != null){
                $panier[$id] = $request->query->get('qte');
                $session->getFlashBag()->add('success', " Quantité modifié avec succès");
            }
        }else{
            if($request->query->get('qte') != null){
                $panier[$id] = $request->query->get('qte');


            }  else{
                $panier[$id]=1;
                $session->getFlashBag()->add('success', " Article ajouté avec succès");
            }
        }

            $session->set('panier',$panier);

         return $this->redirectToRoute('panier');
    }

 
    public function SupprimerAction($id)
    {

        $session= new Session();
 // recupere variable session panier
        $panier = $session->get('panier');
  // if key exists on prend 2 parametres id w variable panier
        if (array_key_exists($id, $panier)) {
  // unset supprimer un article du panier du tableaux
            unset($panier[$id]);
    //mettre a jour le panier         
            $session->set('panier',$panier);
    // lorsque on supprime un article          
            $session->getFlashBag()->add('success', " Article supprimé avec succès ");
        }
   // redirection vers panier
        return $this->redirectToRoute('panier');
    }

   
    public function adresseSuppressionAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $entity=$em->getRepository('GestionProjetBundle:UtilisateursAdress')->find($id);
          // verification  de l'utilisateur 
        $utilisateur =$this->container->get('security.token_storage')->getToken()->getUser();

       // var_dump($this->container->get('security.token_storage')->getToken()->getUser());

        //var_dump($adress->getUtilisateur());

       if($utilisateur !=$entity->getUtilisateur() || !$entity ){

            return $this->redirectToRoute('livraison-panier');
       }
   // suppression de l'entite
        $em->remove($entity);
        $em->flush();

        return $this->redirectToRoute('livraison-panier');
    }

   
    public function livraisonAction(Request $request)
    {

        $utilisateursAdress = new UtilisateursAdress();
        $session=new Session();
          // elle a acces a l'annotation
        $utilisateur=$this->container->get('security.token_storage')->getToken()->getUser();

        // On récupere le formulaire
        $form = $this->createForm(UtilisateursAdressType::class,$utilisateursAdress);


        $form->handleRequest($request);
  // on va verifier si le formulaire est valide
        if ($form->isSubmitted() && $form->isValid()) {
 // si le formulaire est valide 
            $em = $this->getDoctrine()->getManager();
            $utilisateursAdress->setUtilisateur($utilisateur);
            $em->persist($utilisateursAdress);
            $em->flush();

            return $this->redirectToRoute('livraison-panier');

        }

        return $this->render('GestionProjetBundle:Default:panier/layout/livraison.html.twig',array('utilisateur'=>$utilisateur,'form'=>$form->createView()));
    }


    public function setLivraisonOnSession(Request $request){
        $session= $request->getSession();
        if (!$session->has('adress')) {  $session->set('adress', array());  }
        $adress = $session->get('adress');
 // facturation min default\views\panier\livraison  ou se trouve  <input type="radio" name="livraison"
 // livraison min default\views\panier\livraison  ou se trouve  <input type="radio" name="facturation"
        if($request->request->get('livraison') != null and $request->request->get('facturation') != null) {

            $adress['livraison'] = $request->request->get('livraison');
            $adress['facturation'] = $request->request->get('facturation');
        }
        else{
                // si utilisateur a faute
            return $this->redirectToRoute('validation-panier');
        }

// session pour le stockage du adresse
        $session->set('adress', $adress);
        return $this->redirectToRoute('validation-panier');
    }

   
    public function validationAction(Request $request)
    {

 //appel a la methode setLivraisonOnSession
        if ($request->getMethod() == 'POST')
        {
            $this->setLivraisonOnSession($request);
        }

        $em = $this->getDoctrine()->getManager();
            // il va chercher cette methode de prepare Commande du Commandes Controller
        $prepareCommande = $this->forward('GestionProjetBundle:Commandes:prepareCommande');
        // find ($prepare Commande -> on recupere le commande 
        // de return new Response  return new Response($commande->getId()); du Commandes Controller
        $commande = $em->getRepository('GestionProjetBundle:Commande')->find($prepareCommande->getContent());


        return $this->render('GestionProjetBundle:Default:panier/layout/validation.html.twig', array('cmd' => $commande));


    }
     /*public function exportAction(Request $request)
     {
         
     $em = $this->getDoctrine()->getManager();
     $commande = $em->getRepository('GestionProjetBundle:Commande')->findALL();
     $writer = $this->container->get('egyg33k.csv.writer');
     $csv = $writer::createFromFileObject(new \SplTempFileObject());
     $csv->insertOne(['reference', 'quantite', 'prix']);
     foreach (produit as $produits){
      $csv->insertOne(['titre', 'quantite', 'prix']); 
      $csv->insertOne()
     }
     
     $csv->output('panier.csv');
    
     }*/
     
  

    
    
     
     
}         
             
             
             
    

