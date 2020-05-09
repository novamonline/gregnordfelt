<?php
class CompanySiteConfig extends DataExtension {

    private static $db = array(
        'Facebook'   => 'Varchar',
        'Twitter'    => 'Varchar',
        'LinkedIn'   => 'Varchar',
        'Instagram'  => 'Varchar',
        'Youtube'    => 'Varchar',
        'GooglePlus' => 'Varchar',
        'NSA'        => 'Varchar',
        'Email'      => 'Varchar',
        'Phone'      => 'Varchar',
        'Signature'  => 'HTMLText',
        'gRecaptcha'  => 'Text',
        'gAnalytics'  => 'Text',
        'gRecaptchaKey' => 'Text'

    );

    public function updateCMSFields(FieldList $fields) {
        $fields->addFieldToTab("Root.Main",
          new HeaderField("SiteInfo", "Website Info"), 'Title'
        );
        $fields->addFieldsToTab("Root.Main", array(
          new TextField('NSA', 'NSA Profile Page'),
          new HeaderField("Social", "Social Media"),
          new TextField("Facebook", "Facebook Page"),
          new TextField('LinkedIn', 'LinkedIn Page'),
          new TextField('Instagram', 'Instagram Page'),
          new TextField('Youtube', 'Youtube Page'),
          new TextField('Twitter', 'Twitter Page'),
          new TextField('GooglePlus', 'Google+ Page'),
          new HeaderField("Contact", "Contact Info"),
          new TextField('Email', 'E-mail Address'),
          new TextField('Phone', 'Phone Number'),
          new HeaderField("Google", "Google API"),
          new TextField('gRecaptcha', 'reCAPTCHA Secret'),
          new TextField('gRecaptchaKey', 'reCAPTCHA Key'),
          new TextField('gAnalytics', 'Google UA code'),
          HTMLEditorField::create('Signature', 'Footer Signature')->setRows(5)
        ));
        return $fields;
    }
}
