<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\videosurveillance;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Videosurveillance controller.
 *
 */
class videosurveillanceController extends Controller
{
    /**
     * Lists all videosurveillance entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $videosurveillances = $em->getRepository('GestionProjetBundle:videosurveillance')->findAll();
        
        
                 $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $videosurveillances, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('videosurveillance/index.html.twig', array(
                     'videosurveillances' => $videosurveillances, 'videosurveillances' => $pagination
        ));
    }

   
    /**
     * Creates a new videosurveillance entity.
     *
     */
    public function newAction(Request $request)
    {
        $videosurveillance = new Videosurveillance();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\videosurveillanceType', $videosurveillance);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $videosurveillance->upload();
            $em->persist($videosurveillance);
            $em->flush();

            return $this->redirectToRoute('videosurveillance_modifier', array('id' => $videosurveillance->getId()));
        }

        return $this->render('videosurveillance/new.html.twig', array(
            'videosurveillance' => $videosurveillance,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a videosurveillance entity.
     *
     */
    public function showAction(videosurveillance $videosurveillance)
    {
        $deleteForm = $this->createDeleteForm($videosurveillance);

        return $this->render('videosurveillance/show.html.twig', array(
            'videosurveillance' => $videosurveillance,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing videosurveillance entity.
     *
     */
    public function editAction(Request $request, videosurveillance $videosurveillance)
    {
        $deleteForm = $this->createDeleteForm($videosurveillance);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\videosurveillanceType', $videosurveillance);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('videosurveillance_edit', array('id' => $videosurveillance->getId()));
        }

        return $this->render('videosurveillance/edit.html.twig', array(
            'videosurveillance' => $videosurveillance,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a videosurveillance entity.
     *
     */
    public function deleteAction(Request $request, videosurveillance $videosurveillance)
    {
        $form = $this->createDeleteForm($videosurveillance);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($videosurveillance);
            $em->flush();
        }

        return $this->redirectToRoute('videosurveillance_index');
    }

    /**
     * Creates a form to delete a videosurveillance entity.
     *
     * @param videosurveillance $videosurveillance The videosurveillance entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(videosurveillance $videosurveillance)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('videosurveillance_delete', array('id' => $videosurveillance->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
            public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $videosurveillances = $em->getRepository('GestionProjetBundle:videosurveillance')->findAll();

        return $this->render('videosurveillance/modifier.html.twig', array(
                    'videosurveillances' => $videosurveillances,
        ));
    }
}
