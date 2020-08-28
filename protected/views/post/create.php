<?php
/* @var $this PostController */
/* @var $model Post */

$this->breadcrumbs=array(
	'Posts'=>array('index'),
	'Criar',
);

if(Yii::app()->user->id != null) {
	$this->menu=array(
		array('label'=>'Logout', 'url'=>array('/site/logout')),
	);
} else {
	$this->menu=array(
		array('label'=>'Login', 'url'=>array('/site/login')),
	);
}
?>

<?php echo $this->renderPartial('_form', array('model'=>$model, 'title' => 'Novo Post')); ?>