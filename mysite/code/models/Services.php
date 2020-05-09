<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Services extends DataObject
{
  static $db = array(
    "ContactID" => "Int",
    'EventName' => 'Varchar',
    'EventDate' => 'Datetime',
    'EventPlace' => 'Text',
    'EventInfo' => 'HTMLText',
  );

  public function ContactID()
  {
    $Contact = Recipient::get()->byID($this->ContactID);

    Debug::dump($Contact->FirstName); die();
    return $Contact;
  }

  /**
   * Update Fields
   * @return FieldList
   */
  public function updateCMSFields(FieldList $fields)
  {
    $owner = $this->owner;
    $fields->fieldByName('ContactID')->setValue('hidden');
    $fields->push(LiteralField::create('ContactID', 'Contact')->setValue('Hilkiah'));
    return $fields;
  }
  /**
   * CMS Fields
   * @return FieldList
   */
  public function getCMSFields()
  {
    $fields = parent::getCMSFields();
    // $fields->addFieldToTab('Root.Details', TextField::create('ContactID','title'));

    return $fields;
  }

/**
 * Singular name for CMS
 * @var string
 */
private static $singular_name = 'Service';
  /**
   * Plural name for CMS
   * @var string
   */
  private static $plural_name = 'Services';
}
