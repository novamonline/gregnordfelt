<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Testimonial extends DataObject
{
  /**
  * Database fields
  * @var array
  */
  private static $db = array(
    'Client'   => 'Text',
    'Image'    => 'Text',
    'Message'  => 'Varchar(255)',
    'MoreLink' => 'Text',
    'Name'     => 'Text',
    'Title'    => 'Text',
    'Company'  => 'Text'
  );
  /**
  * Has_many relationship
  * @var array
  */
  private static $has_one = array(
    'TestimonialPage' => 'TestimonialPage',
  );
}
