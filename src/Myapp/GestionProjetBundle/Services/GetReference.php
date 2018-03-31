<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 12/12/16
 * Time: 21:14
 */
namespace Myapp\GestionProjetBundle\Services;

use Symfony\Component\Security\Core\Security;


class GetReference
{
    public function __construct($securityContext, $entityManager)
    {
        $this->securityContext = $securityContext;
        $this->em = $entityManager;
    }

    public function reference()
    {
        // a l'interieur soit valide on va recuperer le dernier element
        //array('id'=>'DESC'),1,1)
        // find One By (retourner un seul element)
        $reference = $this->em->getRepository('GestionProjetBundle:Commande')->findOneBy(array('valider' => 1), array('id' => 'DESC'),1,1);

        if (!$reference)
        {
            // si il n'y a pas factures si le premier element on declare 1
            return 1;
        } else {
            // si il n'y pas le 1 element il recupere la derniere reference
            return $reference->getReference() +1;
        }
    }
}