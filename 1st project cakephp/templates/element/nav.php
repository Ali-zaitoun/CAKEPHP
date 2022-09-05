<?php
$c_name=$this->request->getParam('controller');
$a_name=$this->request->getParam('action');
?>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">LOGO</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
  <?php foreach($menus as $menu):?>

    <?php if(empty($menu->submenus)):?>
      <li class="nav-item">
        <a class="nav-link" href="#"><?= $menu['name'] ?></a>
      </li>
    <?php else:?>
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <?= $menu['name'] ?>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" >

        <?php foreach($menu->submenus as $submenu):?>
          <a class="dropdown-item" href="#"><?= $submenu['name']?></a>
          
          <?php endforeach?>
        </div>
      </li>
      <?php endif;?>
      <?php endforeach;?>
    </ul>

    
  </div>
</nav>


<!-- <nav class="navbar navbar-expand-lg navbar-light ">

      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mx-auto">

          <li class="nav-item <?= $a_name=='home'?'bg-warning':'' ?>">
            <a class="nav-link" href=<?= $this->url->build(['controller'=>'blogs','action'=>'home'])?>>Home</a>
          </li>

          <li class="nav-item <?= $a_name=='about'?'bg-warning':'' ?>">
            <a class="nav-link" href=<?= $this->url->build(['controller'=>'blogs','action'=>'about'])?>>About</a>
          </li>
          <li class="nav-item <?= $a_name=='contact'?'bg-warning':'' ?>">
            <a class="nav-link" href=<?= $this->url->build(['controller'=>'blogs','action'=>'contact'])?>>Contact</a>
          </li>
        </ul>
      </div>

    </nav> -->