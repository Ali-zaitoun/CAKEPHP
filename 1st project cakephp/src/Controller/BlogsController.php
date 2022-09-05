<?php

namespace App\Controller;

// use Cake\Event\Event;
// use Cake\Event\EventInterface;

class BlogsController extends AppController{

// public function beforFilter(EventInterface $evet){
//     $this->viewBuilder()->setLayout('blog');
// }

//->limit(3)
    public function home(){
         $this->viewBuilder()->setLayout('blog');

         $this->loadModel('Articles');
         $articles=$this->Articles->find('all')
                                    ->order(["Articles.id DESC"]);

         $articlesAr =$this->Articles->find('list');                        
        $this->loadModel('Menus');

        $menus= $this->Menus->find('all',['contain'=>['Submenus']]);
        $this->set('menus',$menus);

        // $this->loadModel('Submenus');

        // $submenus= $this->Submenus->find('all');
        // $this->set('submenus',$submenus);

            $articlesList=$this->Articles->find('list'); #,['keyField'=>'title']
            
         $this->set('articles',$this->paginate($articles,["limit" => "3"]));
         $this->set('articlesList',$articlesList);
        //  $this->set('articlesAr',$articlesAr);

       

         
    }
    public function about(){
        $this->viewBuilder()->setLayout('blog');
    }

    public function contact(){
        $this->viewBuilder()->setLayout('blog');
    }

    public function view($id =null){
        $this->viewBuilder()->setLayout('blog');
        $this->loadModel('Articles');
        $article=$this->Articles->get($id);
        $this->set('article', $article);

    }
}