<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Accessoiresimprimante;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Myapp\GestionProjetBundle\Form\AccessoiresimprimanteType;


/**
 * Accessoiresimprimante controller.
 *
 */
class AccessoiresimprimanteController extends Controller
{
    /**
     * Lists all accessoiresimprimante entities.
     *
     */
  
      public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $accessoiresimprimantes  = $em->getRepository('GestionProjetBundle:Accessoiresimprimante')->findAll();
        
                $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $accessoiresimprimantes, $request->query->get('page', 1)/* page number */, 20/* limit per page */
        );

        return $this->render('accessoiresimprimante/index.html.twig', array(
                    'accessoiresimprimantes' => $accessoiresimprimantes, 'accessoiresimprimantes' => $pagination
        ));
    }
    

    /**
     * Creates a new accessoiresimprimante entity.
     *
     */
    public function newAction(Request $request)
    {
        $accessoiresimprimante = new Accessoiresimprimante();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\AccessoiresimprimanteType', $accessoiresimprimante);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $accessoiresimprimante->upload();
            $em->persist($accessoiresimprimante);
            $em->flush();

            return $this->redirectToRoute('accessoiresimprimante_modifier', array('id' => $accessoiresimprimante->getId()));
        }

        return $this->render('accessoiresimprimante/new.html.twig', array(
            'accessoiresimprimante' => $accessoiresimprimante,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a accessoiresimprimante entity.
     *
     */
    public function showAction(Accessoiresimprimante $accessoiresimprimante)
    {
        $deleteForm = $this->createDeleteForm($accessoiresimprimante);

        return $this->render('accessoiresimprimante/show.html.twig', array(
            'accessoiresimprimante' => $accessoiresimprimante,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing accessoiresimprimante entity.
     *
     */
    public function editAction(Request $request, Accessoiresimprimante $accessoiresimprimante)
    {
        $deleteForm = $this->createDeleteForm($accessoiresimprimante);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\AccessoiresimprimanteType', $accessoiresimprimante);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em =$this->getDoctrine()->getManager();
            $accessoiresimprimante->upload();
            $em->flush();
            
            

            return $this->redirectToRoute('accessoiresimprimante_edit', array('id' => $accessoiresimprimante->getId()));
        }

        return $this->render('accessoiresimprimante/edit.html.twig', array(
            'accessoiresimprimante' => $accessoiresimprimante,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a accessoiresimprimante entity.
     *
     */
    public function deleteAction(Request $request, Accessoiresimprimante $accessoiresimprimante)
    {
        $form = $this->createDeleteForm($accessoiresimprimante);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($accessoiresimprimante);
            $em->flush();
        }

        return $this->redirectToRoute('accessoiresimprimante_index');
    }

    /**
     * Creates a form to delete a accessoiresimprimante entity.
     *
     * @param Accessoiresimprimante $accessoiresimprimante The accessoiresimprimante entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Accessoiresimprimante $accessoiresimprimante)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('accessoiresimprimante_delete', array('id' => $accessoiresimprimante->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
    
           public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $accessoiresimprimantes = $em->getRepository('GestionProjetBundle:Accessoiresimprimante')->findAll();

        return $this->render('accessoiresimprimante/modifier.html.twig', array(
                    'accessoiresimprimantes' => $accessoiresimprimantes,
        ));
    }
    
}
