<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Cartememoire;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Cartememoire controller.
 *
 */
class CartememoireController extends Controller
{
    /**
     * Lists all cartememoire entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $cartememoires = $em->getRepository('GestionProjetBundle:Cartememoire')->findAll();
        
         
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $cartememoires, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('cartememoire/index.html.twig', array(
            'cartememoires' => $cartememoires,'cartememoires' => $pagination
        ));
    }

    /**
     * Creates a new cartememoire entity.
     *
     */
    public function newAction(Request $request)
    {
        $cartememoire = new Cartememoire();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\CartememoireType', $cartememoire);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($cartememoire);
            $cartememoire->upload();
            $em->flush();

            return $this->redirectToRoute('cartememoire_modifier', array('id' => $cartememoire->getId()));
        }

        return $this->render('cartememoire/new.html.twig', array(
            'cartememoire' => $cartememoire,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a cartememoire entity.
     *
     */
    public function showAction(Cartememoire $cartememoire)
    {
        $deleteForm = $this->createDeleteForm($cartememoire);

        return $this->render('cartememoire/show.html.twig', array(
            'cartememoire' => $cartememoire,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing cartememoire entity.
     *
     */
    public function editAction(Request $request, Cartememoire $cartememoire)
    {
        $deleteForm = $this->createDeleteForm($cartememoire);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\CartememoireType', $cartememoire);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $cartememoire->upload();
            $em->flush();
            

            return $this->redirectToRoute('cartememoire_edit', array('id' => $cartememoire->getId()));
        }

        return $this->render('cartememoire/edit.html.twig', array(
            'cartememoire' => $cartememoire,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a cartememoire entity.
     *
     */
    public function deleteAction(Request $request, Cartememoire $cartememoire)
    {
        $form = $this->createDeleteForm($cartememoire);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($cartememoire);
            $em->flush();
        }

        return $this->redirectToRoute('cartememoire_index');
    }

    /**
     * Creates a form to delete a cartememoire entity.
     *
     * @param Cartememoire $cartememoire The cartememoire entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Cartememoire $cartememoire)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('cartememoire_delete', array('id' => $cartememoire->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
          public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $cartememoires = $em->getRepository('GestionProjetBundle:Cartememoire')->findAll();

        return $this->render('cartememoire/modifier.html.twig', array(
                    'cartememoires' => $cartememoires,
        ));    }
    
}
