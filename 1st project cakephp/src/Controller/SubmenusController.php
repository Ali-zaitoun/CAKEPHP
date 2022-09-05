<?php
declare(strict_types=1);

namespace App\Controller;

/**
 * Submenus Controller
 *
 * @property \App\Model\Table\SubmenusTable $Submenus
 * @method \App\Model\Entity\Submenu[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class SubmenusController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null|void Renders view
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Menus'],
        ];
        $submenus = $this->paginate($this->Submenus);

        $this->set(compact('submenus'));
    }

    /**
     * View method
     *
     * @param string|null $id Submenu id.
     * @return \Cake\Http\Response|null|void Renders view
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $submenu = $this->Submenus->get($id, [
            'contain' => ['Menus'],
        ]);

        $this->set(compact('submenu'));
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $submenu = $this->Submenus->newEmptyEntity();
        if ($this->request->is('post')) {
            $submenu = $this->Submenus->patchEntity($submenu, $this->request->getData());
            if ($this->Submenus->save($submenu)) {
                $this->Flash->success(__('The submenu has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The submenu could not be saved. Please, try again.'));
        }
        $menus = $this->Submenus->Menus->find('list', ['limit' => 200])->all();
        $this->set(compact('submenu', 'menus'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Submenu id.
     * @return \Cake\Http\Response|null|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $submenu = $this->Submenus->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $submenu = $this->Submenus->patchEntity($submenu, $this->request->getData());
            if ($this->Submenus->save($submenu)) {
                $this->Flash->success(__('The submenu has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The submenu could not be saved. Please, try again.'));
        }
        $menus = $this->Submenus->Menus->find('list', ['limit' => 200])->all();
        $this->set(compact('submenu', 'menus'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Submenu id.
     * @return \Cake\Http\Response|null|void Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $submenu = $this->Submenus->get($id);
        if ($this->Submenus->delete($submenu)) {
            $this->Flash->success(__('The submenu has been deleted.'));
        } else {
            $this->Flash->error(__('The submenu could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
