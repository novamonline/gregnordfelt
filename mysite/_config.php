<?php

global $project;
$project = 'mysite';

global $database;
$database = 'localgregdb01';

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');

// Search capability
FulltextSearchable::enable();

// 3rd-party settings
require(__DIR__.'/_modules.php');

// Error logging
require(__DIR__.'/_logging.php');

// server settings
require(__DIR__.'/_server.php');


// output settings
require(__DIR__.'/_output.php');