<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework 
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

<!-- 	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" /> 
 -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" /> 
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/post.css" /> 
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/post-form.css" /> 
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/comment.css" /> 
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/comment-form.css" /> 
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/login.css" /> 
</head>

<body>

<div class="container">
	<div class="header">
		<a href="/blog/index.php">
			<img class="logo" src="<?php echo Yii::app()->request->baseUrl; ?>/images/logo.png" alt="">
		</a>
		
	</div>

	<div class='row navbar'>
		<span class="logo-text">Bem vindo(a) ao nosso blog!</span>	
	</div>

	<div class='row'>
		<div class='content'>
			<?php echo $content; ?>
		</div>
		<div class='sidebar'>
			<div class='sidebar_item'>
				<p>CATEGORIAS</p>
				<?php 
					foreach(Post::$CATEGORIES as $index => $categoryName) 
					{
						echo "<p class='category_main'>" .
						"<a href='" . Post::getUrlSearch($index) . "'>" . $categoryName . "</a>"; 
					}
				?>
			</div>
			<div class='sidebar_item'>
				ADMINISTRADOR
				<?php
					$this->beginWidget('zii.widgets.CPortlet');
					$this->widget('zii.widgets.CMenu', array(
						'items'=>$this->menu,
						'htmlOptions'=>array('class'=>'operations'),
					));
					$this->endWidget();
				?>
			</div>
		</div>
	</div>

	<div class='footer'>
		<h2>
			Copyright &copy; <?php echo date('Y'); ?> by Conexa
		</h2>
	</div>
</div>
</body>
</html>
