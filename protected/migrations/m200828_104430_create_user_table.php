<?php

class m200828_104430_create_user_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('tbl_user', array(
            'id' => 'pk',
            'username' => 'string NOT NULL',
			'password' => 'string NOT NULL',
			'email' => 'text NOT NULL',
		));
	}

	public function down()
	{
		$this->dropTable('tbl_user');
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