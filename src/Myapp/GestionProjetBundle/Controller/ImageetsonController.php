<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Imageetson;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Imageetson controller.
 *
 */
class ImageetsonController extends Controller
{
    /**
     * Lists all imageetson entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $imageetsons = $em->getRepository('GestionProjetBundle:Imageetson')->findAll();

        return $this->render('imageetson/index.html.twig', array(
            'imageetsons' => $imageetsons,
        ));
    }

    /**
     * Creates a new imageetson entity.
     *
     */
    public function newAction(Request $request)
    {
        $imageetson = new Imageetson();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\ImageetsonType', $imageetson);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $imageetson->upload();
            $em->persist($imageetson);
            $em->flush();

            return $this->redirectToRoute('imageetson_show', array('id' => $imageetson->getId()));
        }

        return $this->render('imageetson/new.html.twig', array(
            'imageetson' => $imageetson,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a imageetson entity.
     *
     */
    public function showAction(Imageetson $imageetson)
    {
        $deleteForm = $this->createDeleteForm($imageetson);

        return $this->render('imageetson/show.html.twig', array(
            'imageetson' => $imageetson,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing imageetson entity.
     *
     */
    public function editAction(Request $request, Imageetson $imageetson)
    {
        $deleteForm = $this->createDeleteForm($imageetson);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\ImageetsonType', $imageetson);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            $imageetson->upload();
            return $this->redirectToRoute('imageetson_edit', array('id' => $imageetson->getId()));
        }

        return $this->render('imageetson/edit.html.twig', array(
            'imageetson' => $imageetson,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a imageetson entity.
     *
     */
    public function deleteAction(Request $request, Imageetson $imageetson)
    {
        $form = $this->createDeleteForm($imageetson);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($imageetson);
            $em->flush();
        }

        return $this->redirectToRoute('imageetson_index');
    }

    /**
     * Creates a form to delete a imageetson entity.
     *
     * @param Imageetson $imageetson The imageetson entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Imageetson $imageetson)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('imageetson_delete', array('id' => $imageetson->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
