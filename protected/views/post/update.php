<?php
/* @var $this PostController */
/* @var $model Post */

$this->breadcrumbs=array(
	'Posts'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

if(Yii::app()->user->id != null) {
	$this->menu=array(
		array('label'=>'Novo Post', 'url'=>array('create')),
		array('label'=>'Visualizar o Post', 'url'=>array('view', 'id'=>$model->id)),
		array('label'=>'Logout', 'url'=>array('/site/logout')),
	);
} else {
	$this->menu=array(
		array('label'=>'Login', 'url'=>array('/site/login')),
	);
}

?>

<h1>Atualização de Post</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>