<?php foreach($comments as $comment): ?>
<div class="comment" id="c<?php echo $comment->id; ?>">


	<div class="time">
		<?php echo $comment->created_at; ?>
	</div>

	<div class="content">
		<?php echo nl2br(CHtml::encode($comment->content)); ?>
	</div>

</div><!-- comment -->
<?php endforeach; ?>