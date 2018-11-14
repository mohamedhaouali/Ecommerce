<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Scanner;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Scanner controller.
 *
 */
class ScannerController extends Controller
{
    /**
     * Lists all scanner entities.
     *
     */
    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $scanners = $em->getRepository('GestionProjetBundle:Scanner')->findAll();
        
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
        $scanners, $request->query->get('page', 1)/* page number */, 5/* limit per page */
        );

        return $this->render('scanner/index.html.twig', array(
                     'scanners' => $scanners, 'scanners' => $pagination
        ));
    }
        

    

    /**
     * Creates a new scanner entity.
     *
     */
    public function newAction(Request $request)
    {
        $scanner = new Scanner();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\ScannerType', $scanner);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $scanner->upload();
            $em->persist($scanner);
            $em->flush();

            return $this->redirectToRoute('scanner_modifier', array('id' => $scanner->getId()));
        }

        return $this->render('scanner/new.html.twig', array(
            'scanner' => $scanner,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a scanner entity.
     *
     */
    public function showAction(Scanner $scanner)
    {
        $deleteForm = $this->createDeleteForm($scanner);

        return $this->render('scanner/show.html.twig', array(
            'scanner' => $scanner,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing scanner entity.
     *
     */
    public function editAction(Request $request, Scanner $scanner)
    {
        $deleteForm = $this->createDeleteForm($scanner);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\ScannerType', $scanner);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();
             $scanner->upload();

            return $this->redirectToRoute('scanner_edit', array('id' => $scanner->getId()));
        }

        return $this->render('scanner/edit.html.twig', array(
            'scanner' => $scanner,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a scanner entity.
     *
     */
    public function deleteAction(Request $request, Scanner $scanner)
    {
        $form = $this->createDeleteForm($scanner);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($scanner);
            $em->flush();
        }

        return $this->redirectToRoute('scanner_index');
    }

    /**
     * Creates a form to delete a scanner entity.
     *
     * @param Scanner $scanner The scanner entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Scanner $scanner)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('scanner_delete', array('id' => $scanner->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
        public function modifierAction() {
        $em = $this->getDoctrine()->getManager();

        $scanners = $em->getRepository('GestionProjetBundle:Scanner')->findAll();

        return $this->render('scanner/modifier.html.twig', array(
                    'scanners' => $scanners,
        ));
    }
}
