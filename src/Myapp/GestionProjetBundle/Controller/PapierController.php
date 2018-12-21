<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Papier;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Myapp\GestionProjetBundle\Form\PapierType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;




/**
 * Papier controller.
 *
 */
class PapierController extends Controller
{
    /**
     * Lists all papier entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $papiers = $em->getRepository('GestionProjetBundle:Papier')->findAll();
        
          $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $papiers, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('papier/index.html.twig', array(
                    'papiers' => $papiers, 'papiers' => $pagination
        ));
    }
      

    /**
     * Creates a new papier entity.
     *
     */
    public function newAction(Request $request)
    {
        $papier = new Papier();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\PapierType', $papier);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $papier->upload();
            $em->persist($papier);
            $em->flush();

            return $this->redirectToRoute('papier_modifier', array('id' => $papier->getId()));
        }

        return $this->render('papier/new.html.twig', array(
            'papier' => $papier,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a papier entity.
     *
     */
    public function showAction(Papier $papier)
    {
        $deleteForm = $this->createDeleteForm($papier);

        return $this->render('papier/show.html.twig', array(
            'papier' => $papier,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing papier entity.
     *
     */
    public function editAction(Request $request, Papier $papier)
    {
        $deleteForm = $this->createDeleteForm($papier);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\PapierType', $papier);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
           $em =$this->getDoctrine()->getManager();
            $papier->upload();
            $em->flush();

            return $this->redirectToRoute('papier_edit', array('id' => $papier->getId()));
        }

        return $this->render('papier/edit.html.twig', array(
            'papier' => $papier,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a papier entity.
     *
     */
    public function deleteAction(Request $request, Papier $papier)
    {
        $form = $this->createDeleteForm($papier);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($papier);
            $em->flush();
        }

        return $this->redirectToRoute('papier_index');
    }

    /**
     * Creates a form to delete a papier entity.
     *
     * @param Papier $papier The papier entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Papier $papier)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('papier_delete', array('id' => $papier->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
        public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $papiers = $em->getRepository('GestionProjetBundle:Papier')->findAll();

        return $this->render('papier/modifier.html.twig', array(
                    'papiers' => $papiers,
        ));
    }
}
