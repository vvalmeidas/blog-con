<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle=Yii::app()->name . ' - Login';
$this->breadcrumbs=array(
	'Login',
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

<div class="login_container">
	<h1>Login</h1>
	<?php $form=$this->beginWidget('CActiveForm', array(
		'id'=>'login-form',
		'enableClientValidation'=>true,
		'clientOptions'=>array(
			'validateOnSubmit'=>true,
		),
	)); ?>
	<div class="row">
		<?php echo $form->textField($model,'username', array(
			'class' => 'login_input',
			'placeholder' => 'Usuário'
		)); ?>
		<?php echo $form->error($model,'username', array(
			'class' => 'login_error'
		)); ?>
	</div>

	<div class="row">
		<?php echo $form->passwordField($model,'password', array(
			'class' => 'login_input',
			'placeholder' => 'Senha'
		)); ?>
		<?php echo $form->error($model,'password', array(
			'class' => 'login_error'
		)); ?>
	</div>

	<div class="row rememberMe">
		<?php echo $form->checkBox($model,'rememberMe'); ?>
		<?php echo $form->label($model,'rememberMe'); ?>
		<?php echo $form->error($model,'rememberMe'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Login', array(
			'class' => 'login_button'
		)); ?>
	</div>

<?php $this->endWidget(); ?>
</div><!-- form -->
