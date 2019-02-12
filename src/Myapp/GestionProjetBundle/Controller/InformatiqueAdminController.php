<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Informatique;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Myapp\GestionProjetBundle\Form\InformatiqueType;

/**
 * Informatique controller.
 *
 */
class InformatiqueAdminController extends Controller
{
    /**
     * Lists all informatique entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $informatiques = $em->getRepository('GestionProjetBundle:Informatique')->findAll();

        return $this->render('informatique/index.html.twig', array(
            'informatiques' => $informatiques,
        ));
    }

    /**
     * Creates a new informatique entity.
     *
     */
    public function newAction(Request $request)
    {
        $informatique = new Informatiques();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\InformatiqueType', $informatique);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $informatique->upload();
            $em->persist($informatique);
            $em->flush();

            return $this->redirectToRoute('admininformatique_show', array('id' => $informatique->getId()));
        }

        return $this->render('informatique/new.html.twig', array(
            'informatique' => $informatique,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a informatique entity.
     *
     */
    public function showAction(Informatique $informatique)
    {
        $deleteForm = $this->createDeleteForm($informatique);

        return $this->render('informatique/show.html.twig', array(
            'informatique' => $informatique,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing informatique entity.
     *
     */
    public function editAction(Request $request, Informatique $informatique)
    {
        $deleteForm = $this->createDeleteForm($informatique);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\InformatiqueType', $informatique);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            $informatique->upload();

            return $this->redirectToRoute('admininformatique_edit', array('id' => $informatique->getId()));
        }

        return $this->render('informatique/edit.html.twig', array(
            'informatique' => $informatique,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a informatique entity.
     *
     */
    public function deleteAction(Request $request, Informatique $informatique)
    {
        $form = $this->createDeleteForm($informatique);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($informatique);
            $em->flush();
        }

        return $this->redirectToRoute('admininformatique__index');
    }

    /**
     * Creates a form to delete a informatique entity.
     *
     * @param Informatique $informatique The informatique entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Informatique $informatique)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('admininformatique_delete', array('id' => $informatique->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
