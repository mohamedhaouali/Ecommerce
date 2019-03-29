<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Sac;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Myapp\GestionProjetBundle\Form\SacType;


/**
 * Sac controller.
 *
 */
class SacController extends Controller
{
    /**
     * Lists all sac entities.
     *
     */

        public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $sacs = $em->getRepository('GestionProjetBundle:Sac')->findAll();
        
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $sacs, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('sac/index.html.twig', array(
          'sacs' => $sacs,'sacs' => $pagination
        ));
    }
    

    /**
     * Creates a new sac entity.
     *
     */
    public function newAction(Request $request)
    {
        $sac = new Sac();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\SacType', $sac);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $sac->upload();
            $em->persist($sac);
            $em->flush();

            return $this->redirectToRoute('sac_modifier', array('id' => $sac->getId()));
        }

        return $this->render('sac/new.html.twig', array(
            'sac' => $sac,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a sac entity.
     *
     */
    public function showAction(Sac $sac)
    {
        $deleteForm = $this->createDeleteForm($sac);

        return $this->render('sac/show.html.twig', array(
            'sac' => $sac,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing sac entity.
     *
     */
    public function editAction(Request $request, Sac $sac)
    {
        $deleteForm = $this->createDeleteForm($sac);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\SacType', $sac);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em =$this->getDoctrine()->getManager();
            $sac->upload();
            $em->flush();

            return $this->redirectToRoute('sac_edit', array('id' => $sac->getId()));
        }

        return $this->render('sac/edit.html.twig', array(
            'sac' => $sac,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a sac entity.
     *
     */
    public function deleteAction(Request $request, Sac $sac)
    {
        $form = $this->createDeleteForm($sac);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($sac);
            $em->flush();
        }

        return $this->redirectToRoute('sac_index');
    }

    /**
     * Creates a form to delete a sac entity.
     *
     * @param Sac $sac The sac entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Sac $sac)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('sac_delete', array('id' => $sac->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
    public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $sacs = $em->getRepository('GestionProjetBundle:Sac')->findAll();

        return $this->render('sac/modifier.html.twig', array(
                    'sacs' => $sacs,
        ));
    }
}
