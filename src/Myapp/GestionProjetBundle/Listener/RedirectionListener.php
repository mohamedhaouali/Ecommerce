<?php

namespace Myapp\GestionProjetBundle\Listener;

use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpKernel\Event\GetResponseEvent;

class RedirectionListener
{
    public function __construct(ContainerInterface $container, Session $session)
    {
        $this->session = $session;
        //chercher la route en question
        $this->router = $container->get('router');
        $this->securityContext = $container->get('security.token_storage');
    }
   //cette methode va appeller  onKernelRequest qui se trouve dans services.yml
    public function onKernelRequest(GetResponseEvent $event)
    {
        // pour verifier si la utilisateur est connecte pour faire la livraison
        //chercher la route 
        $route = $event->getRequest()->attributes->get('_route');
        // on verifie si la route est livraison-panier  ou si la route est validation-panier
        // on doit verifier que utilisateur est bien connecte
        if ($route == 'livraison-panier' || $route == 'validation-panier') {
            // si le session panier on fait la condition
            if ($this->session->has('panier')) {
                // count=compter le nombre d'elements dans le panier
                // on verifie si egale a 0 articles il va redrige vers route panier 
                if (count($this->session->get('panier')) == 0) {
                    $event->setResponse(new RedirectResponse($this->router->generate('panier')));
                }
            }
                // on recupere un utilisateur connecte
            if (!is_object($this->securityContext->getToken()->getUser())) {
                // si  utilisateur pas connecte il va redrige vers page d'identification
                $this->session->getFlashBag()->add('notification', 'Vous devez vous identifier');
                $event->setResponse(new RedirectResponse($this->router->generate('fos_user_security_login')));
            }
        }
    }
}