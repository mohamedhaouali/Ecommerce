<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\DisqueDurExterne;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Disquedurexterne controller.
 *
 */
class DisqueDurExterneController extends Controller
{
    /**
     * Lists all disqueDurExterne entities.
     *
     */

        public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $disqueDurExternes= $em->getRepository('GestionProjetBundle:DisqueDurExterne')->findAll();
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
         $disqueDurExternes, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('disqueDurExterne/index.html.twig', array(
                   'disqueDurExternes' => $disqueDurExternes, 'disqueDurExternes' => $pagination
        ));
    }
    

    /**
     * Creates a new disqueDurExterne entity.
     *
     */
    public function newAction(Request $request)
    {
        $disqueDurExterne = new Disquedurexterne();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\DisqueDurExterneType', $disqueDurExterne);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($disqueDurExterne);
            $disqueDurExterne->upload();
            $em->flush();

            return $this->redirectToRoute('disquedurexterne_modifier', array('id' => $disqueDurExterne->getId()));
        }

        return $this->render('disquedurexterne/new.html.twig', array(
            'disqueDurExterne' => $disqueDurExterne,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a disqueDurExterne entity.
     *
     */
    public function showAction(DisqueDurExterne $disqueDurExterne)
    {
        $deleteForm = $this->createDeleteForm($disqueDurExterne);

        return $this->render('disquedurexterne/show.html.twig', array(
            'disqueDurExterne' => $disqueDurExterne,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing disqueDurExterne entity.
     *
     */
    public function editAction(Request $request, DisqueDurExterne $disqueDurExterne)
    {
        $deleteForm = $this->createDeleteForm($disqueDurExterne);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\DisqueDurExterneType', $disqueDurExterne);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em =$this->getDoctrine()->getManager();
            $disqueDurExterne->upload();
            $em->flush();

            return $this->redirectToRoute('disquedurexterne_edit', array('id' => $disqueDurExterne->getId()));
        }

        return $this->render('disquedurexterne/edit.html.twig', array(
            'disqueDurExterne' => $disqueDurExterne,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a disqueDurExterne entity.
     *
     */
    public function deleteAction(Request $request, DisqueDurExterne $disqueDurExterne)
    {
        $form = $this->createDeleteForm($disqueDurExterne);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($disqueDurExterne);
            $em->flush();
        }

        return $this->redirectToRoute('disquedurexterne_index');
    }

    /**
     * Creates a form to delete a disqueDurExterne entity.
     *
     * @param DisqueDurExterne $disqueDurExterne The disqueDurExterne entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(DisqueDurExterne $disqueDurExterne)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('disquedurexterne_delete', array('id' => $disqueDurExterne->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
    
     public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $disqueDurExternes = $em->getRepository('GestionProjetBundle:DisqueDurExterne')->findAll();

        return $this->render('disquedurexterne/modifier.html.twig', array(
                    'disqueDurExternes' => $disqueDurExternes,
        ));
    }
}
