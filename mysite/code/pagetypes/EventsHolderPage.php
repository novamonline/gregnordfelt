<?php

class EventsHolderPage extends OtherPage {

	private static $db = [

	];

	private static $has_one = [
		'BgImage' => 'FineImage'
	];

	private static $has_many = [

	];
	/**
	 * Defines the allowed child page types
	 * @var array
	 */
	private static $allowed_children = [
		'EventsPage'
	];

	public function getCMSFields()
	{
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', UploadField::create(
			'BgImage',	'Background Image'), 'Content'
		);
		return $fields;
	}

	public function LatestEvents()
	{
		$Upcoming = $this->UpcomingEvents()->Sort('Date','DESC');
		$Previous = $this->PreviousEvents()->Sort('Date','DESC');
		return (count($Upcoming) > 0)? $Upcoming : $Previous;
	}

	public function UpcomingEvents()
	{
		return EventsPage::get()->filter(['Date:GreaterThan' => date('Y-m-d')]);
	}

	public function PreviousEvents()
	{
		return EventsPage::get()->filter(['Date:LessThanOrEqual' => date('Y-m-d')]);
	}

}
