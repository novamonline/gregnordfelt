<?php

class BlogPage extends Page {

	private static $db = array(
		'FeatVideo' => 'Text',
		'Author'    => 'VarChar',
		'PostDate'  => 'Datetime',
		'Excerpt'   => 'Text',
		'Category'  => 'Text',
		'Tags'      => 'MultiValueField',
	);

	static $has_many = [

	];

	/**
	 * Has_one relationship
	 * @var array
	 */
	private static $has_one = array(
		'FeatImage' => 'FineImage',
		'BlogHolderPage' => 'BlogHolderPage'
	);

private static $can_be_root = false;

public function populateDefaults() {
	 $this->PostDate = DBField::create_field('Date', 'now');
	 parent::populateDefaults();
}

	public function getCMSFields()
	{
		$fields = parent::getCMSFields();
		$fields->addFieldsToTab("Root.Main", [
			$Author    = TextAreaField::create("Author", "Written By:")->setRows(1),
			$DateTime  = DateField::create('PostDate', 'Publish Date', date('m/d/Y'))
						   		  ->setConfig('dateformat', 'MM/dd/yyyy')
						   		  ->setConfig('showcalendar', true)
						 ], 'Metadata');
		// $content = $fields->removeFieldFromTab('Root.Main.Content');
		$fields->addFieldsToTab("Root.MainContent", [
			$FeatImage = UploadField::create('FeatImage','Featured Image'),
			$FeatVideo = TextAreaField::create('FeatVideo', 'Featured Video')->setRows(2),
			$Excerpt   = TextAreaField::create('Excerpt', 'Introduction')->setRows(7)
		]);
        $fields->addFieldToTab('Root.MainContent', $fields->fieldByName('Root.Main.Content'));
        // $fields->addFieldToTab('Root.MainContent', $fields->fieldByName('Root.Main.Head'));
		$FeatImage->setFolderName('Uploads/Blogs/Post');

		return $fields;
	}

	public function RecentPosts()
	{

	}

	public function PopularPosts()
	{

	}

	public function ArchivedPosts()
	{

	}

}
