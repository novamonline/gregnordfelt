<?php

class AboutHolderPage extends OtherPage {

	private static $db = array(
	);

	static $has_many = [

	];

  protected static $has_one = [
    'BgImage' => 'FineImage'
  ];

	private static $allowed_children = [
		'AboutPage'
	];

	public function Image()
	{
		return $this->obj('BgImage');
	}



	public function getCMSFields()
	{

		$A = UploadField::create('BgImage','Background Image')->setFolderName('Uploads/Backgrounds');

		$fields = parent::getCMSFields();
		$fields->addFieldsToTab("Root.Main", compact('A'), 'Content');
		$fields->removeFieldFromTab("Root.Main","Content");
		return $fields;
	}

}
