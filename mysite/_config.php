<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'Laguna',
	"database" => 'SS_kolakowski',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('blackcandy');

// Set the site locale
i18n::set_locale('pl_PL');
setlocale(LC_TIME, 'pl_PL', 'pl_PL.UTF8', 'polish'); //
// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
Object::add_extension('BlogEntry', 'BlogEntryDecorator');
Director::set_environment_type('dev');
SS_Log::add_writer(new SS_LogFileWriter('/var/www/kolakowski/mysite/warnings.log'), SS_Log::WARN, '<=');
SS_Log::add_writer(new SS_LogFileWriter('/var/www/kolakowski/mysite/errors.log'), SS_Log::ERR);
Debug::send_errors_to("coalas@o2.pl");
