<!-- File: templates/Articles/index.php -->

<h1>Productos</h1>
<?= $this->Html->link('add producto', ['action'=> 'add']) ?>
<table>
    <tr>
        <th>Nombre del producto</th>
        <th>Created</th>
    </tr>

    <!-- Here is where we iterate through our $articles query object, printing out article info -->

    <?php foreach ($articles as $article): ?>
    <tr>
        <td>
            <?= $this->Html->link($article->title, ['action' => 'view', $article->slug]) ?>
        </td>
        <td>
            <?= $article->created->format(DATE_RFC850) ?>
        </td>
    </tr>
    <?php endforeach; ?>
</table>
