<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Resaux;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Resaux controller.
 *
 */
class ResauxController extends Controller
{
    /**
     * Lists all resaux entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $resauxes = $em->getRepository('GestionProjetBundle:Resaux')->findAll();
        
        
            $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $resauxes, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('resaux/index.html.twig', array(
                     'resauxes' => $resauxes,'resauxes' => $pagination
        ));
    }

  

    /**
     * Creates a new resaux entity.
     *
     */
    public function newAction(Request $request)
    {
        $resaux = new Resaux();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\ResauxType', $resaux);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $resaux->upload();
            $em->persist($resaux);
            $em->flush();

            return $this->redirectToRoute('resaux_modifier', array('id' => $resaux->getId()));
        }

        return $this->render('resaux/new.html.twig', array(
            'resaux' => $resaux,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a resaux entity.
     *
     */
    public function showAction(Resaux $resaux)
    {
        $deleteForm = $this->createDeleteForm($resaux);

        return $this->render('resaux/show.html.twig', array(
            'resaux' => $resaux,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing resaux entity.
     *
     */
    public function editAction(Request $request, Resaux $resaux)
    {
        $deleteForm = $this->createDeleteForm($resaux);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\ResauxType', $resaux);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('resaux_edit', array('id' => $resaux->getId()));
        }

        return $this->render('resaux/edit.html.twig', array(
            'resaux' => $resaux,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a resaux entity.
     *
     */
    public function deleteAction(Request $request, Resaux $resaux)
    {
        $form = $this->createDeleteForm($resaux);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($resaux);
            $em->flush();
        }

        return $this->redirectToRoute('resaux_index');
    }

    /**
     * Creates a form to delete a resaux entity.
     *
     * @param Resaux $resaux The resaux entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Resaux $resaux)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('resaux_delete', array('id' => $resaux->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
            public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $resauxes = $em->getRepository('GestionProjetBundle:Resaux')->findAll();

        return $this->render('resaux/modifier.html.twig', array(
                    'resauxes' => $resauxes,
        ));
    }
}
