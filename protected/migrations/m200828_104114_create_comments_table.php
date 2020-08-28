<?php

class m200828_104114_create_comments_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('tbl_comments', array(
            'id' => 'pk',
            'author' => 'string NOT NULL',
			'email' => 'string NOT NULL',
			'content' => 'text NOT NULL',
			'created_at' => 'string NOT NULL',
			'post_id' => 'int(10) NOT NULL'
		));
		
		$this->addForeignKey("fk_comment_post", "tbl_comments", "post_id", "tbl_post", "id", "CASCADE", "CASCADE");
	}

	public function down()
	{
		$this->dropTable('tbl_comments');
	}

	/*
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
	}

	public function safeDown()
	{
	}
	*/
}