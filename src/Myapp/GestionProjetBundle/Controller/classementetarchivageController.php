<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\classementetarchivage;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Myapp\GestionProjetBundle\Form\classementetarchivageType;

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Classementetarchivage controller.
 *
 */
class classementetarchivageController extends Controller
{
    /**
     * Lists all classementetarchivage entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $classementetarchivages = $em->getRepository('GestionProjetBundle:classementetarchivage')->findAll();
        
        
       $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $classementetarchivages, $request->query->get('page', 1)/* page number */, 10/* limit per page */
        );

        return $this->render('classementetarchivage/index.html.twig', array(
                    'classementetarchivages' => $classementetarchivages, 'classementetarchivages' => $pagination
        ));
    }
        
        
   

    /**
     * Creates a new classementetarchivage entity.
     *
     */
    public function newAction(Request $request)
    {
        $classementetarchivage = new Classementetarchivage();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\classementetarchivageType', $classementetarchivage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $classementetarchivage->upload();
            $em->persist($classementetarchivage);
            $em->flush();

            return $this->redirectToRoute('classementetarchivage_modifier', array('id' => $classementetarchivage->getId()));
        }

        return $this->render('classementetarchivage/new.html.twig', array(
            'classementetarchivage' => $classementetarchivage,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a classementetarchivage entity.
     *
     */
    public function showAction(classementetarchivage $classementetarchivage)
    {
        $deleteForm = $this->createDeleteForm($classementetarchivage);

        return $this->render('classementetarchivage/show.html.twig', array(
            'classementetarchivage' => $classementetarchivage,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing classementetarchivage entity.
     *
     */
    public function editAction(Request $request, classementetarchivage $classementetarchivage)
    {
        $deleteForm = $this->createDeleteForm($classementetarchivage);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\classementetarchivageType', $classementetarchivage);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
             $em =$this->getDoctrine()->getManager();
              $classementetarchivage->upload();
             
             $em->flush();

            return $this->redirectToRoute('classementetarchivage_edit', array('id' => $classementetarchivage->getId()));
        }

        return $this->render('classementetarchivage/edit.html.twig', array(
            'classementetarchivage' => $classementetarchivage,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a classementetarchivage entity.
     *
     */
    public function deleteAction(Request $request, classementetarchivage $classementetarchivage)
    {
        $form = $this->createDeleteForm($classementetarchivage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($classementetarchivage);
            $em->flush();
        }

        return $this->redirectToRoute('classementetarchivage_index');
    }

    /**
     * Creates a form to delete a classementetarchivage entity.
     *
     * @param classementetarchivage $classementetarchivage The classementetarchivage entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(classementetarchivage $classementetarchivage)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('classementetarchivage_delete', array('id' => $classementetarchivage->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
         public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $classementetarchivages = $em->getRepository('GestionProjetBundle:classementetarchivage')->findAll();

        return $this->render('classementetarchivage/modifier.html.twig', array(
                    'classementetarchivages' => $classementetarchivages,
        ));
    }
}
