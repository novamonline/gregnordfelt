<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class Events extends DataObject
{
  private static $db = [
    'event_title' => 'Varchar(128)',
    'event_info'  => 'HTMLText',
    'event_date'  => 'Datetime',
    'event_place' => 'Varchar(255)',
    'event_sort'  => 'Int'
  ];

  private static $has_one = [
    'event_img'  => 'FineImage',
    'EventsPage' => 'EventsPage'
  ];

  private static $has_many = [

  ];
  private static $searchable_fields = array(
    'event_title' => 'Title',
  );

  private static $summary_fields = array(
    'event_img.CMSThumbnail' => 'Image',
    'event_title'            => 'Title'
  );

  private static $singular_name = 'News/Event';
  private static $plural_name   = 'Current News & Events';


  public function getCMSFields() {
    $fields     = new FieldList(
      $EventTitle = TextField::create('event_title','Event Title'),
      $EventInfo  = TextareaField::create('event_place','Event Place'),
      $EventDate  = DateField::create('event_date', 'Event Date'),
      $EventImage = UploadField::create('event_img','Event Image'),
      $EventInfo  = HTMLEditorField::create('event_info','Event Info')
    );
    $EventImage->setFolderName('Uploads/Events');
    $EventInfo->setRows(3);
    $EventDate->setConfig('dateformat', 'MM-dd-yyyy')->setConfig('showcalendar', true);
    return $fields;
  }
}
