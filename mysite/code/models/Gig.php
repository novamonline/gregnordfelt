<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Gig extends DataObject
{
  static $db = array(
    "ContactID" => "Int",
    'EventName' => 'Varchar',
    'EventDate' => 'Datetime',
    'EventPlace' => 'Text',
    'EventInfo' => 'HTMLText',
  );
}
