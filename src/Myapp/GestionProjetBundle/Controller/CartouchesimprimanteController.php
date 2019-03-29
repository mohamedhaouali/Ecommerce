<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Cartouchesimprimante;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;



/**
 * Cartouchesimprimante controller.
 *
 */
class CartouchesimprimanteController extends Controller
{
    /**
     * Lists all cartouchesimprimante entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $cartouchesimprimantes = $em->getRepository('GestionProjetBundle:Cartouchesimprimante')->findAll();
        
        
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $cartouchesimprimantes, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('cartouchesimprimante/index.html.twig', array(
                     'cartouchesimprimantes' => $cartouchesimprimantes,'cartouchesimprimantes' => $pagination
        ));
    }

  

    /**
     * Creates a new cartouchesimprimante entity.
     *
     */
    public function newAction(Request $request)
    {
        $cartouchesimprimante = new Cartouchesimprimante();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\CartouchesimprimanteType', $cartouchesimprimante);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($cartouchesimprimante);
            $cartouchesimprimante->upload();
            $em->flush();

            return $this->redirectToRoute('cartouchesimprimante_modifier', array('id' => $cartouchesimprimante->getId()));
        }

        return $this->render('cartouchesimprimante/new.html.twig', array(
            'cartouchesimprimante' => $cartouchesimprimante,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a cartouchesimprimante entity.
     *
     */
    public function showAction(Cartouchesimprimante $cartouchesimprimante)
    {
        $deleteForm = $this->createDeleteForm($cartouchesimprimante);

        return $this->render('cartouchesimprimante/show.html.twig', array(
            'cartouchesimprimante' => $cartouchesimprimante,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing cartouchesimprimante entity.
     *
     */
    public function editAction(Request $request, Cartouchesimprimante $cartouchesimprimante)
    {
        $deleteForm = $this->createDeleteForm($cartouchesimprimante);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\CartouchesimprimanteType', $cartouchesimprimante);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em =$this->getDoctrine()->getManager();
            $cartouchesimprimante->upload();
            $em->flush();

            return $this->redirectToRoute('cartouchesimprimante_edit', array('id' => $cartouchesimprimante->getId()));
        }

        return $this->render('cartouchesimprimante/edit.html.twig', array(
            'cartouchesimprimante' => $cartouchesimprimante,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a cartouchesimprimante entity.
     *
     */
    public function deleteAction(Request $request, Cartouchesimprimante $cartouchesimprimante)
    {
        $form = $this->createDeleteForm($cartouchesimprimante);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($cartouchesimprimante);
            $em->flush();
        }

        return $this->redirectToRoute('cartouchesimprimante_index');
    }

    /**
     * Creates a form to delete a cartouchesimprimante entity.
     *
     * @param Cartouchesimprimante $cartouchesimprimante The cartouchesimprimante entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Cartouchesimprimante $cartouchesimprimante)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('cartouchesimprimante_delete', array('id' => $cartouchesimprimante->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
           public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $cartouchesimprimantes = $em->getRepository('GestionProjetBundle:Cartouchesimprimante')->findAll();

        return $this->render('cartouchesimprimante/modifier.html.twig', array(
                    'cartouchesimprimantes' => $cartouchesimprimantes,
        ));    }
}
