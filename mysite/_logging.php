<?php

// var_dump(Director::isDev()); die();
if (Director::isDev()) {
    $LOG_DIR = realpath(__DIR__.'/../logs').DIRECTORY_SEPARATOR;
    // log errors and warnings
    SS_Log::add_writer(new SS_LogFileWriter($LOG_DIR.'warnings.log'), SS_Log::WARN, '<=');
    // or just errors
    SS_Log::add_writer(new SS_LogFileWriter($LOG_DIR.'errors.log'), SS_Log::ERR);
    // or notices (e.g. for Deprecation Notifications)
    SS_Log::add_writer(new SS_LogFileWriter($LOG_DIR.'notices.log'), SS_Log::NOTICE);

    Config::inst()->update('Email', 'send_all_emails_to', "hilmak01@gmail.com");
} else {
    SS_Log::add_writer(new SS_LogEmailWriter('hilmak01@gmail.com'), SS_Log::ERR);
    SS_Log::add_writer(new SS_LogEmailWriter('hilmak01@gmail.com'), SS_Log::WARN, '<=');
    Config::inst()->update('Email', 'bcc_all_emails_to', "hilmak01@gmail.com");
}
