<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Ordinateurportable;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Ordinateurportable controller.
 *
 */
class OrdinateurportableController extends Controller
{
    /**
     * Lists all ordinateurportable entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $ordinateurportables = $em->getRepository('GestionProjetBundle:Ordinateurportable')->findAll();
        
              
       $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $ordinateurportables, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('ordinateurportable/index.html.twig', array(
                     'ordinateurportables' => $ordinateurportables,'ordinateurportables' => $pagination
        ));
    }
        

   

    /**
     * Creates a new ordinateurportable entity.
     *
     */
    public function newAction(Request $request)
    {
        $ordinateurportable = new Ordinateurportable();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\OrdinateurportableType', $ordinateurportable);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $ordinateurportable->upload();
            $em->persist($ordinateurportable);
            $em->flush();

            return $this->redirectToRoute('ordinateurportable_modifier', array('id' => $ordinateurportable->getId()));
        }

        return $this->render('ordinateurportable/new.html.twig', array(
            'ordinateurportable' => $ordinateurportable,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a ordinateurportable entity.
     *
     */
    public function showAction(Ordinateurportable $ordinateurportable)
    {
        $deleteForm = $this->createDeleteForm($ordinateurportable);

        return $this->render('ordinateurportable/show.html.twig', array(
            'ordinateurportable' => $ordinateurportable,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing ordinateurportable entity.
     *
     */
    public function editAction(Request $request, Ordinateurportable $ordinateurportable)
    {
        $deleteForm = $this->createDeleteForm($ordinateurportable);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\OrdinateurportableType', $ordinateurportable);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('ordinateurportable_edit', array('id' => $ordinateurportable->getId()));
        }

        return $this->render('ordinateurportable/edit.html.twig', array(
            'ordinateurportable' => $ordinateurportable,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a ordinateurportable entity.
     *
     */
    public function deleteAction(Request $request, Ordinateurportable $ordinateurportable)
    {
        $form = $this->createDeleteForm($ordinateurportable);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($ordinateurportable);
            $em->flush();
        }

        return $this->redirectToRoute('ordinateurportable_index');
    }

    /**
     * Creates a form to delete a ordinateurportable entity.
     *
     * @param Ordinateurportable $ordinateurportable The ordinateurportable entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Ordinateurportable $ordinateurportable)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('ordinateurportable_delete', array('id' => $ordinateurportable->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
             public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $ordinateurportables = $em->getRepository('GestionProjetBundle:Ordinateurportable')->findAll();

        return $this->render('ordinateurportable/modifier.html.twig', array(
                    'ordinateurportables' => $ordinateurportables ,
        ));
    }
    
}
