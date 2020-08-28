<?php

/**
 * This is the model class for table "{{posts}}".
 *
 * The followings are the available columns in table '{{posts}}':
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property integer $author_id
 * @property string $created_at
 * @property string $category
 */
class Post extends CActiveRecord
{
	public static $CATEGORIES = [
		'1' => 'INTEGRAÇÕES', 
		'2' => 'SERVIÇOS', 
		'3' => 'FINANCEIRO', 
		'4' => 'AGENDA',
		'5' => 'PARCEIROS', 
		'6' => 'OUTROS'
	];

	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Post the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * Get the url for the search based on a category
	 * @param string $category the index of the category
	 * @return the url for the search of this category
	 */
	public static function getUrlSearch($category) {
		return Yii::app()->createUrl('post/index', array(
			'category' => $category,
		));
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{posts}}';
	}

	/**
	 * @return the url associated to this post
	 */
	public function getUrl()
	{
		return Yii::app()->createUrl('post/view', array(
			'id' => $this->id,
		));
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title', 'required', 'message' => 'O campo título é obrigatório'),
			array('content', 'required', 'message' => 'O campo conteúdo é obrigatório'),
			array('title', 'length', 'max'=>100, 'message' => 'O título deve ter no máximo 100 caracteres'),
			array('content', 'length', 'max'=>10000, 'message' => 'O título deve ter no máximo 10000 caracteres'),
			array('category', 'required'),
			array('category', 'in', 'range' => array_keys(Post::$CATEGORIES)),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('category', 'safe', 'on'=>'search'),
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
			'author' => array(self::BELONGS_TO, 'User', 'author_id'),
			'comments' => array(self::HAS_MANY, 'Comment', 'post_id'),
			'commentsQuantity' => array(self::STAT, 'Comment', 'post_id')
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => 'Título',
			'content' => 'Conteúdo',
			'author_id' => 'Autor',
			'created_at' => 'Created At',
			'category' => 'Categoria',
		);
	}

	/**
	 * Adding created_at and author_id to the post data when creating a new post.
	 * Update created_at when the post is being updated.
	 */
	protected function beforeSave()
	{
		if(parent::beforeSave()) 
		{
			$this->created_at = date('d/m/Y');
			if($this->isNewRecord) 
			{
				$this->author_id = Yii::app()->user->id;
			} 
			return true;
		}
		else
		{
			return false;
		}
	}

	/**
	 * Add a new comment to this post.
	 * @param Comment $comment the new comment
	 */
	public function addComment($comment)
	{
		$comment->post_id = $this->id;
		return $comment->save();
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
		$criteria->compare('title',$this->title,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('author_id',$this->author_id,true);
		$criteria->compare('created_at',$this->created_at,true);
		$criteria->compare('category',$this->category,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	
}