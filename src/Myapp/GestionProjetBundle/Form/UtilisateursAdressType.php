<?php

namespace Myapp\GestionProjetBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;




class UtilisateursAdressType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
               ->add('nom', TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'Nom')))
                ->add('prenom' ,TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'prenom')))
                ->add('telephone',TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'telephone')))
                ->add('adresse',TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'adress')))
                ->add('matriculefiscale',TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'matriculefiscale')))
                ->add('bonducommande',TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'bonducommande')))
                ->add('codepostal',TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'codepostal')))
                //->add('codepostal',null, array('attr' => array('class' => 'codepostal','maxlength' => 5)))
                 //->add('ville',null , array('attr' => array('class' => 'ville')))
                //->add('codepostal',TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'codepostal')))
                ->add('ville',TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'ville')))
                ->add('pays',TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'pays')))
                ->add('complement',null,array('required' => false));
                //->add('utilisateur')
               
            /*    $city = function(FormInterface $form, $cp) {
            $villeCodePostal = $this->em->getRepository('UtilisateursBundle:Villes')->findBy(array('villeCodePostal' => $codepostal));
            if ($villeCodePostal) {
                $villes = array();
                foreach($villeCodePostal as $ville) {
                    $villes[$ville->getVilleNom()] = $ville->getVilleNom();
                }
            } else {
                $villes = null;
            }
            $form->add('ville',ChoiceType::class, array('attr' => array('class'   => 'ville'),'choices' => $villes));
        };

        $builder->get('codepostal')->addEventListener(FormEvents::POST_SUBMIT, function(FormEvent $event) use ($city) {
            $city($event->getForm()->getParent(),$event->getForm()->getData());
        });
        */
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Myapp\GestionProjetBundle\Entity\UtilisateursAdress'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'myapp_gestionprojetbundle_utilisateursadress';
    }


}
