<?php

namespace Myapp\GestionProjetBundle\EventListener;
use FOS\UserBundle\FOSUserEvents;
use FOS\UserBundle\Event\FormEvent;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class RegistrationListener implements EventSubscriberInterface
{
   public static function getSubscribedEvents()

   {
       
       
       return array(
        
       FOSUserEvents::REGISTRATION_SUCCESS=>'onRegistrationSuccess'
       );
       
   }



    public function onRegistrationSuccess (FormEvent $event)
    {
        $roles = array('ROLE_ADMIN');
        $user = $event->getForm()->getData();
        $user ->setRoles($roles); 

       
    }
    
    
}    


