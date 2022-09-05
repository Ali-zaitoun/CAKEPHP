<?php
declare(strict_types=1);

namespace App\Controller\Admin;

use App\Controller\Admin\AppController;

/**
 * Users Controller
 *
 * @method \App\Model\Entity\User[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class UsersController extends AppController
{

    public function deleteAll(){
        $this->request->allowMethod(['post', 'delete']);
        $ids=$this->request->getData('ids');
        if($this->Users->deleteAll(['users.id IN'=>$ids]))
        $this->Flash->success(__('The user has been saved.'));

        return $this->redirect(['action'=>'index']);

    }

    public function login()
    {
        // $this->UserLogs->test();
        // exit;
        if($this->request->is('post')){
            $user=$this->Auth->identify();
            if($user){
                $this->Auth->setUser($user);
                $this->UserLogs->saveIP($this->Auth->user('id'));
                if($user['status'] == 0){
                    $this->Flash->error('you have not access permission !');
                    return $this->redirect(['controller'=>'users','action'=>'logout']);
                }else
                return $this->redirect(['controller'=>'users','action'=>'index']);
            }else{
                $this->Flash->error('Incorrect user name or password');
            }
        }
    }

   
    public function logout(){
        return $this->redirect($this->Auth->logout());
    }
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null|void Renders view
     */
    public function index()
    {

        $key=$this->request->getQuery('Key');
        if($key){
            // $query = $this->Users->find('all')
            //             ->where(['or'=>['username like'=>'%'.$key.'%','email like'=>'%'.$key.'%']]);

            $query = $this->Users->findByUsernameOrEmail($key,$key);
        }else{
            $query = $this->Users;
        }
        $users = $this->paginate($query);

        $this->set(compact('users'));
    }

    /**
     * View method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null|void Renders view
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $user = $this->Users->get($id, [
            'contain' => ['Profiles'],
        ]);

        $this->set(compact('user'));
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $user = $this->Users->newEmptyEntity();
        if ($this->request->is('post')) {
            $user = $this->Users->patchEntity($user, $this->request->getData(),['associated' => ['Profiles']]);
            // debug($user);
            // exit;
            if(!$user->getErrors){
            $image = $this->request->getData('image_file');

            if(!is_dir(WWW_ROOT.'img'.DS.'user_img'))
            mkdir(WWW_ROOT.'img'.DS.'user_img',0775);

       
            $name = $image->getClientFilename();
            $targetPath=WWW_ROOT.'img'.DS.'user_img'.DS.$name;
            if($name)
            $image->moveTo($targetPath);

             $user->image='user_img/'.$name;
        }
      
           

            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The user could not be saved. Please, try again.'));
        }
        $this->set(compact('user'));
    }

    /**
     * Edit method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $user = $this->Users->get($id);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $user = $this->Users->patchEntity($user, $this->request->getData());

            if(!$user->getErrors){
                $image = $this->request->getData('Change_image');
                $name = $image->getClientFilename();
       
                if($name){
                    if(!is_dir(WWW_ROOT.'img'.DS.'user_img'))
                mkdir(WWW_ROOT.'img'.DS.'user_img',0775);
                $targetPath=WWW_ROOT.'img'.DS.'user_img'.DS.$name;
                
                $image->moveTo($targetPath);

                $imagePath=WWW_ROOT.'img'.DS.$user->image;
                    if(file_exists($imagePath))
                        unlink($imagePath);
    
                 $user->image='user_img/'.$name;
                }
           
                
            }


            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The user could not be saved. Please, try again.'));
        }
        $this->set(compact('user'));
    }

    /**
     * Delete method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null|void Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        $imagePath=WWW_ROOT.'img'.DS.$user->image;
        
        if ($this->Users->delete($user)) {
            if(file_exists($imagePath))
            unlink($imagePath);
            $this->Flash->success(__('The user has been deleted.'));
        } else {
            $this->Flash->error(__('The user could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }

    public function userStatus($id=null,$status){
        $this->request->allowMethod(['post']);
        $user=$this->Users->get($id);

        if($status ==1)
        $user->status =0;
        else
        $user->status =1;

        if($this->Users->save($user)){
            $this->Flash->success(__('The user status has changed.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function receive(){
        $id = $this->request->getData('id');
        exit($id);
    }
}
