<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class SubPage extends Page
{
   /**
    * Defines whether a page can be shown in menu
    * @var boolean
    */
   private static $show_in_menus = false;
   /**
    * Defines whether a page can be in the root of the site tree
    * @var boolean
    */
   private static $can_be_root = false;

   /**
    * CMS Fields
    * @return FieldList
    */
   public function getCMSFields()
   {
      $fields = parent::getCMSFields();
      $fields->addFieldsToTab('Root.Main', [
         $field = MultiSelect2Field::create('WhatToShow', "Show", [
            'ew', 'rerer', 'wewew'
         ])
      ],'Content');
      return $fields;
   }
}
