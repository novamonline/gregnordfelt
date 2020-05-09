<?php

/**
 *
 */
class HireMeDataReceived extends Email
{

  protected $ss_template = 'HireMeEmail';

  public function __construct($data)
  {
    # code...
    $from    = "Do-Not-Reply@mail.gregnordfelt.com";
    $to      = "hilmak01@gmail.com";
    $subject = "Interested in Hiring Greg Nordfelt";

    $data['Link'] = Director::BaseURL()."/admin/records/services/";

    // var_dump($from, $to, $subject); die();
    parent::__construct($from, $to, $subject);

    $this->populateTemplate(new ArrayData($data));
  }
}
