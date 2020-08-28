<?php
/* @var $this PostController */
/* @var $model Post */
/* @var $form CActiveForm */
?>

<div class="post_form">
<h1 clas='form_title'><?php echo $title; ?></h1>

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'post-form',
	'enableAjaxValidation'=>true,
)); ?>

	<?php echo $form->errorSummary($model, 'Detectamos os seguintes erros:'); ?>

	<div class="row">
		<?php echo $form->textField($model,'title',array(
			'maxlength' => 100,
			'placeholder' => 'Título',
			'class' => 'input_post'
		)); ?>
		<?php echo $form->error($model,'title', array(
			'class' => 'error_post'
		)); ?>
	</div>

	<div class="row">
		<?php echo $form->textArea($model,'content',array(
			'maxlength' => 10000,
			'rows'=>20,
			'cols'=>100,
			'placeholder' => 'Conteúdo',
			'class' => 'input_post'
		)); ?>
		<?php echo $form->error($model,'content', array(
			'class' => 'error_post'
		)); ?>
	</div>
	
	<div class="row">
		Categoria:
		<?php echo $form->dropDownList($model, 'category', Post::$CATEGORIES, array(
			'class' => 'category_post',
		)); ?>
		<?php echo $form->error($model,'category', array(
			'class' => 'error_post'
		)); ?>
	</div>

	<div class="row">
		<?php echo CHtml::submitButton('Salvar', array(
			'class' => 'button_post'
		)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->