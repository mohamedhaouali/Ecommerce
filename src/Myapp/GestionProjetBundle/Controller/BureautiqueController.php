<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Bureautique;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Bureautique controller.
 *
 */
class BureautiqueController extends Controller
{
    /**
     * Lists all bureautique entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $bureautiques = $em->getRepository('GestionProjetBundle:Bureautique')->findAll();

        return $this->render('bureautique/index.html.twig', array(
            'bureautiques' => $bureautiques,
        ));
    }

    /**
     * Creates a new bureautique entity.
     *
     */
    public function newAction(Request $request)
    {
        $bureautique = new Bureautique();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\BureautiqueType', $bureautique);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $bureautique->upload();
            $em->persist($bureautique);
            $em->flush();

            return $this->redirectToRoute('bureautique_show', array('id' => $bureautique->getId()));
        }

        return $this->render('bureautique/new.html.twig', array(
            'bureautique' => $bureautique,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a bureautique entity.
     *
     */
    public function showAction(Bureautique $bureautique)
    {
        $deleteForm = $this->createDeleteForm($bureautique);

        return $this->render('bureautique/show.html.twig', array(
            'bureautique' => $bureautique,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing bureautique entity.
     *
     */
    public function editAction(Request $request, Bureautique $bureautique)
    {
        $deleteForm = $this->createDeleteForm($bureautique);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\BureautiqueType', $bureautique);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            $bureautique->upload();

            return $this->redirectToRoute('bureautique_edit', array('id' => $bureautique->getId()));
        }

        return $this->render('bureautique/edit.html.twig', array(
            'bureautique' => $bureautique,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a bureautique entity.
     *
     */
    public function deleteAction(Request $request, Bureautique $bureautique)
    {
        $form = $this->createDeleteForm($bureautique);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($bureautique);
            $em->flush();
        }

        return $this->redirectToRoute('bureautique_index');
    }

    /**
     * Creates a form to delete a bureautique entity.
     *
     * @param Bureautique $bureautique The bureautique entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Bureautique $bureautique)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('bureautique_delete', array('id' => $bureautique->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
