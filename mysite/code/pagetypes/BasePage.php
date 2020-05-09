<?php
class BasePage extends Page {

	private static $db = array(
	);

	static $has_many = [

	];




	public function getCMSFields()
	{
		$fields = parent::getCMSFields();

		return $fields;
	}

}
