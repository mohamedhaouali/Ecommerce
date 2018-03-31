<?php

namespace Myapp\GestionProjetBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Myapp\GestionProjetBundle\Entity\Categories;


class CategoriesController extends Controller
{
    
    public function menuAction()
    {
      $em=  $this->getDoctrine()->getManager();
      $categories=$em->getRepository("GestionProjetBundle:Categories")->findAll();
      
     return $this->render('GestionProjetBundle:Default:categories/modulesUsed/menu.html.twig',array('categories'=>$categories));
       
    } 
    
   
}
