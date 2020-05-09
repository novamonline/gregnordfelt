<?php

class DataObjectExtension extends DataExtension
{
   public function Insert($data = array())
   {
     Debug::dump($data,  static::$db);
   }
}
