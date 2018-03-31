<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\StockEntree;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Stockentree controller.
 *
 */
class StockEntreeController extends Controller
{
    /**
     * Lists all stockEntree entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $stockEntrees = $em->getRepository('GestionProjetBundle:StockEntree')->findAll();

        return $this->render('stockentree/index.html.twig', array(
            'stockEntrees' => $stockEntrees,
        ));
    }

    /**
     * Creates a new stockEntree entity.
     *
     */
    public function newAction(Request $request)
    {
        $stockEntree = new Stockentree();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\StockEntreeType', $stockEntree);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($stockEntree);
            $em->flush();

            return $this->redirectToRoute('stockentree_show', array('id' => $stockEntree->getId()));
        }

        return $this->render('stockentree/new.html.twig', array(
            'stockEntree' => $stockEntree,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a stockEntree entity.
     *
     */
    public function showAction(StockEntree $stockEntree)
    {
        $deleteForm = $this->createDeleteForm($stockEntree);

        return $this->render('stockentree/show.html.twig', array(
            'stockEntree' => $stockEntree,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing stockEntree entity.
     *
     */
    public function editAction(Request $request, StockEntree $stockEntree)
    {
        $deleteForm = $this->createDeleteForm($stockEntree);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\StockEntreeType', $stockEntree);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('stockentree_edit', array('id' => $stockEntree->getId()));
        }

        return $this->render('stockentree/edit.html.twig', array(
            'stockEntree' => $stockEntree,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a stockEntree entity.
     *
     */
    public function deleteAction(Request $request, StockEntree $stockEntree)
    {
        $form = $this->createDeleteForm($stockEntree);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($stockEntree);
            $em->flush();
        }

        return $this->redirectToRoute('stockentree_index');
    }

    /**
     * Creates a form to delete a stockEntree entity.
     *
     * @param StockEntree $stockEntree The stockEntree entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(StockEntree $stockEntree)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('stockentree_delete', array('id' => $stockEntree->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
