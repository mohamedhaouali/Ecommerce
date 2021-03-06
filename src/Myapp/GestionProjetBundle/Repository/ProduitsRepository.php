<?php

namespace Myapp\GestionProjetBundle\Repository;

/**
 * ProduitsRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ProduitsRepository extends \Doctrine\ORM\EntityRepository
{
    
       public function findArray($array)
    {
        $qb = $this->createQueryBuilder('u')
            ->select('u')
           //on passe dans notre tableaux array (selectionner tous les id qui correspond au id produits )
            ->where('u.id IN (:array)')
            ->setParameter('array', $array);
        return $qb->getQuery()->getResult();
    } 
    
    
    
    public function byCategorie($categorie) {
       $qb =$this->createQueryBuilder('u') 
               ->select('u')
               ->where('u.categories = :categories')
                // on prend les elements disponible
               ->andWhere('u.disponible = 1')
               ->orderBy('u.id')
               ->setParameter('categories',$categorie);
       return $qb->getQuery()->getResult();
        
        
    }
    
  
        public function recherche($chaine)
    {
        $qb = $this->createQueryBuilder('u')
            ->select('u')
            // recherche par titre    
            ->where('u.titre like :chaine')
             // on prend les elements disponible   
            ->andWhere('u.disponible = 1')
            ->orderBy('u.id')
            ->setParameter('chaine', $chaine);
        return $qb->getQuery()->getResult();
    }
    
    
       public function findProduitsBytitre($titre){
     // query builder routing: recherche1
           
    $query = $this->createQueryBuilder('a')
    ->where('a.titre like :titre')
    ->setParameter('titre', $titre.'%')
    ->orderBy('a.titre', 'ASC')
    ->getQuery();

     return  $query->getResult();
          
          
          
          
} 

      public function findProduitsBydescription($description){
     // query builder routing: recherche1
           
    $query = $this->createQueryBuilder('b')
    ->where('b.description like :description')
    ->setParameter('description', $description.'%')
    ->orderBy('b.description', 'ASC')
    ->getQuery();

     return  $query->getResult();
          
          
          
          
} 


}
