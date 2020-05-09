<?php


/**
* 
*/
class Slider extends DataObject
{
	
	private static $db = [
		'slidetitle'	=>	'Varchar(255)',
		'slideinfo'		=>	'HTMLText',		
	];

	private static $has_many = [
		'HomePage'	=>	'HomePage'
	];

	private static $has_one = [
		'slideimage'	=>	'FineImage'
	];

	public function getCMSFields()
	{
		$fields = new FieldList(
			TextField::create('slidetitle', 'Slide Title'),
			HTMLEditorField::create('slideinfo', 'Slide Info'),
			UploadField::create('slideimage', 'Slide Image')
		);
		return $fields;
	}
}