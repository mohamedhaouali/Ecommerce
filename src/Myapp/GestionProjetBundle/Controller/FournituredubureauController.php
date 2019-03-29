<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Fournituredubureau;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Myapp\GestionProjetBundle\Form\FournituredubureauType;

/**
 * Fournituredubureau controller.
 *
 */
class FournituredubureauController extends Controller
{
    /**
     * Lists all fournituredubureau entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $fournituredubureaus = $em->getRepository('GestionProjetBundle:Fournituredubureau')->findAll();
        
                $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $fournituredubureaus, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('fournituredubureau/index.html.twig', array(
                    'fournituredubureaus' => $fournituredubureaus, 'fournituredubureaus' => $pagination
        ));
    }

    

    /**
     * Creates a new fournituredubureau entity.
     *
     */
    public function newAction(Request $request)
    {
        $fournituredubureau = new Fournituredubureau();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\FournituredubureauType', $fournituredubureau);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $fournituredubureau->upload();
            $em->persist($fournituredubureau);
            $em->flush();

            return $this->redirectToRoute('fournituredubureau_modifier', array('id' => $fournituredubureau->getId()));
        }

        return $this->render('fournituredubureau/new.html.twig', array(
            'fournituredubureau' => $fournituredubureau,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a fournituredubureau entity.
     *
     */
    public function showAction(Fournituredubureau $fournituredubureau)
    {
        $deleteForm = $this->createDeleteForm($fournituredubureau);

        return $this->render('fournituredubureau/show.html.twig', array(
            'fournituredubureau' => $fournituredubureau,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing fournituredubureau entity.
     *
     */
    public function editAction(Request $request, Fournituredubureau $fournituredubureau)
    {
        $deleteForm = $this->createDeleteForm($fournituredubureau);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\FournituredubureauType', $fournituredubureau);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em =$this->getDoctrine()->getManager();
            $fournituredubureau->upload();
            $em->flush();
            

            return $this->redirectToRoute('fournituredubureau_edit', array('id' => $fournituredubureau->getId()));
        }

        return $this->render('fournituredubureau/edit.html.twig', array(
            'fournituredubureau' => $fournituredubureau,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a fournituredubureau entity.
     *
     */
    public function deleteAction(Request $request, Fournituredubureau $fournituredubureau)
    {
        $form = $this->createDeleteForm($fournituredubureau);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($fournituredubureau);
            $em->flush();
        }

        return $this->redirectToRoute('fournituredubureau_index');
    }

    /**
     * Creates a form to delete a fournituredubureau entity.
     *
     * @param Fournituredubureau $fournituredubureau The fournituredubureau entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Fournituredubureau $fournituredubureau)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('fournituredubureau_delete', array('id' => $fournituredubureau->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
           public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $fournituredubureaus = $em->getRepository('GestionProjetBundle:Fournituredubureau')->findAll();

        return $this->render('fournituredubureau/modifier.html.twig', array(
                    'fournituredubureaus' => $fournituredubureaus,
        ));
    }
}
