<?php

/**
 * summary
 */
class Contacts extends DataObject
{
    private static $db = [
    'FirstName'     => 'Varchar',
    'LastName'      => 'Varchar',
    'EmailAddress'  => 'Varchar',
    'PhoneNumber'   => 'Varchar',
    'MessageText'   => 'HTMLText',
    'Status'        => 'Boolean',
    'Sort'          => 'Int'
    ];

    /**
     * Defines summary fields commonly used in table columns
     * as a quick overview of the data for this dataobject
     * @var array
     */
    private static $summary_fields = [
        'FirstName',
        'LastName',
        'EmailAddress' => 'Email',
        'PhoneNumber'  => 'Phone'
    ];

    /**
     * Singular name for CMS
     * @var string
     */
    private static $singular_name = 'Contact';

    /**
     * Plural name for CMS
     * @var string
     */
    private static $plural_name = 'Contacts';

    public function getCMSFields()
    {
    	$fields = new FieldList(
    		new TextField('FirstName', 'First Name'),
    		new TextField('LastName', 'Last Name'),
    		new TextField('EmailAddress', 'E-mail Address'),
    		new TextField('PhoneNumber', 'Phone Number'),
    		new HTMLEditorField('MessageText', 'Your Inquiry'),
            new ReadonlyField('Status', 'Status')
    	);
    	return $fields;
    }

    public function getTitle()
    {
        $first = $this->FirstName ?? 'Unknown';
        $last  = $this->LastName ?? 'Name';
        $email = $this->EmailAddress ?? "No email";
        return "$first $last - ($email)";
    }

    /**
     * Event handler called before writing to the database.
     */
    public function onBeforeWrite()
    {
      $filter = ['Email' => $this->Email ?? $this->EmailAddress];

      $Recipient = Recipient::get()->filter($filter);
      
      if(!$Recipient->count()){
          $Recipient->Email     = $filter['Email'];
          $Recipient->FirstName = $this->FirstName;
          $Recipient->Surname   = $this->LastName;
          $Recipient->write();
      }
      parent::onBeforeWrite();
    }

}
