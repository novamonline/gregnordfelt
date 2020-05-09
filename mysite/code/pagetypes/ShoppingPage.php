<?php

class ShoppingPage extends OtherPage {

	private static $db = [
		'Expires'  => 'Datetime',
		'Status'   => 'enum("Sold,Available")',
		'Count'   => 'Int',
		'ShowOnHomePage' => "Boolean",
		"Type" => 'enum("Service,Product")'
	];

	private static $has_many = [
    'ItemImgs'  => 'FineImage'
  ];

	private static $can_be_root = false;

  public function ItemStatus()
  {
  	return $this->dbObject('Status')->enumValues();
  }

	public function FirstItemImgs()
	{
		return $this->ItemsImages[0];
	}

	public function getCMSFields()
	{
		$A  = DateField::create('Expires', 'Available Until')
					   ->setConfig('dateformat', 'MM-dd-yyyy')
					   ->setConfig('showcalendar', true);
		$B = UploadField::create('ItemImgs','Image(s)')->setFolderName('Uploads/Shopping');
		$C = DropdownField::create('Status', 'Current Status', $this->ItemStatus());
		$D = DropdownField::create('Type', 'Type', $this->obj('Type')->enumValues());

		$fields = parent::getCMSFields();
		$fields->fieldByName('Root.Main.Title')->setTitle('Product/Service');
		$fields->addFieldsToTab("Root.Main", compact('A', 'B', 'C', 'D'), 'Content');
		$fields->fieldByName('Root.Main.Content')->setRows(5);
		return $fields;
	}

	public function getSettingsFields() {
		$fields = parent::getSettingsFields();
		$fields->addFieldToTab("Root.Settings", new CheckBoxField('ShowOnHomePage', 'Show event on home page?'), 'ShowInMenus');
		return $fields;
	}

}
