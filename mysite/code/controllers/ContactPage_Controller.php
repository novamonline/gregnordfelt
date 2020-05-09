<?php

class ContactPage_Controller extends FormPage_Controller
{

	private static $allowed_actions =  [
		'contactGreg',
		'sendInquiry',
		'hireGregNordfelt'
	];

	public function init() {
		parent::init();
	}

	public function contactGreg($request)
	{

	}

	public function hireGregNordfelt($request)
	{
		$recaptcha = $request->postVar('g-recaptcha-response');
		if(!$recaptcha || !$this->googleRecaptcha($recaptcha)){
			return $this->redirectWithMessage('error', 'Unable to prove you are not a robot - wrong recaptha entered!');
		}
		try {

			$Email = $request->postVar('Email');

			$Recipient = Recipient::get()->filter(compact('Email'));
			if($Recipient->count() < 1){
				$Recipient = Recipient::create();
				$Recipient->Email     = $Email;
				$Recipient->FirstName = $request->postVar('FirstName');
				$Recipient->Surname   = $request->postVar('Surname');
				$Recipient->Phone     = $request->postVar('Phone');
				$Recipient->write();
			}

			$Service = Services::create();
			$Service->ContactID  = $Recipient->ID;
			$Service->EventName  = $request->postVar('EventName');
			$Service->EventPlace = $request->postVar('EventPlace');
			$Service->EventInfo  = $request->postVar('EventInfo');
			$Service->EventDate  = $request->postVar('EventDate');
			$Service->write();

			$email1 = new HireMeDataReceived($request->postVars());
			$email2 = new HireMeRequestSent($request->postVars());
			$message = "Your Hire request was succssfully sent!";

			if($email1->send() &&		$email2->send()){
				$alert = 'success'; $message .= ' and email was sent to '.$email1->to;
			}
			else{
				$alert = 'warning'; $message .= ' but email was NOT sent to '.$email1->to;
			}
		}
		catch (Exception $e) {
			$alert = 'danger'; $message = 'Internal error: '.$e->getMessage();
		}
	  return $this->redirectWithMessage($alert, $message);
	}
	public function sendInquiry($request)
	{

		if($request->httpMethod() == 'GET'){
      return $this->redirectWithMessage('error', 'Invalid URL action', '/contact');
    }
		$recaptcha = $request->postVar('g-recaptcha-response');
		if(!$recaptcha || !$this->googleRecaptcha($recaptcha)){
			return $this->redirectWithMessage('error', 'Unable to prove you are not a robot - wrong recaptha entered!');
		}
		
		$Validator = $this->Validate($request, [
			'Email' => ':valid email is required', 'Phone' => ':US phone number is required', 'Message' => ':message must be provided'
		]);
		// Debug::dump($request->postVars()); die();
		if($Validator->failed){
			$message = implode("<br/>", $Validator->errors);
			return $this->redirectWithMessage('error', $message);
		}

    $postVars = $request->postVars();
    $EmailAddress = $postVars['Email'] ?? $postVars['EmailAddress'] ?? '';

		try {
			$Contact = Contacts::get()->filter(compact('Email'));

			if(!$Contact->count()) {
			  $Contact = Contacts::create();
				foreach ($postVars as $key => $value) {
					$Contact->$key = $value;
				}
		    if($Contact->write()){
					$alert = 'success'; $message = 'Successfully saved contact info';
				}
				else{
					$message = 'Contact info was not saved successfully';
					return $this->redirectWithMessage('danger', $message);
				}
			}
			else{
				$alert = 'success'; $message = 'Thanks for contacting us again';
			}
			$joiner = $alert == 'success'? ' and ': ' but';
	    $email1 = new ContactInfoReceived($postVars);
			$email2 = new ContactRequestSent($postVars);
			if($email1->send() && $email2->send()){
				$alert = 'success'; $message .= ' and a message was sent to '.$email2->to;
			}
			else{
				$alert = 'warning'; $message .= ' but message was NOT sent to '.$email2->to;
			}
		}
		catch (Exception $e) {
			$alert = 'danger'; $message = 'An error occurred: '.$e->getMessage();
		}
		// if($alert != 'success' && Director::isDev()) die($e->getMessage());
		return $this->redirectWithMessage($alert, $message);
	}

}
