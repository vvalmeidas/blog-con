<?php

/**
 * This is the model class for table "{{comments}}".
 *
 * The followings are the available columns in table '{{comments}}':
 * @property integer $id
 * @property string $author
 * @property string $email
 * @property string $content
 * @property string $created_at
 * @property integer $post_id
 */
class Comment extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Comment the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{comments}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('author', 'required', 'message' => 'O campo nome é obrigatório'),
			array('author', 'length', 'max'=>100, 'message' => 'O nome deve ter no máximo 100 caracteres'),
			array('email', 'required', 'message' => 'O campo e-mail é obrigatório'),
			array('email', 'length', 'max'=>50, 'message' => 'O e-mail deve ter no máximo 100 caracteres'),
			array('content', 'required', 'message' => 'Seu comentário está vazio'),
			array('content', 'length', 'max'=>1000, 'message' => 'O comentário deve ter no máximo 100 caracteres'),
			array('email', 'email', 'message' => 'E-mail possui formato inválido'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'author' => 'Nome',
			'email' => 'E-mail',
			'content' => 'Texto do comentário',
			'created_at' => 'Created At',
			'post_id' => 'Post',
		);
	}

	/**
	 * Add the created_at field before creating or updating the comment
	 */
	public function beforeSave()
	{
		if(parent::beforeSave())
		{
			$this->created_at = date('d/m/Y');
			return true;
		}
		else
		{
			return false;
		}
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('author',$this->author,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('created_at',$this->created_at,true);
		$criteria->compare('post_id',$this->post_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}