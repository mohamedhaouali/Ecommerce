<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Stocksortie;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Stocksortie controller.
 *
 */
class StocksortieController extends Controller
{
    /**
     * Lists all stocksortie entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $stocksorties = $em->getRepository('GestionProjetBundle:Stocksortie')->findAll();

        return $this->render('stocksortie/index.html.twig', array(
            'stocksorties' => $stocksorties,
        ));
    }

    /**
     * Creates a new stocksortie entity.
     *
     */
    public function newAction(Request $request)
    {
        $stocksortie = new Stocksortie();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\StocksortieType', $stocksortie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($stocksortie);
            $em->flush();

            return $this->redirectToRoute('stocksortie_show', array('id' => $stocksortie->getId()));
        }

        return $this->render('stocksortie/new.html.twig', array(
            'stocksortie' => $stocksortie,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a stocksortie entity.
     *
     */
    public function showAction(Stocksortie $stocksortie)
    {
        $deleteForm = $this->createDeleteForm($stocksortie);

        return $this->render('stocksortie/show.html.twig', array(
            'stocksortie' => $stocksortie,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing stocksortie entity.
     *
     */
    public function editAction(Request $request, Stocksortie $stocksortie)
    {
        $deleteForm = $this->createDeleteForm($stocksortie);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\StocksortieType', $stocksortie);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('stocksortie_edit', array('id' => $stocksortie->getId()));
        }

        return $this->render('stocksortie/edit.html.twig', array(
            'stocksortie' => $stocksortie,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a stocksortie entity.
     *
     */
    public function deleteAction(Request $request, Stocksortie $stocksortie)
    {
        $form = $this->createDeleteForm($stocksortie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($stocksortie);
            $em->flush();
        }

        return $this->redirectToRoute('stocksortie_index');
    }

    /**
     * Creates a form to delete a stocksortie entity.
     *
     * @param Stocksortie $stocksortie The stocksortie entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Stocksortie $stocksortie)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('stocksortie_delete', array('id' => $stocksortie->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
