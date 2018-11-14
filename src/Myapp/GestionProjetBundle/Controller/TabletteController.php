<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Tablette;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

/**
 * Tablette controller.
 *
 */
class TabletteController extends Controller
{
    /**
     * Lists all tablette entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $tablettes = $em->getRepository('GestionProjetBundle:Tablette')->findAll();
        
       $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $tablettes, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

            return $this->render('tablette/index.html.twig', array(
                     'tablettes' => $tablettes, 'tablettes' => $pagination
        ));
    }
      
        
    

    /**
     * Creates a new tablette entity.
     *
     */
    public function newAction(Request $request)
    {
        $tablette = new Tablette();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\TabletteType', $tablette);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($tablette);
            $tablette->upload();
            $em->flush();

            return $this->redirectToRoute('tablette_modifier', array('id' => $tablette->getId()));
        }

        return $this->render('tablette/new.html.twig', array(
            'tablette' => $tablette,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a tablette entity.
     *
     */
    public function showAction(Tablette $tablette)
    {
        $deleteForm = $this->createDeleteForm($tablette);

        return $this->render('tablette/show.html.twig', array(
            'tablette' => $tablette,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing tablette entity.
     *
     */
    public function editAction(Request $request, Tablette $tablette)
    {
        $deleteForm = $this->createDeleteForm($tablette);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\TabletteType', $tablette);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em =$this->getDoctrine()->getManager();
            $tablette->upload();
            $em->flush();

            return $this->redirectToRoute('tablette_edit', array('id' => $tablette->getId()));
        }

        return $this->render('tablette/edit.html.twig', array(
            'tablette' => $tablette,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a tablette entity.
     *
     */
    public function deleteAction(Request $request, Tablette $tablette)
    {
        $form = $this->createDeleteForm($tablette);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($tablette);
            $em->flush();
        }

        return $this->redirectToRoute('tablette_index');
    }

    /**
     * Creates a form to delete a tablette entity.
     *
     * @param Tablette $tablette The tablette entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Tablette $tablette)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('tablette_delete', array('id' => $tablette->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
          public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $tablettes = $em->getRepository('GestionProjetBundle:Tablette')->findAll();

        return $this->render('tablette/modifier.html.twig', array(
                    'tablettes' => $tablettes,
        ));    }
}
