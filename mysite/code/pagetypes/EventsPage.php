<?php

class EventsPage extends OtherPage {

	private static $db = [
    'Info'  => 'Text',
    'Date'  => 'Datetime',
		'Time' => 'Time',
    'Place' => 'Varchar(255)',
    'View'  => 'enum("Top,Bottom")',
		'Sponsor' => 'Varchar',
		'ShowOnHomePage' => "Boolean"
  ];

  private static $has_one = [
    'Img'  => 'FineImage'
  ];


	private static $can_be_root = false;

  public function placement()
  {
  	return $this->dbObject('View')->enumValues();
  }

	public function getCMSFields()
	{

		$A  = DateField::create('Date', 'Event Date')
					   ->setConfig('dateformat', 'MM-dd-yyyy')
					   ->setConfig('showcalendar', true);

	  $Aa = TimeField::create('Time', 'Event Time');

		$B = TextareaField::create('Place','Event Place')->setRows(2);

		$Ba = TextField::create('Sponsor','Sponsored by');

		if($this->View != 'Top'){
			$C = UploadField::create('Img','Event Image')
						    ->setFolderName('Uploads/Events');
		}
		$D = TextareaField::create('Info','Event Info')->setRows(3);
		$E = DropdownField::create('View', 'Placement', $this->placement());

		if($this->View == 'Top'){
			$C = UploadField::create('Img','Event Image');
		}

		$fields = parent::getCMSFields();
		$fields->fieldByName('Root.Main.Title')->setTitle('Event Title');
		$fields->fieldByName('Root.Main.Content')->setRows(5);
		$fields->addFieldsToTab("Root.Main", compact('A', 'Aa', 'B', 'Ba', 'C', 'D', 'E'), 'Content');
		return $fields;
	}

	public function getSettingsFields() {
		$fields = parent::getSettingsFields();
		$fields->addFieldToTab("Root.Settings", new CheckBoxField('ShowOnHomePage', 'Show event on home page?'), 'ShowInMenus');
		return $fields;
	}

}
