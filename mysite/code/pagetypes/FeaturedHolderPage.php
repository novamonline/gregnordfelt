<?php

class FeaturedHolderPage extends OtherPage {

	private static $db = [

	];

	private static $has_many = [

	];

	private static $allowed_children = [
		'FeaturedPage'
	];
	private static $has_one = [
		'BgImage' => 'FineImage'
	];

	public function Image()
	{
		return $this->obj('BgImage');
	}

	public function getCMSFields()
	{

		$A = UploadField::create('BgImage','Background Image')
										->setFolderName('Uploads/Backgrounds');
		$fields =  parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', $A,	'Content');
		return $fields;
	}



}
