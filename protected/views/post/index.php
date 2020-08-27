<?php
/* @var $this PostController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Posts',
	
);

$this->menu=array(
	array('label'=>'Create Post', 'url'=>array('create')),
	array('label'=>'Manage Post', 'url'=>array('admin')),
);
?>
<?php if(!empty($_GET['category'])): ?>
<h1>Posts categorizados com <i><?php echo CHtml::encode(Post::$CATEGORIES[$_GET['category']]); ?></i></h1>
<?php endif; ?>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
	'template' => "{items}\n{pager}",
)); ?>
