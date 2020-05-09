<?php

class MissionHolderPage extends OtherPage {

	private static $db = [

	];

	private static $has_many = [

	];

    private static $has_one = [
	    'MainImage' => 'FineImage'
    ];

		private static $allowed_children = [
			'MissionPage'
		];

		public function Image()
		{
			return $this->obj('MainImage');
		}

    public function getCMSFields()
    {
    	$F[] = UploadField::create('MainImage','Featured Image')->setFolderName('Uploads/Mission');

    	$fields = parent::getCMSFields();
    	$fields->addFieldsToTab("Root.Main", $F, 'Content');
    	return $fields;
    }

}
