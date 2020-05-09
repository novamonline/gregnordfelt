<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
 class HomePage_Controller extends Page_Controller {


 	private static $allowed_actions = array (
 		'subscribe'
 		);

 	public function init() {
 		parent::init();

 		// $CSS[] = "http://fonts.googleapis.com/icon?family=Material+Icons";
 		// $CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css";
 		// $CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css";
 		// $CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.6/assets/owl.carousel.min.css";
 		// $CSS[] = "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css";
 		// $CSS[] = $this->ThemeDir()."/css/themes.css";
 		//
 		// foreach ($CSS as $css): Requirements::css($css); endforeach;
 		//
 		// $JS[] = "https://code.jquery.com/jquery-2.1.1.min.js";
 		// $JS[] = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js";
 		// $JS[] = "https://cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.7.0/jquery.matchHeight-min.js";
 		// $JS[] = "https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.6/owl.carousel.min.js";
 		// $JS[] = "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js";
 		// $JS[] = "https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js";
 		//
 		// $JS[] = $this->ThemeDir()."/js/main.js";
 		// foreach ($JS as $js): Requirements::javascript("$js"); endforeach;
 		Requirements::css("https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css");
 		Requirements::javascript("https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js");


 	}

 	// public function NewsEvents()
 	// {
 	// 	$data = new ArrayList([
 	// 		1,2,3,4,5,6,7,8,9,10
 	// 	]);
 	// 	return $data;
 	// }

 	public function subscribe($request)
 	{

 		if($request->postVar('email') != NULL)
 		{
 			$Email = $EmailAddress = $request->postVar('email');
 			$FullName = explode(" ", $request->postVar('name'));
 			list($FirstName, $LastName) = array_pad($FullName, 2, "");

 			$Subscribed = Recipient::get()->filter(compact('Email'));
 			$Contacts   = Contacts::get()->filter(compact("EmailAddress"));

 			if($Subscribed->count() < 1 ) {
 				$Subscription = Recipient::create();
 				foreach (compact('Email','FirstName','LastName') as $key => $value) {
 					if($key == "LastName") $key = "Surname";
 					$Subscription->$key = $value;
 				}
 				if($Contacts->count() < 1){
 					$Contacts = Contacts::create();
 					foreach (compact('Email','FirstName','LastName') as $key => $value) {
 						$Contacts->$key = $value;
 					}
 				}
 				if($Subscription->write() && $Contacts->write()){
 					$this->StatusMessage('success', 'Subscription received');
 				}
 				else{
 					$this->StatusMessage('danger', 'Error occurred (code: UNK)');
 				}
 			}
 		}
 		$this->redirectBack();
 	}

 }
