<?php

/**
 *
 */
class ContactRequestSent extends Email
{

  protected $ss_template = 'ContactSent';

  public function __construct($data)
  {
    # code...
    $from    = "Do-Not-Reply@mail.gregnordfelt.com";
    $to      = $data['Email'] ?? $data['EmailAddress'];
    $subject = "Your Message to GregNordfelt.com was sent";

    $data['Subject'] = $subject;

    // var_dump($from, $to, $subject); die();
    parent::__construct($from, $to, $subject);

    $this->populateTemplate(new ArrayData($data));
  }
}
