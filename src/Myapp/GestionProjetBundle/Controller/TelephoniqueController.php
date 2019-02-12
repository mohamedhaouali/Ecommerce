<?php

namespace Myapp\GestionProjetBundle\Controller;

use Myapp\GestionProjetBundle\Entity\Telephonique;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Myapp\GestionProjetBundle\Form\TelephoniqueType;
/**
 * Telephonique controller.
 *
 */
class TelephoniqueController extends Controller
{
    /**
     * Lists all telephonique entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $telephoniques = $em->getRepository('GestionProjetBundle:Telephonique')->findAll();

        return $this->render('telephonique/index.html.twig', array(
            'telephoniques' => $telephoniques,
        ));
    }

    /**
     * Creates a new telephonique entity.
     *
     */
    public function newAction(Request $request)
    {
        $telephonique = new Telephonique();
        $form = $this->createForm('Myapp\GestionProjetBundle\Form\TelephoniqueType', $telephonique);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $telephonique->upload();
            $em->persist($telephonique);
            $em->flush();

            return $this->redirectToRoute('telephonique_show', array('id' => $telephonique->getId()));
        }

        return $this->render('telephonique/new.html.twig', array(
            'telephonique' => $telephonique,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a telephonique entity.
     *
     */
    public function showAction(Telephonique $telephonique)
    {
        $deleteForm = $this->createDeleteForm($telephonique);

        return $this->render('telephonique/show.html.twig', array(
            'telephonique' => $telephonique,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing telephonique entity.
     *
     */
    public function editAction(Request $request, Telephonique $telephonique)
    {
        $deleteForm = $this->createDeleteForm($telephonique);
        $editForm = $this->createForm('Myapp\GestionProjetBundle\Form\TelephoniqueType', $telephonique);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            $telephonique->upload();
            return $this->redirectToRoute('telephonique_edit', array('id' => $telephonique->getId()));
        }

        return $this->render('telephonique/edit.html.twig', array(
            'telephonique' => $telephonique,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a telephonique entity.
     *
     */
    public function deleteAction(Request $request, Telephonique $telephonique)
    {
        $form = $this->createDeleteForm($telephonique);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($telephonique);
            $em->flush();
        }

        return $this->redirectToRoute('telephonique_index');
    }

    /**
     * Creates a form to delete a telephonique entity.
     *
     * @param Telephonique $telephonique The telephonique entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Telephonique $telephonique)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('telephonique_delete', array('id' => $telephonique->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
