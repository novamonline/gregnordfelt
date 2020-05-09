<?php

class AboutPage extends Page {

	private static $db = array(
		'FeatVideo' => 'Text'
	);

	static $has_many = [

	];

	/**
	 * Has_one relationship
	 * @var array
	 */
	private static $has_one = array(
		'FeatImage' => 'FineImage',
	);




	public function getCMSFields()
	{
		$fields = parent::getCMSFields();
		$fields->addFieldsToTab("Root.Main", [
			$FeatImage = UploadField::create('FeatImage','Featured Image'),
			$FeatVideo = TextAreaField::create('FeatVideo', 'Featured Video')->setRows(2)
		], 'Content');
		$FeatImage->setFolderName('Uploads/About');
		return $fields;
	}

}
