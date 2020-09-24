<!-- File: templates/Articles/edit.php -->

<h1>EDITAR PRODUCTOS</h1>
<?php
    echo $this->Form->create($article);
    echo $this->Form->control('user_id', ['type' => 'hidden']);
    echo $this->Form->control('title');
    echo $this->Form->control('body', ['rows' => '3']);
    echo $this->Form->button(__('GUARDAR PRODUCTO'));
    echo $this->Form->control('tags._ids', ['options' => $tags]);
    echo $this->Form->end();
?>
