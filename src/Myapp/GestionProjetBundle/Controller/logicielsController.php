<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\logiciels;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Logiciel controller.
 *
 */
class logicielsController extends Controller
{
    /**
     * Lists all logiciel entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $logiciels = $em->getRepository('GestionProjetBundle:logiciels')->findAll();
        
            $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $logiciels, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('logiciels/index.html.twig', array(
                     'logiciels' => $logiciels, 'logiciels' => $pagination
        ));
    }
        
        

    

    /**
     * Creates a new logiciel entity.
     *
     */
    public function newAction(Request $request)
    {
        $logiciel = new Logiciels();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\logicielsType', $logiciel);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($logiciel);
            $logiciel->upload();
            $em->flush();

            return $this->redirectToRoute('logiciels_modifier', array('id' => $logiciel->getId()));
        }

        return $this->render('logiciels/new.html.twig', array(
            'logiciel' => $logiciel,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a logiciel entity.
     *
     */
    public function showAction(logiciels $logiciel)
    {
        $deleteForm = $this->createDeleteForm($logiciel);

        return $this->render('logiciels/show.html.twig', array(
            'logiciel' => $logiciel,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing logiciel entity.
     *
     */
    public function editAction(Request $request, logiciels $logiciel)
    {
        $deleteForm = $this->createDeleteForm($logiciel);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\logicielsType', $logiciel);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('logiciels_edit', array('id' => $logiciel->getId()));
        }

        return $this->render('logiciels/edit.html.twig', array(
            'logiciel' => $logiciel,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a logiciel entity.
     *
     */
    public function deleteAction(Request $request, logiciels $logiciel)
    {
        $form = $this->createDeleteForm($logiciel);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($logiciel);
            $em->flush();
        }

        return $this->redirectToRoute('logiciels_index');
    }

    /**
     * Creates a form to delete a logiciel entity.
     *
     * @param logiciels $logiciel The logiciel entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(logiciels $logiciel)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('logiciels_delete', array('id' => $logiciel->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
       public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $logiciels = $em->getRepository('GestionProjetBundle:logiciels')->findAll();

        return $this->render('logiciels/modifier.html.twig', array(
                    'logiciels' => $logiciels,
        ));
    }
}
