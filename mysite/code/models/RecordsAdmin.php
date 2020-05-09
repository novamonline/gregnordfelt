<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class RecordsAdmin extends ModelAdmin
{
  /**
   * Managed data objects for CMS
   * @var array
   */
  private static $managed_models = array(
    'Contacts', 'Recipient', 'Services'
  );

  /**
   * URL Path for CMS
   * @var string
   */
  private static $url_segment = 'records';

  /**
   * Menu title for Left and Main CMS
   * @var string
   */
  private static $menu_title = 'Records';


  public function getEditForm($id = null, $fields = null) {
    $form=parent::getEditForm($id, $fields);

    $model = singleton($this->modelClass);

    /** add sorting if we have a field for... */
    if (class_exists('GridFieldSortableRows')
        && $model->hasField('Sort')
        && $gridField=$form->Fields()->dataFieldByName($this->sanitiseClassName($this->modelClass))) {
        if($gridField instanceof GridField) {
            $gridField->getConfig()->addComponent(new GridFieldSortableRows('Sort'));
            $gridField->getConfig()->addComponent(new GridFieldBulkManager());
        }
    }

    return $form;
}


}
