<?php
$this->breadcrumbs=array(
	'Posts',
);

if(Yii::app()->user->id != null) {
	$this->menu=array(
		array('label'=>'Criar Post', 'url'=>array('create')),
		array('label'=>'Logout', 'url'=>array('/site/logout')),
	);
} else {
	$this->menu=array(
		array('label'=>'Login', 'url'=>array('/site/login')),
	);
}

?>
<?php if(!empty($_GET['category'])): ?>
<h1>Posts agrupados por categoria: <i><?php echo CHtml::encode(Post::$CATEGORIES[$_GET['category']]); ?></i></h1>
<?php endif; ?>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
	'template' => "{items}\n{pager}",
	'pager' => [
	    'class'=>"CLinkPager",
		'cssFile'=> Yii::app()->request->baseUrl . '/css/pager.css',
		'header' => '',
		'prevPageLabel' => '<',
		'nextPageLabel' => '>',
		'firstPageLabel' => '',
		'lastPageLabel' => ''
	]
)); ?>