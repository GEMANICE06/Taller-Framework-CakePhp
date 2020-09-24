<!-- File: templates/Articles/add.php -->

<h1>Add Article</h1>
<?php
    echo $this->Form->create($article);
    // Hard code the user for now.
    echo $this->Form->control('user_id', ['type' => 'hidden', 'value' => 1]);
    echo $this->Form->control('nombre del producto');
    echo $this->Form->control('Descripcion del articulo', ['rows' => '3']);
    echo $this->Form->button(__('guardar producto'));
    echo $this->Form->control('tags._ids', ['options' => $tags]);
    echo $this->Form->end();
?>
