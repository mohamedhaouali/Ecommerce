<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Composantinformatique;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Composantinformatique controller.
 *
 */
class ComposantinformatiqueController extends Controller
{
    /**
     * Lists all composantinformatique entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $composantinformatiques = $em->getRepository('GestionProjetBundle:Composantinformatique')->findAll();
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $composantinformatiques, $request->query->get('page', 1)/* page number */, 20/* limit per page */
        );
        
        
            return $this->render('composantinformatique/index.html.twig', array(
                   'composantinformatiques' => $composantinformatiques, 'composantinformatiques' => $pagination
        ));
    }

  

    /**
     * Creates a new composantinformatique entity.
     *
     */
    public function newAction(Request $request)
    {
        $composantinformatique = new Composantinformatique();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\ComposantinformatiqueType', $composantinformatique);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($composantinformatique);
            $composantinformatique->upload();
            $em->flush();

            return $this->redirectToRoute('composantinformatique_modifier', array('id' => $composantinformatique->getId()));
        }

        return $this->render('composantinformatique/new.html.twig', array(
            'composantinformatique' => $composantinformatique,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a composantinformatique entity.
     *
     */
    public function showAction(Composantinformatique $composantinformatique)
    {
        $deleteForm = $this->createDeleteForm($composantinformatique);

        return $this->render('composantinformatique/show.html.twig', array(
            'composantinformatique' => $composantinformatique,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing composantinformatique entity.
     *
     */
    public function editAction(Request $request, Composantinformatique $composantinformatique)
    {
        $deleteForm = $this->createDeleteForm($composantinformatique);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\ComposantinformatiqueType', $composantinformatique);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
             $em =$this->getDoctrine()->getManager();
             $composantinformatique->upload();
              $em->flush();
             

            return $this->redirectToRoute('composantinformatique_edit', array('id' => $composantinformatique->getId()));
        }

        return $this->render('composantinformatique/edit.html.twig', array(
            'composantinformatique' => $composantinformatique,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a composantinformatique entity.
     *
     */
    public function deleteAction(Request $request, Composantinformatique $composantinformatique)
    {
        $form = $this->createDeleteForm($composantinformatique);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($composantinformatique);
            $em->flush();
        }

        return $this->redirectToRoute('composantinformatique_index');
    }

    /**
     * Creates a form to delete a composantinformatique entity.
     *
     * @param Composantinformatique $composantinformatique The composantinformatique entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Composantinformatique $composantinformatique)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('composantinformatique_delete', array('id' => $composantinformatique->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
            public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $composantinformatiques = $em->getRepository('GestionProjetBundle:Composantinformatique')->findAll();

        return $this->render('composantinformatique/modifier.html.twig', array(
                    'composantinformatiques' => $composantinformatiques,
        ));    }
    
}
