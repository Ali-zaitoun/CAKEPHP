
    
    <div class="container">

    <div class="row">
        <div class="col-4">
            <h3 style="color: #fff;" class="bg-info text-capitalize p-1">Recent Post</h3>
            <ul class="list-group list-group-flush">
              <?php foreach($articlesList as $key=> $articalTitle):?>
              <li class="list-group-item" ><a href=<?= $this->Url->build(['controller'=>'Blogs','action'=>'view',$key])?>><?= $articalTitle ?></a></li>
              <?php endforeach;?>
              <!-- <li class="list-group-item"><a href ="#">Dapibus ac facilisis in</a></li>
              <li class="list-group-item"><a href ="#">Morbi leo risus</a></li>
              <li class="list-group-item"><a href ="#">Porta ac consectetur ac</a></li>
              <li class="list-group-item"><a href ="#">Vestibulum at eros</a></li> -->
            </ul>
        </div>

        <div class="col-8">
            <div class="row">
               <div class="list-group ">

               
        <?php foreach($articles as $article):?>

                  <a href=<?= $this->Url->build(['controller'=>'Blogs','action'=>'view',$article->id])?> class="list-group-item list-group-item-action flex-column mb-2">
                    <div class="d-flex w-100 justify-content-between">
                      <h5 class="mb-1"><?= $article->title;?></h5>
                      <small class="text-muted">3 days ago</small>
                    </div>
                    <p class="mb-1"><?= 
                     $this->Text->truncate(
                      $article->details,
                      280,
                      [
                          'ellipsis' => '...',
                          'exact' => true
                      ]
                  );
                    ?></p>
                    <small class="text-muted">Donec id elit non mi porta.</small>
                  </a>

                  <?php endforeach;?>


              
                  <ul class="pagination">
                    <?= $this->paginator->prev("<<");?>
                    <?= $this->paginator->numbers();?>
                    <?= $this->paginator->next(">>");?>
                  </ul>
                </div>
            </div>
        </div>
    </div>

    </div>

    
    
    