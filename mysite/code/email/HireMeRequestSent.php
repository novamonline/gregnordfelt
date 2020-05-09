<?php

/**
 *
 */
class HireMeRequestSent extends Email
{

  protected $ss_template = 'HireMeEmail';

  public function __construct($data)
  {
    # code...
    $from    = "Do-Not-Reply@mail.gregnordfelt.com";
    $to      = $data['Email'] ?? $data['EmailAddress'];
    $subject = "Request to Hire Greg Nordfelt sent";

    // var_dump($from, $to, $subject); die();
    parent::__construct($from, $to, $subject);

    $this->populateTemplate(new ArrayData($data));
  }
}
