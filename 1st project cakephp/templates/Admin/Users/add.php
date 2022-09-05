<?php
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface $user
 */
?>
<div class="row">
    <aside class="column">
        <div class="side-nav">
            <h4 class="heading"><?= __('Actions') ?></h4>
            <?= $this->Html->link(__('List Users'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="users form content">
            <?= $this->Form->create($user,['enctype'=>'multipart/form-data']) ?>
            <fieldset>
                <legend><?= __('Add User') ?></legend>
                <?php
                    echo $this->Form->control('username');
                    echo $this->Form->control('email');
                    echo $this->Form->control('amount');
                    echo $this->Form->control('password');
                    echo $this->Form->control('Retype_password',['type'=>'password']);
                    echo $this->Form->control('user.profiles.mobile');
                    echo $this->Form->control('image_file',['type'=>'file']);
                    echo $this->Form->control('status');

                // input range
                echo $this->Form->year('yr',['min'=>date('Y')-5,'max'=>date('Y'),'empty'=>false,'order'=>'asc']);
                ?>
            </fieldset>
            <?= $this->Form->button(__('Submit'),['id'=>'cakebtn']) ?>
            <?= $this->Form->end() ?>
        </div>
    </div>
</div>

<script>
    $(function(){
        $('#cakebtn').click(function(){
            $.ajax({
                method:"POST",
                url:"<?= $this->Url->build(['controller'=>'Users','action'=>'receive'])?>",
                data:{
                    id:10
                },
                headers:{
                    'X-CSRF-Token':$('meta[name="csrfToken"]').attr('content')
                }
            })
        });
    })
</script>