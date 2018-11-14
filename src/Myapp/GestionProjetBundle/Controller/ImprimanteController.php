<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Imprimante;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Imprimante controller.
 *
 */
class ImprimanteController extends Controller
{
    /**
     * Lists all imprimante entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $imprimantes = $em->getRepository('GestionProjetBundle:Imprimante')->findAll();
        
               $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $imprimantes, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('imprimante/index.html.twig', array(
                    'imprimantes' => $imprimantes, 'imprimantes' => $pagination
        ));
    }

    

    /**
     * Creates a new imprimante entity.
     *
     */
    public function newAction(Request $request)
    {
        $imprimante = new Imprimante();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\ImprimanteType', $imprimante);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $imprimante->upload();
            $em->persist($imprimante);
            $em->flush();

            return $this->redirectToRoute('imprimante_modifier', array('id' => $imprimante->getId()));
        }

        return $this->render('imprimante/new.html.twig', array(
            'imprimante' => $imprimante,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a imprimante entity.
     *
     */
    public function showAction(Imprimante $imprimante)
    {
        $deleteForm = $this->createDeleteForm($imprimante);

        return $this->render('imprimante/show.html.twig', array(
            'imprimante' => $imprimante,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing imprimante entity.
     *
     */
    public function editAction(Request $request, Imprimante $imprimante)
    {
        $deleteForm = $this->createDeleteForm($imprimante);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\ImprimanteType', $imprimante);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('imprimante_edit', array('id' => $imprimante->getId()));
        }

        return $this->render('imprimante/edit.html.twig', array(
            'imprimante' => $imprimante,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a imprimante entity.
     *
     */
    public function deleteAction(Request $request, Imprimante $imprimante)
    {
        $form = $this->createDeleteForm($imprimante);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($imprimante);
            $em->flush();
        }

        return $this->redirectToRoute('imprimante_index');
    }

    /**
     * Creates a form to delete a imprimante entity.
     *
     * @param Imprimante $imprimante The imprimante entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Imprimante $imprimante)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('imprimante_delete', array('id' => $imprimante->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
             public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $imprimantes = $em->getRepository('GestionProjetBundle:Imprimante')->findAll();

        return $this->render('imprimante/modifier.html.twig', array(
                    'imprimantes' => $imprimantes,
        ));
    }
    
}
