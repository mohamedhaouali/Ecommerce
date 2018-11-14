<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\tableaux;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Myapp\GestionProjetBundle\Form\tableauxType;

/**
 * Tableaux controller.
 *
 */
class tableauxController extends Controller
{
    /**
     * Lists all tableaux entities.
     *
     */


       public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $tableauxes = $em->getRepository('GestionProjetBundle:tableaux')->findAll();
        
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $tableauxes, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('tableaux/index.html.twig', array(
          'tableauxes' => $tableauxes,'tableauxes' => $pagination
        ));
    }
    
    /**
     * Creates a new tableaux entity.
     *
     */
    public function newAction(Request $request)
    {
        $tableaux = new Tableaux();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\tableauxType', $tableaux);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $tableaux->upload();
            $em->persist($tableaux);
            $em->flush();

            return $this->redirectToRoute('tableaux_show', array('id' => $tableaux->getId()));
        }

        return $this->render('tableaux/new.html.twig', array(
            'tableaux' => $tableaux,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a tableaux entity.
     *
     */
    public function showAction(tableaux $tableaux)
    {
        $deleteForm = $this->createDeleteForm($tableaux);

        return $this->render('tableaux/show.html.twig', array(
            'tableaux' => $tableaux,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing tableaux entity.
     *
     */
    public function editAction(Request $request, tableaux $tableaux)
    {
        $deleteForm = $this->createDeleteForm($tableaux);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\tableauxType', $tableaux);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $tableaux->upload();
            $em->flush();

            return $this->redirectToRoute('tableaux_edit', array('id' => $tableaux->getId()));
        }

        return $this->render('tableaux/edit.html.twig', array(
            'tableaux' => $tableaux,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a tableaux entity.
     *
     */
    public function deleteAction(Request $request, tableaux $tableaux)
    {
        $form = $this->createDeleteForm($tableaux);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($tableaux);
            $em->flush();
        }

        return $this->redirectToRoute('tableaux_index');
    }

    /**
     * Creates a form to delete a tableaux entity.
     *
     * @param tableaux $tableaux The tableaux entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(tableaux $tableaux)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('tableaux_delete', array('id' => $tableaux->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
     public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $tableauxes = $em->getRepository('GestionProjetBundle:tableaux')->findAll();

        return $this->render('tableaux/modifier.html.twig', array(
                    'tableauxes' => $tableauxes,
        ));
    }
}
