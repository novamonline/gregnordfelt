<?php

Email::set_mailer(new SmtpMailer());
NewsletterAdmin::$template_paths = "themes/".SSViewer::current_theme()."/templates/Email";
