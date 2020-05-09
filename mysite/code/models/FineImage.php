<?php
/**
*
*/
class FineImage extends Image
{
	static $db = [
		'Sort' => 'Int',
		'Info' => 'Text'
	];

	static $has_one = [
		'Page'            => 'Page',
		'HomePage'	      => 'HomePage',
		'OtherPage'       => 'OtherPage',
		'ShoppingPage'    => 'ShoppingPage',
		'BlogPage'        => 'BlogsHolderPage',
		'BlogsHolderPage' => 'BlogsHolderPage'
	];

	// static $force_resample = true;

	static $default_sort = "Sort ASC";
}
