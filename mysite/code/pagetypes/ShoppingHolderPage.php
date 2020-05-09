<?php

class ShoppingHolderPage extends Page {

	private static $db = [

	];

	private static $has_many = [

	];

	private static $allowed_children = [
		'ShoppingPage'
	];


	public function getCMSFields()
	{
		$fields = parent::getCMSFields();

		return $fields;
	}

	public function Products()
	{
		return $this->Children->Filter('Type', 'Product');
	}

	public function Services()
	{
		return $this->Children->Filter('Type', 'Service');
	}

}
