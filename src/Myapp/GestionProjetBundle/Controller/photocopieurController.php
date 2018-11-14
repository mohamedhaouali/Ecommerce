<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\photocopieur;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Photocopieur controller.
 *
 */
class photocopieurController extends Controller
{
    /**
     * Lists all photocopieur entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $photocopieurs = $em->getRepository('GestionProjetBundle:photocopieur')->findAll();
        
         $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $photocopieurs, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );
        
     return $this->render('photocopieur/index.html.twig', array(
                    'photocopieurs' => $photocopieurs, 'photocopieurs' => $pagination
        ));
    }
       

    /**
     * Creates a new photocopieur entity.
     *
     */
    public function newAction(Request $request)
    {
        $photocopieur = new Photocopieur();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\photocopieurType', $photocopieur);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $photocopieur->upload();
            $em->persist($photocopieur);
            $em->flush();

            return $this->redirectToRoute('photocopieur_modifier', array('id' => $photocopieur->getId()));
        }

        return $this->render('photocopieur/new.html.twig', array(
            'photocopieur' => $photocopieur,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a photocopieur entity.
     *
     */
    public function showAction(photocopieur $photocopieur)
    {
        $deleteForm = $this->createDeleteForm($photocopieur);

        return $this->render('photocopieur/show.html.twig', array(
            'photocopieur' => $photocopieur,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing photocopieur entity.
     *
     */
    public function editAction(Request $request, photocopieur $photocopieur)
    {
        $deleteForm = $this->createDeleteForm($photocopieur);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\photocopieurType', $photocopieur);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('photocopieur_edit', array('id' => $photocopieur->getId()));
        }

        return $this->render('photocopieur/edit.html.twig', array(
            'photocopieur' => $photocopieur,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a photocopieur entity.
     *
     */
    public function deleteAction(Request $request, photocopieur $photocopieur)
    {
        $form = $this->createDeleteForm($photocopieur);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($photocopieur);
            $em->flush();
        }

        return $this->redirectToRoute('photocopieur_index');
    }

    /**
     * Creates a form to delete a photocopieur entity.
     *
     * @param photocopieur $photocopieur The photocopieur entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(photocopieur $photocopieur)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('photocopieur_delete', array('id' => $photocopieur->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
            public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $photocopieurs = $em->getRepository('GestionProjetBundle:photocopieur')->findAll();

        return $this->render('photocopieur/modifier.html.twig', array(
                    'photocopieurs' => $photocopieurs,
        ));
    }
}
