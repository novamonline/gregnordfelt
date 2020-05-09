<?php
class Page extends SiteTree {

	private static $db = array(
		'Head'		=>	'Varchar(128)'
	);

	private static $has_one = array(
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldsToTab("Root.Main", [TextField::create('Head','Heading')], 'Content');
		$fields->fieldByName('Root.Main')->setTitle('Page Settings');

		return $fields;
	}

	public function video()
	{
		return 'MY VIDEO';
	}

	public function photo()
	{
		return 'MY PHOTO';
	}

	public function ShortCode($content)
	{
		$return = preg_replace_callback('#\[:(.+?)\]#mi', function($match){
			return $this->{strtolower($match[1])}();
		}, $content);
	}

	public function getLink() {
		//remove trailing slash from parent link
		$parentLink = rtrim($this->ParentPage()->Link(), '/');
		return $parentLink . '#' . $this->URLSegment;
	}

	public function getHash()
	{
		$parentLink = rtrim($this->ParentPage()->Link(), '/');
		return $parentLink . '#' . $this->URLSegment;
	}

	public function getHeading()
	{
		return $this->Head ?? $this->Title;
	}

	public function StatusMessage()
	{
		if(Session::get('ActionMessage')) {

			$StatusMessage   = new ArrayData([
				'Status'  => Session::get('ActionStatus'),
				'Message' => Session::get('ActionMessage')
			]);
			Session::clear('ActionStatus');
			Session::clear('ActionMessage');

			return $StatusMessage->renderWith('AlertMessages');
		}
		return false;
	}

}
