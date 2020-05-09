<?php

class TestimonialHolderPage extends OtherPage {

	private static $db = [

	];

	private static $has_many = [

	];

	private static $allowed_children = [
 	 'TestimonialPage'
  ];

	public function getCMSFields()
	{
		$fields = parent::getCMSFields();

		return $fields;
	}

}
