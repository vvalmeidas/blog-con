<?php
/* @var $this PostController */
/* @var $model Post */

$this->breadcrumbs=array(
	'Posts'=>array('index'),
	$model->title,
);

if(Yii::app()->user->id != null) {
	$this->menu=array(
		array('label'=>'Novo Post', 'url'=>array('create')),
		array('label'=>'Atualizar Post', 'url'=>array('update', 'id'=>$model->id)),
		array('label'=>'Remover Post', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Você tem certeza que quer apagar esse post?')),
		array('label'=>'Logout', 'url'=>array('/site/logout')),
	);
} else {
	$this->menu=array(
		array('label'=>'Login', 'url'=>array('/site/login')),
	);
}
?>

<div class='post_wrapper'>
<h2 class='post_title'><?php echo CHtml::encode($model->title); ?></h2>
	<h4 class='post_description'>POR <?php echo strtoupper(CHtml::encode($model->author->username)) . ' | ' . CHtml::encode($model->created_at); ?> </h4>
	<p class='post_text'><?php echo CHtml::encode($model->content); ?></p>
	<p class='post_category'>
			<a href="<?php echo CHtml::encode(Post::getUrlSearch($model->category)); ?>">
					<?php echo CHtml::encode(Post::$CATEGORIES[$model->category]); ?>
			</a>
	</p>
</div>


<div id='comments'>
	<?php $this->renderPartial('/comment/_form', array(
		'model' => $comment,
	)); ?>
	<?php if($model->commentsQuantity >= 1): ?>
	<?php $this->renderPartial('_comments',array(
		'post'=>$model,
		'comments'=>$model->comments,
	)); ?>
	<?php endif; ?>

</div>