<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\AccessoiresTelephone;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Accessoirestelephone controller.
 *
 */
class AccessoiresTelephoneController extends Controller
{
    /**
     * Lists all accessoiresTelephone entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $accessoiresTelephones = $em->getRepository('GestionProjetBundle:AccessoiresTelephone')->findAll();
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
         $accessoiresTelephones, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('accessoirestelephone/index.html.twig', array(
                   'accessoiresTelephones' => $accessoiresTelephones, 'accessoiresTelephones' => $pagination
        ));
    }
        

   

    /**
     * Creates a new accessoiresTelephone entity.
     *
     */
    public function newAction(Request $request)
    {
        $accessoiresTelephone = new Accessoirestelephone();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\AccessoiresTelephoneType', $accessoiresTelephone);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($accessoiresTelephone);
            $em->flush();

            return $this->redirectToRoute('accessoirestelephone_modifier', array('id' => $accessoiresTelephone->getId()));
        }

        return $this->render('accessoirestelephone/new.html.twig', array(
            'accessoiresTelephone' => $accessoiresTelephone,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a accessoiresTelephone entity.
     *
     */
    public function showAction(AccessoiresTelephone $accessoiresTelephone)
    {
        $deleteForm = $this->createDeleteForm($accessoiresTelephone);

        return $this->render('accessoirestelephone/show.html.twig', array(
            'accessoiresTelephone' => $accessoiresTelephone,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing accessoiresTelephone entity.
     *
     */
    public function editAction(Request $request, AccessoiresTelephone $accessoiresTelephone)
    {
        $deleteForm = $this->createDeleteForm($accessoiresTelephone);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\AccessoiresTelephoneType', $accessoiresTelephone);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('accessoirestelephone_edit', array('id' => $accessoiresTelephone->getId()));
        }

        return $this->render('accessoirestelephone/edit.html.twig', array(
            'accessoiresTelephone' => $accessoiresTelephone,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a accessoiresTelephone entity.
     *
     */
    public function deleteAction(Request $request, AccessoiresTelephone $accessoiresTelephone)
    {
        $form = $this->createDeleteForm($accessoiresTelephone);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($accessoiresTelephone);
            $em->flush();
        }

        return $this->redirectToRoute('accessoirestelephone_index');
    }

    /**
     * Creates a form to delete a accessoiresTelephone entity.
     *
     * @param AccessoiresTelephone $accessoiresTelephone The accessoiresTelephone entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AccessoiresTelephone $accessoiresTelephone)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('accessoirestelephone_delete', array('id' => $accessoiresTelephone->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
         public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $accessoiresTelephones = $em->getRepository('GestionProjetBundle:AccessoiresTelephone')->findAll();

        return $this->render('accessoirestelephone/modifier.html.twig', array(
                    'accessoiresTelephones' => $accessoiresTelephones,
        ));
    }
}
