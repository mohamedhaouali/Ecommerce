<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 10/12/16
 * Time: 22:34
 */

namespace Myapp\GestionProjetBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;

use Myapp\GestionProjetBundle\Entity\Tva;

class TvaData extends AbstractFixture implements OrderedFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $tva1 = new Tva();
        $tva1->setMultiplcate('0.9345');
        $tva1->setNom('TVA 7%');
        $tva1->setValeur('7');
        $manager->persist($tva1);

        $tva2 = new Tva();
        $tva2->setMultiplcate('0.8151');
        $tva2->setNom('TVA 19%');
        $tva2->setValeur('19');
        $manager->persist($tva2);

        $manager->flush();

        $this->addReference('tva1', $tva1);
        $this->addReference('tva2', $tva2);

    }

    public function getOrder()
    {
        return 3;
    }
}