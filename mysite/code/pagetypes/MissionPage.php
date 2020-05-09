<?php

class MissionPage extends OtherPage {

	private static $db =  [

	];

	private static $has_many = [

	];

	private static $has_one = [
		'FeatImage'  => 'FineImage'
	];

	private static $can_be_root = false;

	public function getCMSFields()
	{
		$F[] = UploadField::create('FeatImage', 'Featured Image')->setFolderName('Uploads/Mission');

		$fields = parent::getCMSFields();
		$fields->addFieldsToTab('Root.Main', $F, 'Content');
		$fields->fieldByName('Root.Main.Content')->setRows(10);
		return $fields;
	}

}
