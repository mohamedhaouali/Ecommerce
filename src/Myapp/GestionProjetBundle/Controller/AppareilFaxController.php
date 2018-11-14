<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\AppareilFax;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Appareilfax controller.
 *
 */
class AppareilFaxController extends Controller
{
    /**
     * Lists all appareilFax entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $appareilFaxes = $em->getRepository('GestionProjetBundle:AppareilFax')->findAll();
        
         $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $appareilFaxes, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('appareilfax/index.html.twig', array(
                    'appareilFaxes' => $appareilFaxes, 'appareilFaxes' => $pagination
        ));
    }
        

    

    /**
     * Creates a new appareilFax entity.
     *
     */
    public function newAction(Request $request)
    {
        $appareilFax = new Appareilfax();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\AppareilFaxType', $appareilFax);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($appareilFax);
            $appareilFax->upload();
            $em->flush();

            return $this->redirectToRoute('appareilfax_modifier', array('id' => $appareilFax->getId()));
        }

        return $this->render('appareilfax/new.html.twig', array(
            'appareilFax' => $appareilFax,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a appareilFax entity.
     *
     */
    public function showAction(AppareilFax $appareilFax)
    {
        $deleteForm = $this->createDeleteForm($appareilFax);

        return $this->render('appareilfax/show.html.twig', array(
            'appareilFax' => $appareilFax,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing appareilFax entity.
     *
     */
    public function editAction(Request $request, AppareilFax $appareilFax)
    {
        $deleteForm = $this->createDeleteForm($appareilFax);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\AppareilFaxType', $appareilFax);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('appareilfax_edit', array('id' => $appareilFax->getId()));
        }

        return $this->render('appareilfax/edit.html.twig', array(
            'appareilFax' => $appareilFax,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a appareilFax entity.
     *
     */
    public function deleteAction(Request $request, AppareilFax $appareilFax)
    {
        $form = $this->createDeleteForm($appareilFax);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($appareilFax);
            $em->flush();
        }

        return $this->redirectToRoute('appareilfax_index');
    }

    /**
     * Creates a form to delete a appareilFax entity.
     *
     * @param AppareilFax $appareilFax The appareilFax entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AppareilFax $appareilFax)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('appareilfax_delete', array('id' => $appareilFax->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
            public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $appareilFaxes = $em->getRepository('GestionProjetBundle:AppareilFax')->findAll();

        return $this->render('appareilfax/modifier.html.twig', array(
                    'appareilFaxes' => $appareilFaxes,
        ));    }
}
