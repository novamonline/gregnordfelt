<?php

/**
 * summary
 */
class Subscription extends DataObject
{
    private static $db = [
    'name'  => 'Varchar',
    'email'  => 'Varchar',
    'phone'   => 'Varchar',
    'notes' => 'HTMLText',
    'Sort' => 'Int',
    'status' => 'Boolean'
    ];

    private static $summary_fields = [
    	'name',
    	'email', 
    	'status',
    ];



    public function getCMSFields()
    {
        $fields = new FieldList(
            new TextField('name', 'Full Name'),
            new TextField('email', 'E-mail Address'),
            new TextField('phone', 'Phone Number'),
            new HTMLEditorField('notes', 'Notes'),
            new CheckboxSetField('status', 'Active', ['No','Yes'])
        );
        return $fields;
    }
}