<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class TestimonialPage extends Page
{
   /**
    * Database fields
    * @var array
    */
   private static $db = array(
     'Client'   => 'Text',
     'MoreLink' => 'Text',
     'FullName' => 'Text',
     'Position' => 'Text',
   );

   /**
    * Has_one relationship
    * @var array
    */
   private static $has_one = array(
     'ClientImg' => 'FineImage',
     'ClientFile' => 'File'
   );

   /**
    * Has_many relationship
    * @var array
    */
   private static $has_many = array(
     'Testimonials' => 'Testimonial',
   );

   private static $can_be_root = false;

   public function getCMSFields()
 	{
    $F[1] = TextField::create( 'FullName', 'Client Name' );
    $F[2] = TextField::create( 'Position', 'Client Title/Position' );
    $F[3] = TextField::create( 'Client', 'Company Name' );
    $F[4] = TextField::create( 'MoreLink', 'Read More Link' );
    $F[5] = UploadField::create('ClientImg', 'Client Image/Logo')->setFolderName('Uploads/Testimonials/imgs');
    $F[6] = UploadField::create('ClientFile', 'Original File')->setFolderName('Uploads/Testimonials/files');

 		$fields = parent::getCMSFields();

 		$fields->addFieldsToTab('Root.Main', $F, 'Content');

    $F[5]->setAllowedMaxFileNumber(1)->setAllowedExtensions(['jpg','png','jpeg']);
    $F[6]->setAllowedMaxFileNumber(1)->setAllowedExtensions(['pdf','doc']);

 		return $fields;
 	}
}
