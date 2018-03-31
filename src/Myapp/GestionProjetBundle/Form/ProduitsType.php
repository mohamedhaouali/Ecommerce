<?php

namespace Myapp\GestionProjetBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class ProduitsType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('titre', TextType::class,array('required'=>true, 'attr'=> array('placeholder'=>'Titre Produit')))
                ->add('description',TextareaType::class,array('required'=>true, 'attr'=> array('placeholder'=>'Description')))
                //->add('description',null, array('attr' => array('class' => 'ckeditor')))
                ->add('prix', MoneyType::class,array('required'=>true, 'attr'=> array('placeholder'=>'prix du produit')))
                ->add('disponible')
                //->add('image', MediaType::class)
              
               //->add('categories', EntityType::class, array(
                  // query choices from this entity
                   // 'class' => 'GestionProjetBundle: Categories',
                   // use the User.username property as the visible option string
                  // 'choice_label' => 'categories',
                  // 'multiple' => false,'required'=>TRUE
                    
                       
                      // )
  //   )
                ->add('tva')
               ->add('file',FileType::class);
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Myapp\GestionProjetBundle\Entity\Produits'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'myapp_gestionprojetbundle_produits';
    }


}
