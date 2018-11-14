<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Ordinateurdebureau;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Ordinateurdebureau controller.
 *
 */
class OrdinateurdebureauController extends Controller
{
    /**
     * Lists all ordinateurdebureau entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $ordinateurdebureaus = $em->getRepository('GestionProjetBundle:Ordinateurdebureau')->findAll();

        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $ordinateurdebureaus, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('ordinateurdebureau/index.html.twig', array(
                   'ordinateurdebureaus' => $ordinateurdebureaus,'ordinateurdebureaus' => $pagination
        ));
    }
        
        
    

    /**
     * Creates a new ordinateurdebureau entity.
     *
     */
    public function newAction(Request $request)
    {
        $ordinateurdebureau = new Ordinateurdebureau();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\OrdinateurdebureauType', $ordinateurdebureau);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($ordinateurdebureau);
            $ordinateurdebureau->upload();
            $em->flush();

            return $this->redirectToRoute('ordinateurdebureau_modifier', array('id' => $ordinateurdebureau->getId()));
        }

        return $this->render('ordinateurdebureau/new.html.twig', array(
            'ordinateurdebureau' => $ordinateurdebureau,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a ordinateurdebureau entity.
     *
     */
    public function showAction(Ordinateurdebureau $ordinateurdebureau)
    {
        $deleteForm = $this->createDeleteForm($ordinateurdebureau);

        return $this->render('ordinateurdebureau/show.html.twig', array(
            'ordinateurdebureau' => $ordinateurdebureau,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing ordinateurdebureau entity.
     *
     */
    public function editAction(Request $request, Ordinateurdebureau $ordinateurdebureau)
    {
        $deleteForm = $this->createDeleteForm($ordinateurdebureau);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\OrdinateurdebureauType', $ordinateurdebureau);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em =$this->getDoctrine()->getManager();
            $ordinateurdebureau->upload();
            $em->flush();

            return $this->redirectToRoute('ordinateurdebureau_edit', array('id' => $ordinateurdebureau->getId()));
        }

        return $this->render('ordinateurdebureau/edit.html.twig', array(
            'ordinateurdebureau' => $ordinateurdebureau,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a ordinateurdebureau entity.
     *
     */
    public function deleteAction(Request $request, Ordinateurdebureau $ordinateurdebureau)
    {
        $form = $this->createDeleteForm($ordinateurdebureau);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($ordinateurdebureau);
            $em->flush();
        }

        return $this->redirectToRoute('ordinateurdebureau_index');
    }

    /**
     * Creates a form to delete a ordinateurdebureau entity.
     *
     * @param Ordinateurdebureau $ordinateurdebureau The ordinateurdebureau entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Ordinateurdebureau $ordinateurdebureau)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('ordinateurdebureau_delete', array('id' => $ordinateurdebureau->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
  
         public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $ordinateurdebureaus = $em->getRepository('GestionProjetBundle:Ordinateurdebureau')->findAll();

        return $this->render('ordinateurdebureau/modifier.html.twig', array(
                    'ordinateurdebureaus' => $ordinateurdebureaus,
        ));    }
     
    }

