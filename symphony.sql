-- Adminer 4.0.3 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = '+00:00';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `symphony`;

CREATE TABLE `sym_authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT '0000-00-00 00:00:00',
  `user_type` enum('author','manager','developer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'author',
  `primary` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token_active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `language` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`) VALUES
(1,	'vagrant',	'PBKDF2v1|10000|41c867fb0a1f27681847|LI4OdInQiZS/vTI/K3iGlDrZtia+Up1RW0RjGH0HJRZbA8uIHE+XRg==',	'System',	'Administrator',	'vagrant@vagrant.dev',	'2014-02-11 12:52:59',	'developer',	'yes',	'/blueprints/sections/',	'no',	NULL);

CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expiry` (`expiry`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  `modification_date` datetime NOT NULL,
  `modification_date_gmt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`),
  KEY `modification_date` (`modification_date`),
  KEY `modification_date_gmt` (`modification_date_gmt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES
(1,	2,	1,	'2011-07-21 15:03:54',	'2011-07-21 05:03:54',	'2011-07-21 15:03:54',	'2011-07-21 05:03:54'),
(2,	2,	1,	'2011-07-21 15:05:01',	'2011-07-21 05:05:01',	'2011-07-21 15:05:01',	'2011-07-21 05:05:01'),
(3,	1,	1,	'2011-07-21 15:05:45',	'2011-07-21 05:05:45',	'2011-07-21 15:05:45',	'2011-07-21 05:05:45'),
(4,	1,	1,	'2011-07-21 15:06:00',	'2011-07-21 05:06:00',	'2011-07-21 15:06:00',	'2011-07-21 05:06:00'),
(5,	3,	1,	'2011-07-21 15:06:19',	'2011-07-21 05:06:19',	'2011-07-21 15:06:19',	'2011-07-21 05:06:19'),
(6,	3,	1,	'2011-07-21 15:06:31',	'2011-07-21 05:06:31',	'2011-07-21 15:06:31',	'2011-07-21 05:06:31');

CREATE TABLE `sym_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES
(1,	3,	'a-primer-to-symphony-2s-default-theme',	'A primer to Symphony 2\'s default theme'),
(2,	4,	'an-example-draft-article',	'An example draft article');

CREATE TABLE `sym_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES
(1,	3,	'Every theme in Symphony has an important mission: to introduce newcomers to Symphony by way of a working example. *Spectrum*, the name of this version\'s default theme, was designed and developed with such a mission in mind by following a set of constraints. A default theme is required to:\r\n\r\n1. be presented in a format that is universally identified and intuitive.\r\n2. have a clear and simple HTML structure.\r\n3. demonstrate the fundamental concepts in Symphony—[sections](http://getsymphony.com/learn/concepts/view/sections/), [fields](http://getsymphony.com/learn/concepts/view/fields/), [data sources](http://getsymphony.com/learn/concepts/view/data-sources/) and [events](http://getsymphony.com/learn/concepts/view/events/)—and their interactions together.\r\n4. avoid functionality that does not have any educational value.\r\n\r\n#### The design ####\r\n\r\nOur first rule states that a default theme needs to be in a format that is instantly recognisable to a user. As a result, all of the themes created in Symphony\'s history have emphasised a weblog structure. *Spectrum* continues this tradition.\r\n\r\n*Cubic*, the name of a previous default theme, followed the teaching mandate very closely. However, the theme took it one step further and removed complex structure and colour in favour of a simplified look and feel. The main design goal for *Spectrum* is to introduce more colours but still follow the philosophy of a simplistic layout.\r\n\r\n#### Features ####\r\n\r\n*Spectrum* has a handful of additional features that you won\'t find in previous default themes. These new features are not only meant to demonstrate the capabilities of the system but also explain some fundamental philosophies in Symphony 2. Below is a list of features:\r\n\r\n- Logged in users will see links to Symphony\'s admin to edit articles, manage comments and add notes.\r\n- Logged in users will see 3 protected menu items, article drafts, the debug page and a link to the Symphony admin.\r\n- Articles on the drafts page sport a button to publish the article.\r\n- Article images take advantage of Symphony\'s build-in image manipulation feature to crop and size the image automatically.\r\n- The contact form on the about page saves the content to the Messages section on the back end and emails the website\'s owner.\r\n\r\n#### Philosophy ####\r\n\r\nAll of the above takes advantage of new features found in version 2. An important concept that is being advocated in Symphony is the practise of creating a tighter connection between the front end and the back end. Developers are encouraged to take advantage of the simplified URL structure of the admin to create a more convenient environment for their users.\r\n\r\nWith the introduction of the Event editor, developers now have even more control when developing a website. For example, the *Publish* button on the [article drafts page](../../drafts/) utilises the event editor to create an interaction between the front end and the back end. This allows the *Publish* button to update the \"Publish this article\" checkbox field from the \"Articles\" section. This feature also compliments and encourages the philosophy of a more seamless environment between the website and the admin interface.',	'<p>Every theme in Symphony has an important mission: to introduce newcomers to Symphony by way of a working example. <em>Spectrum</em>, the name of this version\'s default theme, was designed and developed with such a mission in mind by following a set of constraints. A default theme is required to:</p>\r\n\r\n<ol>\r\n<li>be presented in a format that is universally identified and intuitive.</li>\r\n<li>have a clear and simple HTML structure.</li>\r\n<li>demonstrate the fundamental concepts in Symphony—<a href=\"http://getsymphony.com/learn/concepts/view/sections/\">sections</a>, <a href=\"http://getsymphony.com/learn/concepts/view/fields/\">fields</a>, <a href=\"http://getsymphony.com/learn/concepts/view/data-sources/\">data sources</a> and <a href=\"http://getsymphony.com/learn/concepts/view/events/\">events</a>—and their interactions together.</li>\r\n<li>avoid functionality that does not have any educational value.</li>\r\n</ol>\r\n\r\n<h4>The design</h4>\r\n\r\n<p>Our first rule states that a default theme needs to be in a format that is instantly recognisable to a user. As a result, all of the themes created in Symphony\'s history have emphasised a weblog structure. <em>Spectrum</em> continues this tradition.</p>\r\n\r\n<p><em>Cubic</em>, the name of a previous default theme, followed the teaching mandate very closely. However, the theme took it one step further and removed complex structure and colour in favour of a simplified look and feel. The main design goal for <em>Spectrum</em> is to introduce more colours but still follow the philosophy of a simplistic layout.</p>\r\n\r\n<h4>Features</h4>\r\n\r\n<p><em>Spectrum</em> has a handful of additional features that you won\'t find in previous default themes. These new features are not only meant to demonstrate the capabilities of the system but also explain some fundamental philosophies in Symphony 2. Below is a list of features:</p>\r\n\r\n<ul>\r\n<li>Logged in users will see links to Symphony\'s admin to edit articles, manage comments and add notes.</li>\r\n<li>Logged in users will see 3 protected menu items, article drafts, the debug page and a link to the Symphony admin.</li>\r\n<li>Articles on the drafts page sport a button to publish the article.</li>\r\n<li>Article images take advantage of Symphony\'s build-in image manipulation feature to crop and size the image automatically.</li>\r\n<li>The contact form on the about page saves the content to the Messages section on the back end and emails the website\'s owner.</li>\r\n</ul>\r\n\r\n<h4>Philosophy</h4>\r\n\r\n<p>All of the above takes advantage of new features found in version 2. An important concept that is being advocated in Symphony is the practise of creating a tighter connection between the front end and the back end. Developers are encouraged to take advantage of the simplified URL structure of the admin to create a more convenient environment for their users.</p>\r\n\r\n<p>With the introduction of the Event editor, developers now have even more control when developing a website. For example, the <em>Publish</em> button on the <a href=\"../../drafts/\">article drafts page</a> utilises the event editor to create an interaction between the front end and the back end. This allows the <em>Publish</em> button to update the \"Publish this article\" checkbox field from the \"Articles\" section. This feature also compliments and encourages the philosophy of a more seamless environment between the website and the admin interface.</p>\r\n'),
(2,	4,	'This is an example draft article. Feel free to test the system by pressing the *publish* button.',	'<p>This is an example draft article. Feel free to test the system by pressing the <em>publish</em> button.</p>\r\n');

CREATE TABLE `sym_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_3` (`id`, `entry_id`, `value`, `date`) VALUES
(1,	3,	'2012-03-10T11:21:00+00:00',	'2012-03-10 11:21:00'),
(2,	4,	'2012-03-10T21:21:00+10:00',	'2012-03-10 11:21:00');

CREATE TABLE `sym_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES
(1,	3,	1),
(2,	4,	2);

CREATE TABLE `sym_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`) VALUES
(1,	3,	'yes'),
(2,	4,	'no');

CREATE TABLE `sym_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES
(1,	1,	'symphony',	'Symphony'),
(2,	2,	'announcement',	'Announcement');

CREATE TABLE `sym_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES
(1,	1,	'All about Symphony, an open source XSLT Content Management System.',	'<p>All about Symphony, an open source XSLT Content Management System.</p>\n'),
(2,	2,	'Important news and updates.',	'<p>Important news and updates.</p>\n');

CREATE TABLE `sym_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_8` (`id`, `entry_id`, `value`, `date`) VALUES
(1,	5,	'2012-03-10T21:21:00+10:00',	'2012-03-10 11:21:00'),
(2,	6,	'2012-03-10T21:21:00+10:00',	'2012-03-10 11:21:00');

CREATE TABLE `sym_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `value_formatted`) VALUES
(1,	5,	'Check the official [Symphony downloads page](http://getsymphony.com/downloads/) for a full list of extensions, ensembles and XSLT utilities.',	'<p>Check the official <a href=\"http://getsymphony.com/downloads/\">Symphony downloads page</a> for a full list of extensions, ensembles and XSLT utilities.</p>\r\n'),
(2,	6,	'Follow the Symphony team ([@symphonycms](http://twitter.com/symphonycms)) and the Symphony community ([#symphonycms](http://twitter.com/search?q=%23symphonycms)) on Twitter.',	'<p>Follow the Symphony team (<a href=\"http://twitter.com/symphonycms\">@symphonycms</a>) and the Symphony community (<a href=\"http://twitter.com/search?q=%23symphonycms\">#symphonycms</a>) on Twitter.</p>\r\n');

CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES
(1,	'debugdevkit',	'enabled',	'1.2.4'),
(2,	'export_ensemble',	'enabled',	'2.0.3'),
(3,	'jit_image_manipulation',	'enabled',	'1.21'),
(4,	'maintenance_mode',	'enabled',	'1.7'),
(5,	'markdown',	'enabled',	'1.17'),
(6,	'profiledevkit',	'enabled',	'1.4'),
(7,	'selectbox_link_field',	'enabled',	'1.29'),
(8,	'xssfilter',	'enabled',	'1.2');

CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES
(1,	1,	'/frontend/',	'FrontendDevKitResolve',	'frontendDevKitResolve'),
(2,	1,	'/frontend/',	'ManipulateDevKitNavigation',	'manipulateDevKitNavigation'),
(3,	2,	'/system/preferences/',	'AddCustomPreferenceFieldsets',	'appendPreferences'),
(4,	3,	'/system/preferences/',	'AddCustomPreferenceFieldsets',	'appendPreferences'),
(5,	3,	'/system/preferences/',	'Save',	'__SavePreferences'),
(6,	4,	'/system/preferences/',	'AddCustomPreferenceFieldsets',	'appendPreferences'),
(7,	4,	'/system/preferences/',	'Save',	'__SavePreferences'),
(8,	4,	'/system/preferences/',	'CustomActions',	'__toggleMaintenanceMode'),
(9,	4,	'/backend/',	'AppendPageAlert',	'__appendAlert'),
(10,	4,	'/blueprints/pages/',	'AppendPageContent',	'__appendType'),
(11,	4,	'/frontend/',	'FrontendPrePageResolve',	'__checkForMaintenanceMode'),
(12,	4,	'/frontend/',	'FrontendParamsResolve',	'__addParam'),
(13,	6,	'/frontend/',	'FrontendDevKitResolve',	'frontendDevKitResolve'),
(14,	6,	'/frontend/',	'ManipulateDevKitNavigation',	'manipulateDevKitNavigation'),
(15,	8,	'/blueprints/events/new/',	'AppendEventFilter',	'appendEventFilter'),
(16,	8,	'/blueprints/events/edit/',	'AppendEventFilter',	'appendEventFilter'),
(17,	8,	'/frontend/',	'EventPreSaveFilter',	'eventPreSaveFilter');

CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES
(1,	'Title',	'title',	'input',	1,	'yes',	0,	'main',	'yes'),
(2,	'Body',	'body',	'textarea',	1,	'yes',	1,	'main',	'no'),
(3,	'Date',	'date',	'date',	1,	'no',	2,	'sidebar',	'yes'),
(4,	'Categories',	'categories',	'selectbox_link',	1,	'yes',	3,	'sidebar',	'yes'),
(5,	'Publish',	'publish',	'checkbox',	1,	'no',	4,	'sidebar',	'yes'),
(6,	'Title',	'title',	'input',	2,	'yes',	0,	'main',	'yes'),
(7,	'Description',	'description',	'textarea',	2,	'no',	1,	'main',	'yes'),
(8,	'Date',	'date',	'date',	3,	'no',	0,	'main',	'yes'),
(9,	'Note',	'note',	'textarea',	3,	'yes',	1,	'main',	'yes'),
(10,	'Author',	'author',	'input',	4,	'yes',	0,	'main',	'yes'),
(11,	'Email',	'email',	'input',	4,	'yes',	1,	'main',	'yes'),
(12,	'Website',	'website',	'input',	4,	'no',	2,	'main',	'yes'),
(13,	'Date',	'date',	'date',	4,	'no',	3,	'main',	'yes'),
(14,	'Article',	'article',	'selectbox_link',	4,	'yes',	4,	'sidebar',	'yes'),
(15,	'Comment',	'comment',	'textarea',	4,	'yes',	5,	'sidebar',	'no'),
(16,	'Image',	'image',	'upload',	5,	'yes',	0,	'main',	'yes'),
(17,	'Article',	'article',	'selectbox_link',	5,	'yes',	1,	'main',	'yes'),
(18,	'Description',	'description',	'textarea',	5,	'yes',	2,	'sidebar',	'no'),
(19,	'Name',	'name',	'input',	6,	'yes',	0,	'main',	'yes'),
(20,	'Email',	'email',	'input',	6,	'yes',	1,	'main',	'yes'),
(21,	'Subject',	'subject',	'input',	6,	'no',	2,	'main',	'yes'),
(22,	'Message',	'message',	'textarea',	6,	'no',	3,	'sidebar',	'no');

CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES
(4,	5,	'off',	'Publish this article');

CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_fields_date` (`id`, `field_id`, `pre_populate`) VALUES
(6,	3,	'yes'),
(2,	8,	'yes'),
(3,	13,	'yes');

CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES
(11,	1,	NULL),
(2,	6,	NULL),
(3,	10,	NULL),
(4,	11,	'/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i'),
(5,	12,	'/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/'),
(6,	19,	NULL),
(7,	20,	'/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i'),
(8,	21,	NULL);

CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`, `hide_when_prepopulated`) VALUES
(1,	14,	'no',	'yes',	'1',	20,	'no'),
(2,	17,	'no',	'yes',	'1',	20,	'no'),
(4,	4,	'no',	'yes',	'6',	20,	'no');

CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES
(1,	2,	'markdown',	20),
(2,	7,	'markdown',	5),
(3,	9,	'markdown',	15),
(4,	15,	'markdown_with_purifier',	8),
(5,	18,	'markdown',	9),
(6,	22,	NULL,	9);

CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES
(1,	16,	'/workspace/uploads',	'/\\.(?:bmp|gif|jpe?g|png)$/i');

CREATE TABLE `sym_forgotpass` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_sources` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES
(64,	NULL,	'Home',	'home',	NULL,	'category',	'article_images,homepage_articles,logged_in_author,navigation,notes',	NULL,	1),
(66,	NULL,	'About',	'about',	NULL,	NULL,	'logged_in_author,navigation,website_owner',	'save_message',	5),
(67,	NULL,	'RSS',	'rss',	NULL,	NULL,	'rss_articles',	NULL,	9),
(68,	NULL,	'Archive',	'archive',	NULL,	'year',	'archive,logged_in_author,navigation',	NULL,	4),
(69,	NULL,	'Articles',	'articles',	NULL,	'entry/cat',	'article,article_images,comments,logged_in_author,navigation',	'save_comment',	2),
(70,	NULL,	'Drafts',	'drafts',	NULL,	'entry',	'article_images,drafts,logged_in_author,navigation',	'publish_article',	3),
(75,	NULL,	'Maintenance',	'maintenance',	NULL,	NULL,	NULL,	NULL,	10),
(76,	NULL,	'Page Not Found',	'404',	NULL,	NULL,	NULL,	NULL,	11);

CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES
(681,	76,	'404'),
(680,	70,	'admin'),
(656,	75,	'hidden'),
(677,	64,	'hidden'),
(679,	69,	'hidden'),
(463,	67,	'XML'),
(462,	67,	'hidden'),
(678,	64,	'index'),
(657,	75,	'maintenance'),
(682,	76,	'hidden');

CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES
(1,	'Articles',	'articles',	1,	'no',	'Content'),
(2,	'Categories',	'categories',	2,	'no',	'Content'),
(3,	'Notes',	'notes',	3,	'no',	'Content'),
(4,	'Comments',	'comments',	4,	'no',	'Content'),
(5,	'Images',	'images',	5,	'yes',	'Content'),
(6,	'Messages',	'messages',	6,	'no',	'Content');

CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES
(1,	1,	1,	4,	14,	'no'),
(2,	1,	1,	5,	17,	'no'),
(4,	2,	6,	1,	4,	'no');

CREATE TABLE `sym_sessions` (
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session`),
  KEY `session_expires` (`session_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- 2014-02-11 20:54:21
