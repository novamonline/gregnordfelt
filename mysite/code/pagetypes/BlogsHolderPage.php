<?php

class BlogsHolderPage extends OtherPage {

	private static $db = array(
		"BlogCategories" => "MultiValueField",
		"KeyPhrases"     => "MultiValueField"
	);

	static $has_many = [
    'BlogPages' => 'BlogPage'
	];

  private static $has_one = [
    'BgImage' => 'FineImage'
  ];

	private static $allowed_children = [
		'BlogPage'
	];


	public function getAllBlogPages()
	{
		//return $this->AllChildren();
		return BlogPage::get()->filter([
			'PostDate:LessThanOrEqual' => date('Y-m-d')
		]);
	}



	public function getCMSFields()
	{

		$A = UploadField::create('BgImage','Background Image')->setFolderName('Uploads/Backgrounds');
		$K = KeyValueField::create("BlogCategories", "Blog Categories");
		$T = KeyValueField::create("KeyPhrases", "Tags/Keywords");


		$fields = parent::getCMSFields();
		$fields->addFieldsToTab("Root.Main", compact('A', "K", "T"), 'Content');
		$fields->addFieldToTab(
			'Root.BlogPages', $BlogPages = GridField::create(
				'BlogPages', 'Blog Pages',	$this->BlogPages(),	$BlogsConfig = GridFieldConfig_RecordEditor::create()
			)
		);
		$fields->fieldByName('Root.Main.Content')->setRows(5);
		// $fields->removeFieldFromTab("Root.Content.Main","Content");
		return $fields;
	}

}
