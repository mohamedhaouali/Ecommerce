<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Impression;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Impression controller.
 *
 */
class ImpressionController extends Controller
{
    /**
     * Lists all impression entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $impressions = $em->getRepository('GestionProjetBundle:Impression')->findAll();

        return $this->render('impression/index.html.twig', array(
            'impressions' => $impressions,
        ));
    }

    /**
     * Creates a new impression entity.
     *
     */
    public function newAction(Request $request)
    {
        $impression = new Impression();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\ImpressionType', $impression);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $impression->upload();
            $em->persist($impression);
            $em->flush();

            return $this->redirectToRoute('impression_show', array('id' => $impression->getId()));
        }

        return $this->render('impression/new.html.twig', array(
            'impression' => $impression,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a impression entity.
     *
     */
    public function showAction(Impression $impression)
    {
        $deleteForm = $this->createDeleteForm($impression);

        return $this->render('impression/show.html.twig', array(
            'impression' => $impression,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing impression entity.
     *
     */
    public function editAction(Request $request, Impression $impression)
    {
        $deleteForm = $this->createDeleteForm($impression);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\ImpressionType', $impression);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            $impression->upload();
            return $this->redirectToRoute('impression_edit', array('id' => $impression->getId()));
        }

        return $this->render('impression/edit.html.twig', array(
            'impression' => $impression,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a impression entity.
     *
     */
    public function deleteAction(Request $request, Impression $impression)
    {
        $form = $this->createDeleteForm($impression);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($impression);
            $em->flush();
        }

        return $this->redirectToRoute('impression_index');
    }

    /**
     * Creates a form to delete a impression entity.
     *
     * @param Impression $impression The impression entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Impression $impression)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('impression_delete', array('id' => $impression->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
