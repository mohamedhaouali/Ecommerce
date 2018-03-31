<?php

namespace Myapp\GestionProjetBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class RechercheType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        //'attr' => array('class' => 'input-medium search-query')) elle appartient au page acceuil formulaire recherche
        $builder->add('recherche', TextType::class, array('label' => false,
                                                          'attr' => array('class' => 'input-medium search-query')));
    }

    public function getName()
    {
        return 'myapp_gestionprojetbundle_recherche';
    }
}