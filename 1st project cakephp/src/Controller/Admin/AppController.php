<?php
declare(strict_types=1);


namespace App\Controller\Admin;

use Cake\Controller\Controller;

class AppController extends Controller
{
   
    public function initialize(): void
    {
        parent::initialize();

        $this->loadComponent('RequestHandler');
        $this->loadComponent('Flash');
        $this->loadComponent('UserLogs');
        $this->loadComponent('Auth');
        $this->Auth->allow(['login']);
        $this->set('userName',$this->Auth->user('username'));

        /*
         * Enable the following component for recommended CakePHP form protection settings.
         * see https://book.cakephp.org/4/en/controllers/components/form-protection.html
         */
        //$this->loadComponent('FormProtection');
    }

//     public function beforeFilter(\Cake\Event\EventInterface $event)
// {
//     parent::beforeFilter($event);
//     // Configure the login action to not require authentication, preventing
//     // the infinite redirect loop issue
//     $this->Authentication->addUnauthenticatedActions(['login']);
// }

    
}
