<?php

class m200828_102625_create_posts_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('tbl_posts', array(
            'id' => 'pk',
            'title' => 'string NOT NULL',
			'content' => 'text NOT NULL',
			'author_id' => 'int(10) NOT NULL',
			'created_at' => 'string NOT NULL',
			'category' => 'ENUM("1", "2", "3", "4", "5", "6") NOT NULL'
		));
		
		$this->addForeignKey("fk_post_author", "tbl_posts", "author_id", "tbl_user", "id", "CASCADE", "CASCADE");
	}

	public function down()
	{
		$this->dropTable('tbl_posts');
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