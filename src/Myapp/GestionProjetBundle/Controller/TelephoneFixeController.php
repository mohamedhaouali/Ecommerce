<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\TelephoneFixe;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Telephonefixe controller.
 *
 */
class TelephoneFixeController extends Controller
{
    /**
     * Lists all telephoneFixe entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $telephoneFixes = $em->getRepository('GestionProjetBundle:TelephoneFixe')->findAll();
        
           
     $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $telephoneFixes, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('telephonefixe/index.html.twig', array(
                    'telephoneFixes' => $telephoneFixes, 'telephoneFixes' => $pagination
        ));

      
    }

    /**
     * Creates a new telephoneFixe entity.
     *
     */
    public function newAction(Request $request)
    {
        $telephoneFixe = new Telephonefixe();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\TelephoneFixeType', $telephoneFixe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($telephoneFixe);
            $telephoneFixe->upload();
            $em->flush();

            return $this->redirectToRoute('telephonefixe_modifier', array('id' => $telephoneFixe->getId()));
        }

        return $this->render('telephonefixe/new.html.twig', array(
            'telephoneFixe' => $telephoneFixe,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a telephoneFixe entity.
     *
     */
    public function showAction(TelephoneFixe $telephoneFixe)
    {
        $deleteForm = $this->createDeleteForm($telephoneFixe);

        return $this->render('telephonefixe/show.html.twig', array(
            'telephoneFixe' => $telephoneFixe,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing telephoneFixe entity.
     *
     */
    public function editAction(Request $request, TelephoneFixe $telephoneFixe)
    {
        $deleteForm = $this->createDeleteForm($telephoneFixe);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\TelephoneFixeType', $telephoneFixe);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('telephonefixe_edit', array('id' => $telephoneFixe->getId()));
        }

        return $this->render('telephonefixe/edit.html.twig', array(
            'telephoneFixe' => $telephoneFixe,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a telephoneFixe entity.
     *
     */
    public function deleteAction(Request $request, TelephoneFixe $telephoneFixe)
    {
        $form = $this->createDeleteForm($telephoneFixe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($telephoneFixe);
            $em->flush();
        }

        return $this->redirectToRoute('telephonefixe_index');
    }

    /**
     * Creates a form to delete a telephoneFixe entity.
     *
     * @param TelephoneFixe $telephoneFixe The telephoneFixe entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(TelephoneFixe $telephoneFixe)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('telephonefixe_delete', array('id' => $telephoneFixe->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
        public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $telephoneFixes = $em->getRepository('GestionProjetBundle:TelephoneFixe')->findAll();

        return $this->render('telephonefixe/modifier.html.twig', array(
                    'telephoneFixes' => $telephoneFixes,
        ));    }
}
