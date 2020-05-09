<?php

class Page_Controller extends ContentController {

	/**
	* An array of actions that can be accessed via a request. Each array element should be an action name, and the
	* permissions or conditions required to allow the user to access it.
	*
	* <code>
	* array (
	*     'action', // anyone can access this action
	*     'action' => true, // same as above
	*     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	*     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	* );
	* </code>
	*
	* @var array
	*/
	private static $allowed_actions = [

	];

	public function init() {

		parent::init();

		// $CSS[] = "http://fonts.googleapis.com/icon?family=Material+Icons";
		$CSS[] = "https://fonts.googleapis.com/css?family=Roboto:300,400,700";
		$CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css";
		$CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css";
		// $CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css";
		$CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css";
		$CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css";
		// $CSS[] = $this->ThemeDir()."/css/themes.css";
		$CSS1[] = $this->ThemeDir().'/css/compile/common.css';
		$CSS1[] = $this->ThemeDir().'/css/compile/bootstrap.css';
		$CSS1[] = $this->ThemeDir().'/css/compile/carousel.css';



		$JS[] = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js";
		// $JS[] = "https://www.google.com/recaptcha/api.js";
		$JS[] = "https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js";
		$JS[] = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/js/bootstrap.min.js";

		$JS[] = "https://cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.7.2/jquery.matchHeight-min.js";
		$JS[] = "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js";
		$JS[] = "https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js";
		$JS[] = "https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js";

		$JS1[] = $this->ThemeDir()."/js/main.js";
		$JS1[] = $this->ThemeDir().'/js/compile/initiator.js';
		$JS1[] = $this->ThemeDir().'/js/compile/parallax.js';
		$JS1[] = $this->ThemeDir().'/js/compile/carousel.js';
		$JS1[] = $this->ThemeDir().'/js/compile/common.js';
		$JS1[] = $this->ThemeDir().'/js/compile/validator.js';


		$theme = Session::get('theme');
		if($theme){
			$folders = scandir(Director::baseFolder()."/themes");
			$exclude = array(".", "..", ".DS_Store", "_notes");
			$themes  = array_diff($folders, $exclude);

			SSViewer::set_theme($themes[$theme]);
		}
		foreach ($CSS as $css): Requirements::css($css); endforeach;
		foreach ($JS as $js): Requirements::javascript($js); endforeach;

		if(Director::isLive()){
			Requirements::combine_files('styles.css', $CSS1);
			Requirements::combine_files('scripts.js', $JS1);
		}
		else{
			foreach ($CSS1 as $css): Requirements::css($css); endforeach;
			foreach ($JS1 as $js): Requirements::javascript($js); endforeach;
		}

		// if($_SERVER['REMOTE_ADDR'] == '97.126.132.55'){
		// 	Director::force_redirect('/down/');
		// }
	}

	public function themeSwitcher(){
		$folders  = scandir(Director::baseFolder()."/themes");
		$exclude  = array(".", "..", ".DS_Store", "_notes");
		$themes   = array_diff($folders, $exclude);
		$selected = Session::get('theme');

		$fields = new FieldSet(
			$fields = new DropdownField('theme','theme', $themes, $selected, '', 'Select Theme')
		);
		$actions = new FieldSet(
			new FormAction('switchTheme', 'Switch')
		);
		return new Form($this, "switchTheme", $fields, $actions);
	}

	public function switchTheme($data){
		if($data['theme']){
			Session::set('theme', $data['theme']);
		} else {
			unset($_SESSION['theme']);
		}
		$this->redirect($this->baseURL(). $this->URLSegment);
	}

	public function SetSessionMessage($status, $message)
	{
		Session::set('ActionStatus', $status);
		Session::set('ActionMessage', $message);
	}

	public function GetStatusMessage()
	{
		if(Session::get('ActionMessage')) {

			$StatusMessage   = new ArrayData([
				'Status'  => Session::get('ActionStatus'),
				'Message' => Session::get('ActionMessage')
			]);
			// var_dump($StatusMessage); die();
			Session::clear('ActionStatus');
			Session::clear('ActionMessage');

			return $StatusMessage;
		}
		return false;
	}

	public function redirectWithMessage($status, $message, $url = null)
	{
		$this->SetSessionMessage($status, $message);
		return empty($url)? $this->redirectBack(): $this->redirect($url);
	}

	public function SiteConfig($setting = null)
	{
		 $SiteConfig = SiteConfig::current_site_config();
		 return ($setting)? $SiteConfig->$setting: $SiteConfig;
	}



}
