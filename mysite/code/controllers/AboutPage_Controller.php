<?php

class AboutPage_Controller extends Page_Controller {


	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		$CSS[] = $this->ThemeDir()."/css/themes.css";
		foreach ($CSS as $css): Requirements::css($css); endforeach;

		$JS[] = $this->ThemeDir()."/js/main.js";
		foreach ($JS as $js): Requirements::javascript($js); endforeach;

	}

	public function NewsEvents()
	{
		$data = new ArrayList([
			1,2,3,4,5,6,7,8,9,10
		]);
		return $data;
	}

}
