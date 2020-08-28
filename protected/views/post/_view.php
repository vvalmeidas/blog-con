<?php
/* @var $this PostController */
/* @var $data Post */
?>

<div class="post_wrapper">
	<h2 class='post_title'><?php echo CHtml::encode($data->title); ?></h2>
	<h4 class='post_description'>POR <?php echo strtoupper(CHtml::encode($data->author->username)) . ' | ' . CHtml::encode($data->created_at); ?> </h4>
	<p class='post_text'><?php echo CHtml::encode(substr($data->content, 0, 1000) . ' (..)'); ?></p>
	<p class='post_category'>
			<a href="<?php echo CHtml::encode(Post::getUrlSearch($data->category)); ?>">
				<?php echo CHtml::encode(Post::$CATEGORIES[$data->category]); ?>
			</a>
	</p>
	<a class='post_button' href="<?php echo CHtml::encode($data->url); ?>">LER</a>

</div>