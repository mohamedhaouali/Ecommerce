<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Stockage;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Myapp\GestionProjetBundle\Form\StockageType;

/**
 * Stockage controller.
 *
 */
class StockageController extends Controller
{
    /**
     * Lists all stockage entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $stockages = $em->getRepository('GestionProjetBundle:Stockage')->findAll();
        
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $stockages, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('stockage/index.html.twig', array(
          'stockages' => $stockages,'stockages' => $pagination
        ));
    }

    

    /**
     * Creates a new stockage entity.
     *
     */
    public function newAction(Request $request)
    {
        $stockage = new Stockage();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\StockageType', $stockage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $stockage->upload();
            $em->persist($stockage);
            $em->flush();

            return $this->redirectToRoute('stockage_modifier', array('id' => $stockage->getId()));
        }

        return $this->render('stockage/new.html.twig', array(
            'stockage' => $stockage,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a stockage entity.
     *
     */
    public function showAction(Stockage $stockage)
    {
        $deleteForm = $this->createDeleteForm($stockage);

        return $this->render('stockage/show.html.twig', array(
            'stockage' => $stockage,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing stockage entity.
     *
     */
    public function editAction(Request $request, Stockage $stockage)
    {
        $deleteForm = $this->createDeleteForm($stockage);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\StockageType', $stockage);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em =$this->getDoctrine()->getManager();
            $stockage->upload();
               $em->flush();
            

            return $this->redirectToRoute('stockage_edit', array('id' => $stockage->getId()));
        }

        return $this->render('stockage/edit.html.twig', array(
            'stockage' => $stockage,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a stockage entity.
     *
     */
    public function deleteAction(Request $request, Stockage $stockage)
    {
        $form = $this->createDeleteForm($stockage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($stockage);
            $em->flush();
        }

        return $this->redirectToRoute('stockage_index');
    }

    /**
     * Creates a form to delete a stockage entity.
     *
     * @param Stockage $stockage The stockage entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Stockage $stockage)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('stockage_delete', array('id' => $stockage->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
            public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $stockages = $em->getRepository('GestionProjetBundle:Stockage')->findAll();

        return $this->render('stockage/modifier.html.twig', array(
                    'stockages' => $stockages,
        ));
    }
}
