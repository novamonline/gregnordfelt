<?php

class ContactPage extends FormPage {

	private static $db = array(
	);

	static $has_many = [

	];


    public function getContacts()
    {
    	return Contacts::get();
    }



	public function getCMSFields()
	{
		$fields = parent::getCMSFields();

		return $fields;
	}

}
