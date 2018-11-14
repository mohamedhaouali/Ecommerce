<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Onduleur;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Onduleur controller.
 *
 */
class OnduleurController extends Controller
{
    /**
     * Lists all onduleur entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $onduleurs = $em->getRepository('GestionProjetBundle:Onduleur')->findAll();
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $onduleurs, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('onduleur/index.html.twig', array(
                   'onduleurs' => $onduleurs, 'onduleurs' => $pagination
        ));
    }
        

     

    /**
     * Creates a new onduleur entity.
     *
     */
    public function newAction(Request $request)
    {
        $onduleur = new Onduleur();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\OnduleurType', $onduleur);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $onduleur->upload();
            $em->persist($onduleur);
            $em->flush();

            return $this->redirectToRoute('onduleur_modifier', array('id' => $onduleur->getId()));
        }

        return $this->render('onduleur/new.html.twig', array(
            'onduleur' => $onduleur,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a onduleur entity.
     *
     */
    public function showAction(Onduleur $onduleur)
    {
        $deleteForm = $this->createDeleteForm($onduleur);

        return $this->render('onduleur/show.html.twig', array(
            'onduleur' => $onduleur,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing onduleur entity.
     *
     */
    public function editAction(Request $request, Onduleur $onduleur)
    {
        $deleteForm = $this->createDeleteForm($onduleur);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\OnduleurType', $onduleur);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('onduleur_edit', array('id' => $onduleur->getId()));
        }

        return $this->render('onduleur/edit.html.twig', array(
            'onduleur' => $onduleur,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a onduleur entity.
     *
     */
    public function deleteAction(Request $request, Onduleur $onduleur)
    {
        $form = $this->createDeleteForm($onduleur);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($onduleur);
            $em->flush();
        }

        return $this->redirectToRoute('onduleur_index');
    }

    /**
     * Creates a form to delete a onduleur entity.
     *
     * @param Onduleur $onduleur The onduleur entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Onduleur $onduleur)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('onduleur_delete', array('id' => $onduleur->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
        public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $onduleurs = $em->getRepository('GestionProjetBundle:Onduleur')->findAll();

        return $this->render('onduleur/modifier.html.twig', array(
                    'onduleurs' => $onduleurs,
        ));
    }
}
