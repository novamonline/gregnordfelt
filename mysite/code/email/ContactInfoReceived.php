<?php

/**
 *
 */
class ContactInfoReceived extends Email
{

  protected $ss_template = 'ContactInfo';

  public function __construct($data)
  {
    # code...
    $from    = "Do-Not-Reply@mail.gregnordfelt.com";
    $to      = "hilmak01@gmail.com";
    $subject = "Contact Message Received from GregNordfelt.com";

    $data['Link'] = Director::BaseURL()."/admin/records/services/";
    $data['Subject'] = $subject;

    // var_dump($from, $to, $subject); die();
    parent::__construct($from, $to, $subject);

    $this->populateTemplate(new ArrayData($data));
  }
}
