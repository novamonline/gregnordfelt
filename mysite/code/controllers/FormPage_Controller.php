<?php



class FormPage_Controller extends Page_Controller
{

  /**
   * Defines methods that can be called directly
   * @var array
   */
  private static $allowed_actions = array(
    'sendSubscription' => true
  );
  public function init()
  {
    parent::init();
  }

  public function sendSubscription($request)
  {
    if($request->httpMethod() == 'GET'){
      return $this->redirectWithMessage('error', 'Invalid URL action', '/newsletter-subscription');
    }
    $postVars = $request->postVars();
    $FullName = explode(" ", $postVars['FullName']);
    $EmailAddress = $postVars['Email'] ?? $postVars['EmailAddress'];

    list($FirstName, $LastName) = array_pad($FullName, 2, "");

    $postVars['FirstName'] = $FirstName;
    $postVars['LastName']  = $LastName;

    $Contacts = new Contacts();
    $Contacts->EmailAddress = $EmailAddress;
    $Contacts->FirstName    = $FirstName;
    $Contacts->LastName     = $LastName;
    $Contacts->write();

    new NewsLetterEmail($postVars);
  }

  public function postCURLrequest($url, $data, $return_array = false)
  {
    $curl = curl_init();
    // Set some options - we are passing in a useragent too here
    curl_setopt_array($curl, array(
      CURLOPT_RETURNTRANSFER => 1,
      CURLOPT_URL => $url,
      CURLOPT_USERAGENT => 'CPG',
      CURLOPT_POST => count($data),
      CURLOPT_POSTFIELDS => $data
    ));
    // Send the request & save response to $result
    $result = curl_exec($curl);
    // Close request to clear up some resources
    curl_close($curl);

    return $return_array? json_decode($result, true): $result;
  }

  public function googleRecaptcha($response)
  {
    $url = "https://www.google.com/recaptcha/api/siteverify";
    $data['secret'] = $this->SiteConfig('gRecaptcha');
    $data['remote_ip'] = $_SERVER['REMOTE_ADDR'];
    $data['response'] = $response;
    $results = $this->postCURLrequest($url, $data, true);
    return $results['success'] == true;
  }

  public function Validate($request, $check, $url = null)
  {
    $errors = []; $validator = new StdClass();

    foreach ($check as $key => $value) {
      if(is_numeric($key)){
        $key = $value; $value = '';
      }
      $entered = $request->postVar($key) ?? $request->requestVar($key);
      $exValue = explode(":", $value);
      $_message = $key.' field is required';
      list($invalid, $message) = array_pad($exValue, 2, $_message);

      if($entered == $invalid) $errors[$key] = $message;
      // elseif($invalid == 'email' && strpos($entered, "@") === false) $errors[$key] = 'email address is invalid';
      // elseif($invalid == 'numeric' && !is_numeric($entered)) $errors[$key] = $key.' value must be numeric';
    }
    if(count($errors) > 0){
      $validator->failed = true;
      $validator->passed = false;
      $validator->errors = $errors;
    }
    else{
      $validator->failed = false;
      $validator->passed = true;
    }
    return $validator;
  }
}
