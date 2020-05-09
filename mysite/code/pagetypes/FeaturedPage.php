<?php

class FeaturedPage extends Page {

	private static $db = [
		'FeaturedIn'   => 'Text',
		'FeatVideo'    => 'Text'
	];

	/**
	* Has_one relationship
	* @var array
	*/
	private static $has_one = array(
		'FeatureLogo' => 'FineImage',
	);

	static $has_many = [

	];

	private static $can_be_root = false;

	public function getCMSFields()
	{
		$F[] = UploadField::create('FeatureLogo', 'Featured Image/Logo')
		->setFolderName('Uploads/Featured/imgs');
		$F[] = UploadField::create('FeatureFile', 'Featured File')
		->setFolderName('Uploads/Featured/imgs');
		$F[] = TextareaField::create('FeatVideo', 'Featured Video')->setRows(2);
		$fields = parent::getCMSFields();
		$fields->addFieldsToTab('Root.Main', $F, 'Content');
		$fields->fieldByName('Root.Main.Content')->setRows(5);
		return $fields;
	}

}
