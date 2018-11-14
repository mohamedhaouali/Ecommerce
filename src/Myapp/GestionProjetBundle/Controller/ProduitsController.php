<?php

namespace Myapp\GestionProjetBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Myapp\GestionProjetBundle\Entity\Produits;

use Myapp\GestionProjetBundle\Entity\Categories;

use Symfony\Component\HttpFoundation\Request;

use Myapp\GestionProjetBundle\Form\RechercheType;

class ProduitsController extends Controller
{
  
    public function produitsAction( $categorie = null, Request $request)
    {
       
      $session = $request->getSession();  
      $em=  $this->getDoctrine()->getManager();
         // si l'article de panier est vide 
        if ($categorie != null) {
            $findProduits = $em->getRepository('GestionProjetBundle:Produits')->find($categorie);
        }
        // si l'article de panier est disponible
         else {
          // find By recherche des entites selon des criteres (disponible)    
             $findProduits = $em->getRepository('GestionProjetBundle:Produits')->findBy(array('disponible' => 1));
        }

        if ($session->has('panier')) {
            $panier = $session->get('panier');
        } else {
            $panier = false;
        }
  $produits =  $this->get('knp_paginator')->paginate(
            $findProduits, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
           20/*limit per page*/
        );
      
    
        return $this->render('GestionProjetBundle:Default:produits/layout/produits.html.twig',array('produits'=>$produits,'panier' => $panier   ));
    }
    
     public function presentationAction($id, Request $request)
    {
      $session = $request->getSession();     
      $em=  $this->getDoctrine()->getManager();
      $produit=$em->getRepository("GestionProjetBundle:Produits")->find($id); 
          if (!$produit) throw $this->createNotFoundException('La page n\'existe pas.');

        if ($session->has('panier'))
        {
            $panier = $session->get('panier');
        }else{
            $panier = false;
        } 
         
        return $this->render('GestionProjetBundle:Default:produits/layout/presentation.html.twig',array('produit'=>$produit,'panier' => $panier));
    }
    
   public function rechercheAction()
    {
        $form = $this->createForm(RechercheType::class);
        return $this->render('GestionProjetBundle:Default:Recherche/modulesUsed/recherche.html.twig', array('form' => $form->createView()));
    } 
           
    public function rechercheTraitementAction()
    {
        $request = Request::createFromGlobals();
        // creation form recherche type
        $form = $this->createForm(RechercheType::class);
        if ($request->getMethod() == 'POST') {
            $form->handleRequest($request);
            $em = $this->getDoctrine()->getManager();
            $findProduits = $em->getRepository('GestionProjetBundle:Produits')->recherche($form['recherche']->getData());
        } else {
            throw $this->createNotFoundException('La page n\'existe pas.');
        }
$produits =  $this->get('knp_paginator')->paginate(
            $findProduits, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            5/*limit per page*/
        );
        return $this->render('GestionProjetBundle:Default:produits/layout/produits.html.twig', array('produits' => $produits));
    } 
    
 public function recherche1Action(Request $request)
        
            {
       $em = $this->getDoctrine()->getManager();
       $produits=$em->getRepository("GestionProjetBundle:Produits")->findAll();// afficher tous les modeles
       if($request->isMethod('POST'));{
         $titre=$request->get('titre');
         $produits=$em->getRepository("GestionProjetBundle:Produits")->findProduitsBytitre($titre);// afficher par titre
        
           
       
       } 
       return $this->render('GestionProjetBundle:Default:rechercheArticle.html.twig', array(
                    'produits'=>$produits,
        ));
       
       
}
       
}

