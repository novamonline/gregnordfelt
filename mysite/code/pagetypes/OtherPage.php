<?php

/**
 * Description
 *
 * @package silverstripe
 * @subpackage mysite
 */
class OtherPage extends Page
{

   public function Image()
   {
      return $this->obj('BgImage') ?? $this->obj('FeatImg');
   }

   public function Header()
   {
      return $this->renderWith('Heading');
   }
}
