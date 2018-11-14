<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Cd;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Cd controller.
 *
 */
class CdController extends Controller
{
    /**
     * Lists all cd entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $cds = $em->getRepository('GestionProjetBundle:Cd')->findAll();
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $cds, $request->query->get('page', 1)/* page number */, 20/* limit per page */
        );
        

        return $this->render('cd/index.html.twig', array(
            'cds' => $cds,'cds' => $pagination
        ));
       
    }

    /**
     * Creates a new cd entity.
     *
     */
    public function newAction(Request $request)
    {
        $cd = new Cd();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\CdType', $cd);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($cd);
            $cd->upload();
            $em->flush();

            return $this->redirectToRoute('cd_modifier', array('id' => $cd->getId()));
        }

        return $this->render('cd/new.html.twig', array(
            'cd' => $cd,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a cd entity.
     *
     */
    public function showAction(Cd $cd)
    {
        $deleteForm = $this->createDeleteForm($cd);

        return $this->render('cd/show.html.twig', array(
            'cd' => $cd,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing cd entity.
     *
     */
    public function editAction(Request $request, Cd $cd)
    {
        $deleteForm = $this->createDeleteForm($cd);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\CdType', $cd);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
             $em =$this->getDoctrine()->getManager();
             $em->persist($cd);
             $cd->upload();
             $em->flush();
             
             
             

            return $this->redirectToRoute('cd_modifier', array('id' => $cd->getId()));
        }

        return $this->render('cd/edit.html.twig', array(
            'cd' => $cd,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a cd entity.
     *
     */
    public function deleteAction(Request $request, Cd $cd)
    {
        $form = $this->createDeleteForm($cd);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($cd);
            $em->flush();
        }

        return $this->redirectToRoute('cd_index');
    }

    /**
     * Creates a form to delete a cd entity.
     *
     * @param Cd $cd The cd entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Cd $cd)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('cd_delete', array('id' => $cd->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
           public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $cds = $em->getRepository('GestionProjetBundle:Cd')->findAll();

        return $this->render('cd/modifier.html.twig', array(
                    'cds' => $cds,
        ));    }
    
}
