<?php

class BlogsHolderPage_Controller extends OtherPage_Controller
{

	public function init() {
		parent::init();

		$CSS[] = $this->ThemeDir()."/css/themes.css";
		foreach ($CSS as $css): Requirements::css($css); endforeach;

		$JS[] = $this->ThemeDir()."/js/main.js";
		foreach ($JS as $js): Requirements::javascript($js); endforeach;

	}

}
