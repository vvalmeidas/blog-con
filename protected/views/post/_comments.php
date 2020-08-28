

<div class='comment_container'>
<h3>
		<?php
			if($post->commentsQuantity == 1)
				echo $post->commentsQuantity . ' comentário';
			else
				echo $post->commentsQuantity . ' comentários';
		?>
</h3>
<?php foreach($comments as $comment): ?>
<div class="comment_box" id="c<?php echo $comment->id; ?>">
	<div class='comment_content'>
		<?php echo nl2br(CHtml::encode($comment->content)); ?>
	</div>

	<div class='comment_signature'>
		<span>POR <?php echo strtoupper($comment->author); ?> | <?php echo $comment->created_at ?></span>
	</div>
</div>
<?php endforeach; ?>
</div>