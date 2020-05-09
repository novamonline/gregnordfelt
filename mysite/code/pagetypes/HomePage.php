<?php
class HomePage extends Page {

	private static $db = array(
		'SliderHeight'   => 'Varchar',
		'SliderLimit'    => 'Int',
		'NewsletterInfo' => 'HTMLText',
		'NewsTitle'      => 'Varchar',
		'NewsSubTitle'   => 'Varchar',
		'ActionLabel'    => 'Varchar',
		'ActionLink'     => 'Varchar'
		);

	static $has_many = [
	'SliderImages' => 'FineImage',
	];
	static $many_many = [
	'SliderImages' => 'FineImage',
	'NewInfoImages'   => 'FineImage',
	];

 // public function SliderImages($limit = null)
 // {
 // 	 $Slides = $this->SliderImages;
 //  var_dump($Slides);
 //  if(empty($limit)) return $Slides;
 //  else return $Slides->limit($limit);
 // }

	public function getCMSFields()
	{
		$fields = parent::getCMSFields();
		$SliderImgs  = SortableUploadField::create('SliderImages', 'Slider Images');
		$NewInfoImgs = UploadField::create('NewInfoImages', 'Accompanying Images');


		$fields->addFieldsToTab('Root.ImageSlider', [
			TextField::create('SliderHeight', 'Slider Height', '600px'),
			NumericField::create('SliderLimit', 'Slider Limit', 6),
			$SliderImgs
		]);

		$fields->fieldByName("Root.Main.Content")->setTitle('Introductory Text')->setRows(15);

		$fields->addFieldsToTab('Root.NewsAndInfo', [
			TextField::create('NewsTitle', "News/Info Main Title"),
			TextAreaField::create('NewsSubTitle', "News/Info Sub-Title")->SetRows(2),
			HtmlEditorField::create('NewsletterInfo', "News/Info Details")->setRows(8),
			$NewInfoImgs,
			TextField::create('ActionLabel', "Action Button Label"),
			TextField::create('ActionLink', "Action Button Link"),
		]);

		// $fields->addFieldToTab('Root.Main',
		// 	ToggleCompositeField::create('NewsAndInformation', 'News And Information', [
		// 	  HtmlEditorField::create('NewsletterInfo', "News And Information")->setRows(5),
 	// 		  UploadField::create('NewsImages', 'Accompanying Images')
 	// 	  ]), 'Content'),
		return $fields;
	}

	public function Header()
	{
		// $OwlSlider SliderContent=$SliderImages, Limit=$SliderLimit;
		return (new ArrayData([
			'SliderContent' => $this->obj('SliderImages'),
			'Limit'         => $this->SliderLimit,
			'Top'						=> $this->Page
		]))->renderWith('OwlSlider');
	}

	public function Footer()
	{
		return (new ArrayData($this))->renderWith('ContactPage');
	}

}
