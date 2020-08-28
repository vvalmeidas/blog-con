<?php
/* @var $this CommentController */
/* @var $model Comment */
/* @var $form CActiveForm */
?>

<div class="comment-form_wrapper">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'comment-form',
	'enableAjaxValidation'=>true,
)); ?>
	<h3>Deixe seu comentário</h3>
	<?php echo $form->errorSummary($model, 'Detectamos os seguintes erros:'); ?>
	<div class="row">
		<?php echo $form->textField($model,'author', array(
			'maxlength' => 100,
			'class' => 'comment-form_input comment-form_author',
			'placeholder' => 'Nome'
		)); ?>
		<?php echo $form->error($model,'author', array(
			'class' => 'comment-form_error'
		)); ?>
	</div>

	<div class="row">
		<?php echo $form->textField($model,'email',array(
			'maxlength' => 50,
			'class' => 'comment-form_input comment-form_email',
			'placeholder' => 'E-mail'
		)); ?>
		<?php echo $form->error($model,'email', array(
			'class' => 'comment-form_error'
		)); ?>
	</div>

	<div class="row">
		<?php echo $form->textArea($model,'content',array(
			'maxlength' => 1000,
			'rows'=>10, 
			'cols'=>50,
			'class' => 'comment-form_input comment-form_content',
			'placeholder' => 'Comentário'
		)); ?>
		<?php echo $form->error($model,'content', array(
			'class' => 'comment-form_error'
		)); ?>
	</div>

	<div class="row">
		<?php echo CHtml::submitButton('Salvar', array(
			'class' => 'comment-form_button'
		)); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->