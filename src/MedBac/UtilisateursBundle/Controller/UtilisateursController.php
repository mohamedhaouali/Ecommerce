<?php

namespace MedBac\UtilisateursBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Config\Definition\Exception\Exception;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class UtilisateurController extends Controller
{
/**
     * @Route("/villes/{codepostal}", name="page_villes" , options={"expose"= true} )
     * @param Request $request
     * @param $codepostal
     * @return JsonResponse
     */
    public function villesAction(Request $request,$codepostal)
    {
        if ($request->isXmlHttpRequest()) {
            $em = $this->getDoctrine()->getManager();
            $villeCodePostal = $em->getRepository('UtilisateursBundle:Villes')->findOneBy(array('villeCodePostal' => $codepostal));
           // recherche villes par code postal
            if ($villeCodePostal) {
                $ville = $villeCodePostal->getVilleNom();
            } else {
                $ville = null;
            }
            $response = new JsonResponse();
            return $response->setData(array('ville' => $ville));
        } else {
            throw new Exception('Erreur');
        }
    }
            
   /**
        {
                if ($request->isXmlHttpRequest()) {
                    $em = $this->getDoctrine()->getManager();
                    $villeCodePostal = $em->getRepository('UtilisateursBundle:Villes')->findBy(array('villeCodePostal' => $codepostal));
                    if ($villeCodePostal) {
                        $villes = array();
                        foreach($villeCodePostal as $ville) {
                            $villes[] = $ville->getVilleNom();
                        }
                    } else {
                        $ville = null;
                    }
                    $response = new JsonResponse();
                    return $response->setData(array('ville' => $villes));
                } 
                else {
                    throw new Exception('Erreur');
                }
             }
    */
  
    /**
     * @Route("/factures", name="page_factures")
     */

    public function facturesAction()
    {
        $em = $this->getDoctrine()->getManager();
        $factures = $em->getRepository('GestionProjetBundle:Commande')->byFacture($this->getUser());


        return $this->render('UtilisateursBundle:Default:layout/facture.html.twig', array('factures' => $factures));
    }


  
 /**
     * @Route("/factures/PDF/{id}", name="page_facturePDF")
     */
    public function facturePDFAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $facture = $em->getRepository('GestionProjetBundle:Commande')->findOneBy(array('utilisateur' => $this->getUser(),
            'valider' => 1,
            'id' => $id));
        if (!$facture)
        {
            $this->get('session')->getFlashBag()->add('error', 'Une erreur est survenue lors du géneration PDF');
            return $this->redirect($this->generateUrl('page_factures'));
        }
       // $this->container->get('setNewFacture')->facture($facture);
        $response= $this->container->get('setNewFacture')->facture($facture);

        return new Response($response->Output('facture .pdf'), 200, array('Content-Type' => 'application/pdf'));

    }
}
