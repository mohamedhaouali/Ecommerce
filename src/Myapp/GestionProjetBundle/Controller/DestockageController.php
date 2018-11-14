<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Destockage;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Myapp\GestionProjetBundle\Form\DestockageType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Destockage controller.
 *
 */
class DestockageController extends Controller
{
    /**
     * Lists all destockage entities.
     *
     */
    
        public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $destockages = $em->getRepository('GestionProjetBundle:Destockage')->findAll();
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $destockages, $request->query->get('page', 1)/* page number */, 20/* limit per page */
        );

        return $this->render('destockage/index.html.twig', array(
                   'destockages' => $destockages, 'destockages' => $pagination
        ));
    }
    /**


     * Creates a new destockage entity.
     *
     */
    public function newAction(Request $request)
    {
        $destockage = new Destockage();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\DestockageType', $destockage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $destockage->upload();
            $em->persist($destockage);
            $em->flush();

            return $this->redirectToRoute('destockage_modifier', array('id' => $destockage->getId()));
        }

        return $this->render('destockage/new.html.twig', array(
            'destockage' => $destockage,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a destockage entity.
     *
     */
    public function showAction(Destockage $destockage)
    {
        $deleteForm = $this->createDeleteForm($destockage);

        return $this->render('destockage/show.html.twig', array(
            'destockage' => $destockage,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing destockage entity.
     *
     */
    public function editAction(Request $request, Destockage $destockage)
    {
        $deleteForm = $this->createDeleteForm($destockage);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\DestockageType', $destockage);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('destockage_edit', array('id' => $destockage->getId()));
        }

        return $this->render('destockage/edit.html.twig', array(
            'destockage' => $destockage,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a destockage entity.
     *
     */
    public function deleteAction(Request $request, Destockage $destockage)
    {
        $form = $this->createDeleteForm($destockage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($destockage);
            $em->flush();
        }

        return $this->redirectToRoute('destockage_index');
    }

    /**
     * Creates a form to delete a destockage entity.
     *
     * @param Destockage $destockage The destockage entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Destockage $destockage)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('destockage_delete', array('id' => $destockage->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
     public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $destockages = $em->getRepository('GestionProjetBundle:Destockage')->findAll();

        return $this->render('destockage/modifier.html.twig', array(
                    'destockages' => $destockages,
        ));
    }
    
}
