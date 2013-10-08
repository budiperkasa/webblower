-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2012 at 11:35 AM
-- Server version: 5.1.56
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webbrcom_blower`
--

-- --------------------------------------------------------

--
-- Table structure for table `bak_banner`
--

CREATE TABLE IF NOT EXISTS `bak_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bak_banner`
--

INSERT INTO `bak_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 18, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 18, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 13, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 13, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 8, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 10, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/amazoncom-bookstores.html', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_bannerclient`
--

CREATE TABLE IF NOT EXISTS `bak_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_bannerclient`
--

INSERT INTO `bak_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bak_bannertrack`
--

CREATE TABLE IF NOT EXISTS `bak_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_categories`
--

CREATE TABLE IF NOT EXISTS `bak_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `bak_categories`
--

INSERT INTO `bak_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Free and Open Source Software', '', 'free-and-open-source-software', '', 'com_newsfeeds', 'left', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, ''),
(27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_components`
--

CREATE TABLE IF NOT EXISTS `bak_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `bak_components`
--

INSERT INTO `bak_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_contact_details`
--

CREATE TABLE IF NOT EXISTS `bak_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_contact_details`
--

INSERT INTO `bak_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_content`
--

CREATE TABLE IF NOT EXISTS `bak_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `bak_content`
--

INSERT INTO `bak_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for intranets and extranets and is supported by a community of tens of thousands of users. </p>', 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! now provides more developer power while making the user experience all the more friendly. For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>', 1, 1, 0, 1, '2008-08-12 10:00:00', 62, '', '2008-08-12 10:00:00', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 29, 0, 1, '', '', 0, 92, 'robots=\nauthor='),
(2, 'Newsflash 1', 'newsflash-1', '', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', 1, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 1, 'robots=\nauthor='),
(3, 'Newsflash 2', 'newsflash-2', '', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', 1, 1, 0, 3, '2008-08-09 22:30:34', 62, '', '2008-08-09 22:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(4, 'Newsflash 3', 'newsflash-3', '', '<p>With a library of thousands of free <a href="http://extensions.joomla.org" target="_blank" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions">Joomla! Extensions</a>  library today. </p>', '', 1, 1, 0, 3, '2008-08-10 06:30:34', 62, '', '2008-08-10 06:30:34', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 5, '', '', 0, 1, 'robots=\nauthor='),
(5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://joomla.org/" target="_blank" title="Joomla!">Joomla!</a> The software and default templates on which it runs are Copyright 2005-2008 <a href="http://www.opensourcematters.org/" target="_blank" title="Open Source Matters">Open Source Matters</a>. The sample content distributed with Joomla! is licensed under the <a href="http://docs.joomla.org/JEDL" target="_blank" title="Joomla! Electronic Document License">Joomla! Electronic Documentation License.</a> All data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p> <p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1" target="_blank" title="GNU General Public License"> GNU General Public License</a>. If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4" target="_blank" title="How To Apply These Terms To Your Program">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html" target="_blank" title="GNU General Public License FAQ">''GNU General Public License FAQ''</a>.</p> <p>The Joomla! licence has always been GPL.</p>', '', 1, 4, 0, 25, '2008-08-20 10:11:07', 62, '', '2008-08-20 10:11:07', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 100, 'robots=\nauthor='),
(6, 'We are Volunteers', 'we-are-volunteers', '', '<p>The Joomla Core Team and Working Group members are volunteer developers, designers, administrators and managers who have worked together to take Joomla! to new heights in its relatively short life. Joomla! has some wonderfully talented people taking Open Source concepts to the forefront of industry standards.  Joomla! 1.5 is a major leap forward and represents the most exciting Joomla! release in the history of the project. </p>', '', 1, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 4, '', '', 0, 54, 'robots=\nauthor='),
(9, 'Millions of Smiles', 'millions-of-smiles', '', '<p>The Joomla! team has millions of good reasons to be smiling about the Joomla! 1.5. In its current incarnation, it''s had millions of downloads, taking it to an unprecedented level of popularity.  The new code base is almost an entire re-factor of the old code base.  The user experience is still extremely slick but for developers the API is a dream.  A proper framework for real PHP architects seeking the best of the best.</p><p>If you''re a former Mambo User or a 1.0 series Joomla! User, 1.5 is the future of CMSs for a number of reasons.  It''s more powerful, more flexible, more secure, and intuitive.  Our developers and interface designers have worked countless hours to make this the most exciting release in the content management system sphere.</p><p>Go on ... get your FREE copy of Joomla! today and spread the word about this benchmark project. </p>', '', 1, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 7, '', '', 0, 23, 'robots=\nauthor='),
(10, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="JED">Joomla! Extensions Directory</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in.</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://community.joomla.org/translations.html" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', 1, 3, 0, 32, '2008-07-30 14:06:37', 62, '', '2008-07-30 14:06:37', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 10, 'robots=\nauthor='),
(11, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15', '', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p><!--more--></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank" title="JoomlaCode">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''jos_'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', 1, 3, 0, 28, '2008-07-30 20:27:52', 62, '', '2008-07-30 20:27:52', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 3, '', '', 0, 14, 'robots=\nauthor='),
(12, 'Why does Joomla! 1.5 use UTF-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', 1, 3, 0, 31, '2008-08-05 01:11:29', 62, '', '2008-08-05 01:11:29', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 8, '', '', 0, 29, 'robots=\nauthor='),
(13, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', '', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', 1, 3, 0, 28, '2008-08-06 16:47:35', 62, '', '2008-08-06 16:47:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 2, '', '', 0, 11, 'robots=\nauthor='),
(14, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', 1, 3, 0, 31, '2008-08-06 21:27:49', 62, '', '2008-08-06 21:27:49', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 6, '', '', 0, 23, 'robots=\nauthor='),
(15, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perform actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', 1, 3, 0, 31, '2008-08-06 19:28:35', 62, '', '2008-08-06 19:28:35', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 8, 'robots=\nauthor='),
(16, 'Only one edit window! How do I create "Read more..."?', 'only-one-edit-window-how-do-i-create-read-more', '', '<p>This is now implemented by inserting a <strong>Read more...</strong> tag (the button is located below the editor area) a dotted line appears in the edited text showing the split location for the <em>Read more....</em> A new Plugin takes care of the rest.</p><p>It is worth mentioning that this does not have a negative effect on migrated data from older sites. The new implementation is fully backward compatible.</p>', '', 1, 3, 0, 28, '2008-08-06 19:29:28', 62, '', '2008-08-06 19:29:28', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 4, '', '', 0, 20, 'robots=\nauthor='),
(17, 'My MySQL database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', '', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', 1, 3, 0, 31, '2008-08-07 09:30:37', 62, '', '2008-08-07 09:30:37', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 7, '', '', 0, 9, 'robots=\nauthor='),
(18, 'Joomla! Features', 'joomla-features', '', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Easily integrate news feeds into your Web site.</li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site.</li></ul>', 1, 4, 0, 29, '2008-08-08 23:32:45', 62, '', '2008-08-08 23:32:45', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 4, '', '', 0, 59, 'robots=\nauthor='),
(19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', '', 1, 4, 0, 29, '2008-08-09 07:49:20', 62, '', '2008-08-09 07:49:20', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 2, '', '', 0, 150, 'robots=\nauthor='),
(20, 'Support and Documentation', 'support-and-documentation', '', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too!</p> <p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features.</p> <p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank" title="Forum">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p> <p>Two other resources for Support are the <a href="http://developer.joomla.org/" target="_blank" title="Joomla! Developer Site">Joomla! Developer Site</a> and the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a> (JED). The Joomla! Developer Site provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site.</p> <p>The Joomla! Developers and Bug Squad members are regularly posting their blog reports about several topics such as programming techniques and security issues.</p> <h1>Documentation</h1> <p>Joomla! Documentation can of course be found on the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. You can find information for beginners, installation, upgrade, Frequently Asked Questions, developer topics, and a lot more. The Documentation Team helps oversee the wiki but you are invited to contribute content, as well.</p> <p>There are also books written about Joomla! You can find a listing of these books in the <a href="http://shop.joomla.org/" target="_blank" title="Joomla! Shop">Joomla! Shop</a>.</p>', '', 1, 4, 0, 25, '2008-08-09 08:33:57', 62, '', '2008-08-09 08:33:57', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 6, 'robots=\nauthor='),
(21, 'Joomla! Facts', 'joomla-facts', '', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 210,000 active registered Users on the <a href="http://forum.joomla.org" target="_blank" title="Joomla Forums">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/" target="_blank" title="JoomlaCode">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Well over 6,000,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>Nearly 4,000 extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" target="_blank" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li></ul>', '', 1, 4, 0, 30, '2008-08-09 16:46:37', 62, '', '2008-08-09 16:46:37', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 50, 'robots=\nauthor='),
(22, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>', '<p style="margin-bottom: 0in">In Joomla! 1.5, you''ll notice: </p>    <ul><li>     <p style="margin-bottom: 0in">       Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</p>   </li><li>     <p style="margin-bottom: 0in"> Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</p>   </li><li>     <p style="margin-bottom: 0in"> Extended integration of external applications through Web services and remote authentication such as the Lightweight Directory Access Protocol (LDAP)</p>   </li><li>     <p style="margin-bottom: 0in"> Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</p>   </li><li>     <p style="margin-bottom: 0in">       A more sustainable and flexible framework for Component and Extension developers</p>   </li><li>     <p style="margin-bottom: 0in">Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</p></li></ul>', 1, 4, 0, 29, '2008-08-11 22:13:58', 62, '', '2008-08-11 22:13:58', 62, 0, '0000-00-00 00:00:00', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 1, '', '', 0, 92, 'robots=\nauthor='),
(23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', 1, 4, 0, 25, '2008-08-11 04:22:14', 62, '', '2008-08-11 04:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 11, 'robots=\nauthor='),
(24, 'Content Layouts', 'content-layouts', '', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> <h2>Content </h2> <p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p> <h3>Blog Layout<br /> </h3> <p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p> <h3>Blog Archive Layout<br /> </h3> <p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p> <h3>List Layout<br /> </h3> <p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p> <h2>Wrapper</h2> <p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p> <h2>Content Parameters</h2> <p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', 1, 4, 0, 29, '2008-08-12 22:33:10', 62, '', '2008-08-12 22:33:10', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 5, '', '', 0, 70, 'robots=\nauthor='),
(25, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details, see <a href="http://www.joomla.org/about-joomla/technical-requirements.html" target="_blank" title="Joomla! Technical Requirements">Joomla! Technical Requirements</a>.', '', 1, 3, 0, 31, '2008-08-11 00:42:31', 62, '', '2008-08-11 00:42:31', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 25, 'robots=\nauthor='),
(26, 'Extensions', 'extensions', '', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p> <ul>   <li>Dynamic form builders</li>   <li>Business or organisational directories</li>   <li>Document management</li>   <li>Image and multimedia galleries</li>   <li>E-commerce and shopping cart engines</li>   <li>Forums and chat software</li>   <li>Calendars</li>   <li>E-mail newsletters</li>   <li>Data collection and reporting tools</li>   <li>Banner advertising systems</li>   <li>Paid subscription services</li>   <li>and many, many, more</li> </ul> <p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p><p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a> </p> <h3>Types of Extensions </h3><p>There are five types of extensions:</p> <ul>   <li>Components</li>   <li>Modules</li>   <li>Templates</li>   <li>Plugins</li>   <li>Languages</li> </ul> <p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.<br /> </p> <hr title="Components" class="system-pagebreak" /> <h3><img src="images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3> <p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<font face="courier new,courier">com_content</font>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<font face="courier new,courier">com_user</font>) is the mini-application  that handles User registration.</p> <p>Many of Joomla!''s core features are provided by the use of default Components such as:</p> <ul>   <li>Contacts</li>   <li>Front Page</li>   <li>News Feeds</li>   <li>Banners</li>   <li>Mass Mail</li>   <li>Polls</li></ul><p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p> <p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>  <hr title="Modules" class="system-pagebreak" /> <h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3> <p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p> <p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p> <p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout. </p> <h4>Displaying Modules</h4> <p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p> <p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<font face="courier new,courier">mod_mainmenu</font>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p> <h4>Newsflash Example</h4> <p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p> <p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>  <hr title="Plugins" class="system-pagebreak" /> <h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3> <p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <font face="courier new,courier">onGetEditorArea</font> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>  <hr title="Languages" class="system-pagebreak" /> <h3><img src="images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3> <p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles. </p> <p>More information on languages is available from the <br />   <a href="http://community.joomla.org/translations.html" target="_blank" title="Joomla! Translation Teams">http://community.joomla.org/translations.html</a></p>', '', 1, 4, 0, 29, '2008-08-11 06:00:00', 62, '', '2008-08-11 06:00:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 3, 'About Joomla!, General, Extensions', '', 0, 102, 'robots=\nauthor=');
INSERT INTO `bak_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 210,000 members, the Joomla! Discussion Forums at <a href="http://forum.joomla.org/" target="_blank" title="Forums">forum.joomla.org</a> are a great resource for both new and experienced users. Ask your toughest questions the community is waiting to see what you''ll do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Visit the <a href="http://forum.joomla.org/viewforum.php?f=514" target="_blank" title="Site Showcase">Site Showcase</a> section of our forum.</p><p><strong>Do you want to contribute?</strong></p><p>If you think working with Joomla is fun, wait until you start working on it. We''re passionate about helping Joomla users become contributors. There are many ways you can help Joomla''s development:</p><ul>	<li>Submit news about Joomla. We syndicate Joomla-related news on <a href="http://news.joomla.org" target="_blank" title="JoomlaConnect">JoomlaConnect<sup>TM</sup></a>. If you have Joomla news that you would like to share with the community, find out how to get connected <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</li>	<li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" target="_blank" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://docs.joomla.org/Filing_bugs_and_issues" target="_blank" title="Reporting Bugs">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://docs.joomla.org/Patch_submission_guidelines" target="_blank" title="Submitting Patches">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" target="_blank" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://www.joomla.org/about-joomla/the-project/working-groups.html" target="_blank" title="Joomla! working groups">Joomla Working Groups</a> and bring your personal expertise to the Joomla community. </li></ul><p>These are just a few ways you can contribute. See <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank" title="Contribute">Contribute to Joomla</a> for many more ways.</p>', '', 1, 4, 0, 30, '2008-08-12 16:50:48', 62, '', '2008-08-12 16:50:48', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 2, '', '', 0, 52, 'robots=\nauthor='),
(28, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" target="_blank" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" target="_blank" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', 1, 3, 0, 31, '2008-08-11 01:10:59', 62, '', '2008-08-11 01:10:59', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 3, '', '', 0, 5, 'robots=\nauthor='),
(29, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', '', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', 1, 3, 0, 32, '2008-08-11 03:11:38', 62, '', '2008-08-11 03:11:38', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 4, '', '', 0, 6, 'robots=\nauthor='),
(30, 'What languages are supported by Joomla! 1.5?', 'what-languages-are-supported-by-joomla-15', '', 'Within the Installer you will find a wide collection of languages. The installer currently supports the following languages: Arabic, Bulgarian, Bengali, Czech, Danish, German, Greek, English, Spanish, Finnish, French, Hebrew, Devanagari(India), Croatian(Croatia), Magyar (Hungary), Italian, Malay, Norwegian bokmal, Dutch, Portuguese(Brasil), Portugues(Portugal), Romanian, Russian, Serbian, Svenska, Thai and more are being added all the time.<br />By default the English language is installed for the Back and Front-ends. You can download additional language files from the <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla!Extensions Directory</a>. ', '', 1, 3, 0, 32, '2008-08-11 01:12:18', 62, '', '2008-08-11 01:12:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 8, 'robots=\nauthor='),
(31, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', '', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', 1, 3, 0, 27, '2008-08-11 09:12:55', 62, '', '2008-08-11 09:12:55', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 3, '', '', 0, 3, 'robots=\nauthor='),
(32, 'Where is the Static Content Item?', 'where-is-the-static-content', '', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', 1, 3, 0, 28, '2008-08-10 23:13:33', 62, '', '2008-08-10 23:13:33', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 6, '', '', 0, 5, 'robots=\nauthor='),
(33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', 1, 3, 0, 31, '2008-08-11 15:14:11', 62, '', '2008-08-11 15:14:11', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 2, '', '', 0, 6, 'robots=\nauthor='),
(34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', 1, 3, 0, 32, '2008-08-11 17:14:57', 62, '', '2008-08-11 17:14:57', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 6, 'robots=\nauthor='),
(35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', 1, 3, 0, 31, '2008-08-10 23:15:36', 62, '', '2008-08-10 23:15:36', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 18, 'robots=\nauthor='),
(36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', 1, 3, 0, 28, '2008-08-10 23:16:20', 62, '', '2008-08-10 23:16:20', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 4, 'robots=\nauthor='),
(37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', 1, 3, 0, 28, '2008-08-11 09:17:00', 62, '', '2008-08-11 09:17:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 5, '', '', 0, 4, 'robots=\nauthor='),
(38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is <a href="http://extensions.joomla.org/index.php?option=com_mtree&task=listcats&cat_id=1837&Itemid=35" target="_blank" title="Translations for Joomla!">Translations for Joomla!</a> on JED.</p>', '', 1, 3, 0, 32, '2008-08-11 17:18:14', 62, '', '2008-08-11 17:18:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, '', '', 0, 7, 'robots=\nauthor='),
(39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', 1, 3, 0, 27, '2008-08-11 09:19:01', 62, '', '2008-08-11 09:19:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 2, '', '', 0, 4, 'robots=\nauthor='),
(40, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', 1, 3, 0, 27, '2008-08-11 05:19:43', 62, '', '2008-08-11 05:19:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', 1, 1, 0, 3, '2008-08-12 00:17:31', 62, '', '2008-08-12 00:17:31', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 4, 'robots=\nauthor='),
(42, 'Newsflash 4', 'newsflash-4', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', 1, 1, 0, 3, '2008-08-12 00:25:50', 62, '', '2008-08-12 00:25:50', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', 1, 0, 0, 0, '2008-08-12 09:26:52', 62, '', '2008-08-12 09:26:52', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 43, 'robots=\nauthor='),
(44, 'Joomla! Security Strike Team', 'joomla-security-strike-team', '', '<p>The Joomla! Project has assembled a top-notch team of experts to form the new Joomla! Security Strike Team. This new team will solely focus on investigating and resolving security issues. Instead of working in relative secrecy, the JSST will have a strong public-facing presence at the <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a>.</p>', '<p>The new JSST will call the new <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a> their home base. The Security Center provides a public presence for <a href="http://developer.joomla.org/security/news.html" target="_blank" title="Joomla! Security News">security issues</a> and a platform for the JSST to <a href="http://developer.joomla.org/security/articles-tutorials.html" target="_blank" title="Joomla! Security Articles">help the general public better understand security</a> and how it relates to Joomla!. The Security Center also offers users a clearer understanding of how security issues are handled. There''s also a <a href="http://feeds.joomla.org/JoomlaSecurityNews" target="_blank" title="Joomla! Security News Feed">news feed</a>, which provides subscribers an up-to-the-minute notification of security issues as they arise.</p>', 1, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(45, 'Joomla! Community Portal', 'joomla-community-portal', '', '<p>The <a href="http://community.joomla.org/" target="_blank" title="Joomla! Community Portal">Joomla! Community Portal</a> is now online. There, you will find a constant source of information about the activities of contributors powering the Joomla! Project. Learn about <a href="http://community.joomla.org/events.html" target="_blank" title="Joomla! Events">Joomla! Events</a> worldwide, and see if there is a <a href="http://community.joomla.org/user-groups.html" target="_blank" title="Joomla! User Groups">Joomla! User Group</a> nearby.</p><p>The <a href="http://magazine.joomla.org/" target="_blank" title="Joomla! Community Magazine">Joomla! Community Magazine</a> promises an interesting overview of feature articles, community accomplishments, learning topics, and project updates each month. Also, check out <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">JoomlaConnect&#0153;</a>. This aggregated RSS feed brings together Joomla! news from all over the world in your language. Get the latest and greatest by clicking <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</p>', '', 1, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 5, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `bak_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bak_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_content_frontpage`
--

INSERT INTO `bak_content_frontpage` (`content_id`, `ordering`) VALUES
(45, 2),
(6, 3),
(44, 4),
(5, 5),
(9, 6),
(30, 7),
(16, 8);

-- --------------------------------------------------------

--
-- Table structure for table `bak_content_rating`
--

CREATE TABLE IF NOT EXISTS `bak_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bak_core_acl_aro`
--

INSERT INTO `bak_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `bak_core_acl_aro_groups`
--

INSERT INTO `bak_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bak_core_acl_aro_sections`
--

INSERT INTO `bak_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `bak_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_core_acl_groups_aro_map`
--

INSERT INTO `bak_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_log_items`
--

CREATE TABLE IF NOT EXISTS `bak_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bak_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_groups`
--

CREATE TABLE IF NOT EXISTS `bak_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_groups`
--

INSERT INTO `bak_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `bak_menu`
--

CREATE TABLE IF NOT EXISTS `bak_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `bak_menu`
--

INSERT INTO `bak_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=Welcome to the Frontpage\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 1),
(2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla! Documentation', 'joomla-documentation', 'http://docs.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'othermenu', 'Joomla! Community', 'joomla-community', 'http://community.joomla.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'othermenu', 'Joomla! Magazine', 'joomla-community-magazine', 'http://magazine.joomla.org/', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(16, 'othermenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 6, 'menu_image=-1\n\n', 0, 0, 0),
(17, 'othermenu', 'Administrator', 'administrator', 'administrator/', 'url', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'keyconcepts', 'Content Layouts', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'Joomla! Overview', 'joomla-overview', 'index.php?option=com_content&view=article&id=19', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', 'What''s New in 1.5?', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', 1, 27, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(40, 'keyconcepts', 'Extensions', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(43, 'keyconcepts', 'Example Pages', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'ExamplePages', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'ExamplePages', 'Section Table', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'ExamplePages', 'Category Blog', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'ExamplePages', 'Category Table', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', 1, 0, 4, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0),
(49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', 1, 0, 11, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_menu_types`
--

CREATE TABLE IF NOT EXISTS `bak_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bak_menu_types`
--

INSERT INTO `bak_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'othermenu', 'Resources', 'Additional links'),
(5, 'ExamplePages', 'Example Pages', 'Example Pages'),
(6, 'keyconcepts', 'Key Concepts', 'This describes some critical information for new Users.');

-- --------------------------------------------------------

--
-- Table structure for table `bak_messages`
--

CREATE TABLE IF NOT EXISTS `bak_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bak_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `bak_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_modules`
--

CREATE TABLE IF NOT EXISTS `bak_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `bak_modules`
--

INSERT INTO `bak_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmoduleclass_sfx=_menu\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Polls', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\ncache=1', 0, 0, ''),
(17, 'User Menu', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, ''),
(18, 'Login Form', '', 8, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, ''),
(19, 'Latest News', '', 4, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'cache=1', 1, 0, ''),
(20, 'Statistics', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, ''),
(21, 'Who''s Online', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0, ''),
(22, 'Popular', '', 6, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, ''),
(23, 'Archive', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Sections', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Newsflash', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0, ''),
(26, 'Related Items', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, ''),
(28, 'Random Image', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0, ''),
(30, 'Banners', '', 1, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(31, 'Resources', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, '', 1, 0, ''),
(38, 'Advertisement', '', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 1, 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n', 0, 0, ''),
(39, 'Example Pages', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(40, 'Key Concepts', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 62, '2008-10-25 20:15:17', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bak_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_modules_menu`
--

INSERT INTO `bak_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 1),
(17, 0),
(18, 1),
(19, 1),
(19, 2),
(19, 4),
(19, 27),
(19, 36),
(21, 1),
(22, 1),
(22, 2),
(22, 4),
(22, 27),
(22, 36),
(25, 0),
(27, 0),
(29, 0),
(30, 0),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bak_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `bak_newsfeeds`
--

INSERT INTO `bak_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 62, '2008-09-14 00:24:25', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:37', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:51', 2, 0),
(6, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:11', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:51', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_plugins`
--

CREATE TABLE IF NOT EXISTS `bak_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `bak_plugins`
--

INSERT INTO `bak_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 8, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_polls`
--

CREATE TABLE IF NOT EXISTS `bak_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `bak_polls`
--

INSERT INTO `bak_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `bak_poll_data`
--

CREATE TABLE IF NOT EXISTS `bak_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `bak_poll_data`
--

INSERT INTO `bak_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_poll_date`
--

CREATE TABLE IF NOT EXISTS `bak_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bak_poll_date`
--

INSERT INTO `bak_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `bak_poll_menu`
--

CREATE TABLE IF NOT EXISTS `bak_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_sections`
--

CREATE TABLE IF NOT EXISTS `bak_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bak_sections`
--

INSERT INTO `bak_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 14, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_session`
--

CREATE TABLE IF NOT EXISTS `bak_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_session`
--

INSERT INTO `bak_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('admin', '1316732047', 'b73ce72871dec6c40a44701b23ec1572', 0, 62, 'Super Administrator', 25, 1, '__default|a:8:{s:15:"session.counter";i:4;s:19:"session.timer.start";i:1316732012;s:18:"session.timer.last";i:1316732019;s:17:"session.timer.now";i:1316732047;s:22:"session.client.browser";s:67:"Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:3:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}s:10:"com_cpanel";a:1:{s:4:"data";O:8:"stdClass":1:{s:9:"mtupgrade";O:8:"stdClass":1:{s:7:"checked";b:1;}}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"62";s:4:"name";s:13:"Administrator";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"password";s:65:"14cea02d680f3c748353061ed856a8de:zw6L2Lwnri5CsIEyvj0PLnMmIWyBfa1H";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2011-09-22 15:52:58";s:13:"lastvisitDate";s:19:"0000-00-00 00:00:00";s:10:"activation";s:0:"";s:6:"params";s:0:"";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:60:"C:\\xampp\\htdocs\\self\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"3abcedc1791a4294fafa7e787945f99b";}'),
('', '1316732028', '2dbcdee9785c998c9d9869284ac6653d', 1, 0, '', 0, 0, '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1316732028;s:18:"session.timer.last";i:1316732028;s:17:"session.timer.now";i:1316732028;s:22:"session.client.browser";s:67:"Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:60:"C:\\xampp\\htdocs\\self\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"a9def62bc9d4c112a46cf44aaee673d0";}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_stats_agents`
--

CREATE TABLE IF NOT EXISTS `bak_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_templates_menu`
--

CREATE TABLE IF NOT EXISTS `bak_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_templates_menu`
--

INSERT INTO `bak_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('rhuk_milkyway', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_users`
--

CREATE TABLE IF NOT EXISTS `bak_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `bak_users`
--

INSERT INTO `bak_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'admin@admin.com', '14cea02d680f3c748353061ed856a8de:zw6L2Lwnri5CsIEyvj0PLnMmIWyBfa1H', 'Super Administrator', 0, 1, 25, '2011-09-22 15:52:58', '2011-09-22 22:53:38', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_weblinks`
--

CREATE TABLE IF NOT EXISTS `bak_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bak_weblinks`
--

INSERT INTO `bak_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Blog', '', 'blog', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(2, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'YOOtheme Links', '', 'yootheme-links', '', 'com_weblinks', 'left', '', 1, 63, '2011-10-11 06:46:10', NULL, 1, 0, 0, ''),
(4, 0, 'Website', '', 'website', '', '2', 'left', '', 1, 63, '2011-10-11 13:12:20', NULL, 1, 0, 0, ''),
(5, 0, 'About us', '', 'about-us', '', '3', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(6, 0, 'SEO', '', 'seo-search-engine-optimization', '', '2', 'left', '<p>Se</p>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(7, 0, 'Digital Printing', '', 'digital-printing', '', '2', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(8, 0, 'Print Ad Solution', '', 'print-ad-solution', '', '2', 'left', '<p>inting ad Solution</p>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=1\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=1\nfeed_summary=0\nfilter_groups=29|18|19|20|21|30|23|24\nfilter_type=BL\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=en-GB\nsite=en-GB\n\n', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(36, 'Widgetkit', '', 0, 0, 'option=com_widgetkit', 'Widgetkit', 'com_widgetkit', 0, 'components/com_widgetkit/images/widgetkit_16.png', 0, '{"mediaplayer_enable":"1","mediaplayer_selector":"video,audio"}', 1),
(37, 'JCE', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE', 'com_jce', 0, 'components/com_jce/media/img/menu/logo.png', 0, '', 1),
(38, 'WF_MENU_CPANEL', '', 0, 37, 'option=com_jce', 'WF_MENU_CPANEL', 'com_jce', 0, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 1),
(39, 'WF_MENU_CONFIG', '', 0, 37, 'option=com_jce&view=config', 'WF_MENU_CONFIG', 'com_jce', 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 1),
(40, 'WF_MENU_PROFILES', '', 0, 37, 'option=com_jce&view=profiles', 'WF_MENU_PROFILES', 'com_jce', 2, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 1),
(41, 'WF_MENU_INSTALL', '', 0, 37, 'option=com_jce&view=installer', 'WF_MENU_INSTALL', 'com_jce', 3, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 1),
(43, 'ZOO', 'option=com_zoo', 0, 0, 'option=com_zoo', 'ZOO', 'com_zoo', 0, 'components/com_zoo/assets/images/zoo_16.png', 0, '', 1),
(44, 'eXtplorer', 'option=com_extplorer', 0, 0, 'option=com_extplorer', 'eXtplorer', 'com_extplorer', 0, '../administrator/components/com_extplorer/images/joomla_x_icon.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'John Q. Public', 'john-q-public', 'Chief Information Officer', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1-212-555555-1', '1-212-555555-2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.', '', NULL, 'email@0.0.0.0', 0, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 2, 0, '', ''),
(2, 'Jane Q. Public', 'jane-q-public', 'Chief Information Officer', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1-212-555555-1', '1-212-555555-2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.', '', NULL, 'email@0.0.0.0', 0, 1, 0, '0000-00-00 00:00:00', 2, 'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 2, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Shelf Theme available now', 'master-theme', '', '<img width="540" height="200" class="size-auto align-center" alt="Mobile Devices" src="images/yootheme/home_news.jpg" />\r\n\r\n<p>Welcome Shelf, the August 2011 theme release! This stunning new theme design comes with a big presentation area for your products. Choose from 8 style variations with high resolution background images and combine them with 5 different colors to create your own custom website look. </p>\r\n<p>That''s not all, by using the new <a href="index.php?option=com_content&amp;view=article&amp;id=19&amp;Itemid=77">Widgetkit Slideset</a> you can take your product showcase to the next level. The slideset allows you display multiple item sets and uses smooth effects while looping through them.</p>', '', -1, 0, 0, 0, '2011-02-11 13:15:26', 62, '', '2011-07-29 10:05:18', 62, 0, '0000-00-00 00:00:00', '2011-02-11 13:15:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 21, 0, 18, '', '', 0, 4500, 'robots=\nauthor='),
(2, 'Features', 'features', '', '<p>This theme utilizes the latest features of the fast and slick Warp theme framework. It comes with a broad range of layout and <a href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=3">module variations</a> as well as a neat <a href="index.php?option=com_content&amp;view=article&amp;id=9&amp;Itemid=4">typography</a> to style your content. Read on to learn more about this theme and its features:</p>\r\n\r\n<ul class="check">\r\n	<li>Available for Joomla 1.5, 1.7 and Wordpress</li>\r\n	<li>8 style variations available</li>\r\n	<li>Choose from 5 colors and 10 fonts</li>\r\n	<li>3 module styles combinable with 4 badges and 7 icons</li>\r\n	<li>Custom style for Widgetkit Slideset and Slideshow</li>\r\n	<li>Flexible template and column widths</li>\r\n	<li>All Warp framework features are available</li>\r\n</ul>\r\n\r\n<h2>Easy Installation and Customization</h2>\r\n<div class="box-content">\r\n	<div class="grid-block grid-gutter">\r\n		<div class="grid-box width50">\r\n			<div>\r\n				<img class="align-left" src="images/yootheme/features_icon_demo_package.png" width="42" height="46">\r\n				<div class="bfc-o">\r\n					<h3 class="remove-margin">Demo Packages</h3>\r\n					<p class="remove-margin-b">We provide demo packages with the theme sample data for Joomla and Wordpress to get you started right.</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class="grid-box width50">\r\n			<div>\r\n				<img class="align-left" src="images/yootheme/features_icon_image_sources.png" width="42" height="42">\r\n				<div class="bfc-o">\r\n					<h3 class="remove-margin">Image Sources</h3>\r\n					<p class="remove-margin-b">Sliced and editable Adobe Fireworks image source files are available to customize the theme easily.</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<h2>Theme Styles</h2>\r\n<p>We provide different style variations of the default theme. In addition to these styles we added several other style settings like colors and fonts. Combining the different style options allows you to create your own unique theme design.</p>\r\n<p><img class="size-auto" src="images/yootheme/features_style_settings.png" height="155" width="695" alt="Combinable Styles" title="" /></p>\r\n\r\n<h2>Theme Profiles</h2>\r\n<p>We created some nice theme profiles using the different styles, colors and fonts, you can choose from in the theme administration. You can create your own profiles and even assign them to different menu items. Click on one of the profile images to load it.</p>\r\n<div class="bfc-o text-center">\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=2&amp;profile=wood">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile01.jpg" width="200" height="150" alt="Load Profile Wood" title="Load Profile Wood" />\r\n			<figcaption>Wood</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=2&amp;profile=Red">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile02.jpg" width="200" height="150" alt="Load Profile Red" title="Load Profile Red" />\r\n			<figcaption>Red</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=2&amp;profile=tarmac">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile03.jpg" width="200" height="150" alt="Load Profile Tarmac" title="Load Profile Tarmac" />\r\n			<figcaption>Tarmac</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=2&amp;profile=space">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile04.jpg" width="200" height="150" alt="Load Profile Space" title="Load Profile Space" />\r\n			<figcaption>Space</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=2&amp;profile=blue">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile05.jpg" width="200" height="150" alt="Load Profile Blue" title="Load Profile Blue" />\r\n			<figcaption>Blue</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=2&amp;profile=wall">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_profile06.jpg" width="200" height="150" alt="Load Profile Wall" title="Load Profile Wall" />\r\n			<figcaption>Wall</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=2&amp;profile=white">\r\n		<figure class="remove-margin">\r\n			<img class="size-auto" src="images/yootheme/features_profile07.jpg" width="200" height="150" alt="Load Profile White" title="Load Profile White" />\r\n			<figcaption>White</figcaption>\r\n		</figure>\r\n	</a>\r\n	<a class="align-left" href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=2&amp;profile=black">\r\n		<figure class="remove-margin">\r\n			<img class="size-auto" src="images/yootheme/features_profile08.jpg" width="200" height="150" alt="Load Profile Black" title="Load Profile Black" />\r\n			<figcaption>Black</figcaption>\r\n		</figure>\r\n	</a>\r\n</div>\r\n\r\n<h2>Theme Layout</h2>\r\n<p>This theme comes with slight changes to the default Warp6 module layout: A new position called "logo-footer" is available, the position "headerbar" is removed this time.</p><p>Blue marked module positions allow to choose a module layout which defines the module alignment and proportions: <em>equal</em>, <em>double</em> or <em>stack</em>. You can easily add your own module layouts. The two available sidebars, highlighted in red, can be switched to the left or right side and their widths can easily be set in the theme administration. For modules in the blue and red positions you can choose different module styles. Take a look at the <a href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=3">module variations</a> page to get an overview.</p>\r\n\r\n<div class="grid-block">\r\n	<div class="grid-box width50">\r\n		<figure class="remove-margin">\r\n			<img class="size-auto" src="images/yootheme/features_module_positions.png" width="300" height="388" alt="Module Positions" title="Module Positions" />\r\n			<figcaption>Module Positions</figcaption>\r\n		</figure>\r\n	</div>\r\n	<div class="grid-box width50">\r\n		<figure class="remove-margin-t">\r\n			<img class="size-auto" src="images/yootheme/features_module_layouts.png" width="300" height="176" alt="Module Layouts" title="Module Layouts" />\r\n			<figcaption>Module Layouts</figcaption>\r\n		</figure>\r\n		<figure class="remove-margin-b">\r\n			<img class="size-auto" src="images/yootheme/features_column_layouts.png" width="300" height="172" alt="Colum Layouts" title="Column Layouts" />\r\n			<figcaption>Column Layouts</figcaption>\r\n		</figure>\r\n	</div>\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h2>Special Features</h2>\r\n\r\n<p>Shelf theme comes with some unique features we want to introduce to you. Have fun!</p>\r\n\r\n<h3>Custom Widgetkit Slideshow &amp Slideset Styling</h3>\r\n\r\n<p>Widgetkit Slideshows and Slidesets published on top-a position will automatically be displayed in a fitting custom style.</p>\r\n\r\n<h3>Additional Module Icon</h3>\r\n\r\n<p>This time you can use an additional module icon called "comment". Use the module class suffix <code>icon-comment</code> (Joomla) or select it in the widget settings (WordPress).</p>', '', 1, 0, 0, 0, '2011-02-13 17:03:25', 62, '', '2011-07-29 09:12:03', 62, 63, '2011-10-11 06:24:10', '2011-02-13 17:03:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 63, 0, 17, '', '', 0, 431, 'robots=\nauthor='),
(3, 'Design & Pembuatan Web', 'design-a-pembuatan-web', '', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Internet memberikan peluang yang sangat besar bagi para pelaku bisnis dan mereka tidak akan mengabaikan kesempatan ini, dimana dibutuhkan media web untuk memanfaatkan keuntungan dari dunia online tersebut, dan yang terpenting adalah bagaimana bersaing dengan perusahaan lain di era informasi global. Disinilah kami hadir untuk memberikan keahlian kami guna memecahkan semua masalah anda seputar dunia online.</p>\r\n<p><br />Kami memberikan berbagai macam solusi online yang dibutuhkan oleh perusahaan anda guna menyatukan visi bisnis anda menjadi perusahaan yang terdepan dengan menggunakan internet sebagai masa depan proses bisnis anda.</p>\r\n<p>Dalam bidang pembuatan web kami telah banyak dipercaya oleh berbagai macam perusahaan atau individu, dimana dalam proses pembuatan kami memulainya dari konsep hingga menjadi sebuah web yang layak online, atau mengrekonstruksi ulang website anda dengan menggunakan teknologi terkini yang kami miliki sehingga web site anda akan sangat membantu bisnis anda.</p>\r\n<p>Apakah anda tetap ingin menjadi yang tertinggal didunia yang kian pesat &amp; berkembang, segera tinggalkan cara tradisional dan berkembanglah bersama kami di dunia online.</p>\r\n<p>&nbsp;</p>', '', 1, 1, 0, 1, '2011-03-15 13:55:07', 62, '', '2011-10-07 08:01:09', 62, 0, '0000-00-00 00:00:00', '2011-03-15 13:55:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 6, '', '', 0, 59, 'robots=\nauthor='),
(4, 'Konsultasi & Analisa Pasar', 'konsultasi-a-analisa-pasar', '', '<p><a href="index.php?option=com_content&amp;view=article&amp;id=4:beautiful-icons&amp;catid=1:blog&amp;Itemid=21">\r\n<p>Setiap perusahaan memiliki proses bisnis yang sangat beragam dan berbeda - beda satu sama lainnya, dimana teknologi informasi hadir guna memecahkan masalah yang terjadi dalam proses bisnis tersebut, tanpa konsep yang matang akan menyebabkan teknologi informasi tersebut menjadi lemah dan tidak berdaya guna.</p>\r\n<p><br />Kami hadir untuk menjawab tangtangan tersebut dimana kami dapat memberikan konsultasi dan analisa terhadap pasar sehingga perusahaan anda dapat terhindar dari resiko yang mungkin dapat terjadi.</p>\r\n<p>Analisa yang kami lakukan menggunakan media online dimana kami telah berpengalaman dalam menganalisa beraneka ragam data yang masih harus diolah sehingga menjadi data yang siap pakai dan berguna bagi perusahaan anda.</p>\r\n</a></p>\r\n<p>&nbsp;</p>', '', 1, 1, 0, 1, '2011-03-20 13:56:08', 62, '', '2011-10-07 08:15:12', 62, 0, '0000-00-00 00:00:00', '2011-03-20 13:56:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 16, 0, 5, '', '', 0, 287, 'robots=\nauthor='),
(5, 'Nilai lebih link dalam sebuah artikel', 'nilai-lebih-link-dalam-sebuah-artikel', '', '<p>Link yang berada di dalam artikel dalam sebuah website akan dihargai lebih oleh Google. Sebagai contoh www.porosnusantara.com .<br />Meskipun link dari www.porosnusantara.com (Page Rank 5) tidak banyak, tetapi karena link berada di dalam beberapa artikel, maka Google memberikan nilai yang lebih kepada www.porosnusantara.com. Dengan cara ini page rank dari www.porosnusantara.com naik dari 0 menjadi 4.</p>\r\n<p>Google berusaha membuat penilaian mengenai web seakurat mungkin. Google tahu mengenai jual beli link, dan dia tidak mau ditipu mengenai hal itu. Google sangat menghargai website yang menghadirkan artikel-artikel yang baik. Itu sebabnya mengapa link di dalam sebuah artikel akan mempunyai nilai lebih.</p>', '', 1, 1, 0, 1, '2011-02-28 13:57:44', 62, '', '2011-10-07 08:04:59', 62, 0, '0000-00-00 00:00:00', '2011-02-28 13:57:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 7, '', '', 0, 67, 'robots=\nauthor='),
(31, 'Strategi Desain Web Sukses', 'strategi-desain-web-sukses', '', '<p>&nbsp;</p>\r\n<p>Author: Yudha Yudhanto · Published: February 17, 2009 · Category: Grafik, Disain dan Publishing, Internet dan Web</p>\r\n<p>Para pakar design mengatakan “Webdesign isn’t art”. Kenapa demikian? Karena hasil karya tersebut merupakan kompilasi dari berbagai hasil keahlian dan perpaduan gambar serta layout. Kesatuan semua elemen tersebut tidak hanya menghasilkan sebuah estetika yang menyenangkan tetapi juga dapat menjalin sebuah komunikasi interaktif dan juga adanya fasilitas kemudahan untuk mengakses isi web tersebut.</p>\r\n<p>Nah inilah saatnya para webdesigner membutuhkan “Strategi”. Sebuah strategi dimana kita harus bisa menggabungkan cita-cita atau harapan sebuah organisasi ke dalam sebuah design.</p>\r\n<p>Sebuah design yang cerdas dan folus tidak hanya kelihatan fantastic atau ngetrend. Tetapi perlu dipikirkan focus dari tujuan web tersebut dibuat. Contohnya : Sebuah web jualan computer atau komunitas game pasti akan dibanjiri file-file image terlihat lebih bagus. Sebuah blog yang berisi opini/pengalaman pribadi tidak harus dengan design yang wahh..bisa jadi cukup dibuat dengan simple dengan warna yang sedikit asalkan unik, ringan dan mudah dalam menjelajah dan mengomentari blognya.</p>\r\n<p>Implementasi Design Webmaster</p>\r\n<p>Kita dapat menggunakan 6 langkah dibawah ini sebagai bagian dari strategi dalam sebuah design web:</p>\r\n<p>1. Menetapkan Tujuan Sebuah Web</p>\r\n<p>Salah satu yang harus dipastikn ketika akan mengerjalan sebuah pekerjaan webdesain adalah tujuan akhir dari sang pemilik web. Apakah yang ingin dicapai ketika menginginkan sebuah web baru atau redesain web? Apa yang menjadi tjuan utama dari web tersebut. JIka ternyata client anda belum tahu tentang hal tersebut. Maka anda harus duduk bersama dan berdiskusi untuk menetapkan makna dari design web yang telah dibuat.</p>\r\n<p>Ingatlah! Bahwa website bukanlah bagian dari sebuah seni, tetapi merupakan tampilan yang menampung berbagai fungsi dari sebuah server. Fungsi yang dimaksud bisa berarti : menjual produk, berita, hiburan, olahraga, diary, komunitas dsb. Khusus untuk pekerjaan desain ulang (redesign), tanyakan kenapa dilakukan? Sekedar wajah baru, menaikkan jumlah pengunjung, mengundang partisipasi user, menaikkan jumlah user yang melakukan register.</p>\r\n<p>2. Identifikasi target audience yang melihat</p>\r\n<p>Siapa yang disasar sebagai calon pengunjung sangat berpengaruh kepada tampilan dan fungsi sebuah web. Ada beberapa aspek desain yang akan mempengaruhi design web tersebut, seperti umur, kelamin, profesi dan kompetensi. Sebagai contoh, website yang berisi game untuk kaum muda sangat membutuhkan desain yang “wah” dengan aturan yang lebih detail mengingat audiencenya merupakan user cerdas.</p>\r\n<p>Dua web diatas (jQuery.com dan Disney.com) diganti tampilannya, disesuaikan pasar yang akan mengunjungi web tersebut.</p>\r\n<p>3. Menentukan Brand dari sebuah web</p>\r\n<p>Banyak sekali webdesigner memakai jalan pintas untuk mencari inspirasi yang didasarkan pada tren desain yang ada. Tombol glossy, gradient dan efek refleksi bisa jadi sangat cocok untuk beberpa web. Tetapi bisa jadi tidak cocok dengan Brand yang sedang diusung.</p>\r\n<p>Memikirkan warna, perasaan yang akan disampaikan semestinya harus memberikan kekuatan untuk Brand web tersebut.</p>\r\n<p>Web Carbonica diatas bermaksud mengajak mengurangi emisi karbon. Cantik sekali, designer menggunakan gambar dan texture kertas hasil recycle. Warna juga diambil dari warna bumi yang hijau dan coklat.</p>\r\n<p>Design restaurantica bertujuan agar pengunjung serasa didalam restaurant dengan segal pernak-perniknya.</p>\r\n<p>4. Tujuan Akhir Desain</p>\r\n<p>Anda sudah mengetahui kegunaan web,membuat target, identifikasi calon user dan menetapkan brand. Pertanyaanya adalah ; Bagaimana mmembuat desain yang selaras dengan strategi anda?? Mudahnya lihat contoh berikut ini :</p>\r\n<p>* Tujuan utama saya adalah menarik user untuk mendaftar (subscriber) ke dalam web yang kita desain. Maka setidaknya ada 3 langkah untuk mendukung target tersebut :<br />Persingkat text atau keterangan. Jangan gunakan bahasa terlalu detail sehingga membingungkan pengunjung.<br />Perjelas tombol atau kolom ‘pendaftaran’ dengan warna atau gambar khusus sehingga mudah untuk ditemukan.<br />Persingkat item-item registrasi. Calon pendaftar hanya mengisi yang penting-penting saja. Untuk formulir lebih detail bisa dilakukan ketika sudah mendaftar di lain waktu.</p>\r\n<p>Bagaimana cara menerapkan design strategi untuk brand dan audience?? Jika website tersebut focus di ‘entertainment’ maka buatlah design yang ‘experience’. Bebas menggunakan banyak warna dan gambar untuk menajamkan design. Jika web yang dibuat focus kepada penyampaian informasi misalnya blog, atau majalah. Maka buatlah dengan efisien dan menarik. Navigasinya jelas dan tidak membingungkan.</p>\r\n<p>Stubmatic (Layanan tiket online) mengutamakan gambar sebagai penjelasan. Halaman sign-up ada di semua halaman.</p>\r\n<p>TechCrunch (blog technologi) dengan setting ideal</p>\r\n<p><br />5. Tool Analysis Target</p>\r\n<p>Web sudah jadi dan bisa dinikmati. Ini saatnya nuntuk melihat atau mengukur target kesuksesan. Jika anda menginginkan user pendaftar sebanyak-banyaknya, maka lihatlah perubahan ketika design dirubah. Jika itu sebuah blog, silahkan cek di RSS statistiknya. Jika ingin mengetahui kadar interaksi dengan pengunjung, lihatlah berapa banyak posting komentar atau posting feedback yang dibuat.</p>\r\n<p>Anda bisa menggunakan Google Analytics untuk membantu anda untuk menganalisis kesusksesan sebuah web.</p>\r\n<p>6. Kaizen</p>\r\n<p>Sebuah filosofi dari Jepang, yaitu kai artinya perubahan dan zen artinya baik. Continuous Improvement adalah inti dari Kaizen. Ketika bekerja dalam dunia web, kita harus berpikir bahwa yang sudah terpublish tidak ada versi finalnya. Kita akan selalu melakukan perbaikan terus-menerus sampai sempurna. Ide perbaikan bisa dari kita sendiri dan bisa juga menjaring masukan dari pengunjung.</p>\r\n<p>Semoga bermanfaat!</p>\r\n<p>&nbsp;</p>', '', 1, 1, 0, 1, '2011-10-07 08:24:52', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-10-07 08:24:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 178, 'robots=\nauthor='),
(6, 'Pengertian Website', 'pengertian-website', '', '<p><a href="index.php?option=com_content&amp;view=article&amp;id=6:free-social-icons&amp;catid=1:blog&amp;Itemid=21">\r\n<p>Website dapat diartikan sebagai kumpulan halaman-halaman yang digunakan untuk mempublikasikan informasi berupa teks, gambar dan program multimedia lainnya berupa animasi (gambar gerak, tulisan gerak), suara, dan atau gabungan dari semuanya itu baik yang bersifat statis maupun dinamis yang membentuk satu rangkaian bangunan yang saling terkait antara satu page dengan page yang lain yang sering disebut sebagai hyperlink.Atau,<br />Terminologi website adalah kumpulan dari halaman-halaman situs, yang biasanya terangkum dalam sebuah domain atau subdomain, yang tempatnya berada didalam World Wide Web (WWW) di Internet. Sebuah web page adalah dokumen yang ditulis dalam format HTML (Hyper Text Markup Language), yang hampir selalu bisa diakses melalui HTTP, yaitu protokol yang menyampaikan informasi dari server website untuk ditampilkan kepada para pemakai melalui web browser. Semua publikasi dari website-website tersebut dapat membentuk sebuah jaringan informasi yang sangat besar.</p>\r\n<p>Halaman-halaman dari website akan bisa diakses melalui sebuah URL yang biasa disebut Homepage. URL ini mengatur halaman-halaman situs untuk menjadi sebuah hirarki, meskipun, hyperlink-hyperlink yang ada di halaman tersebut mengatur para pembaca dan memberitahu mereka sususan keseluruhan dan bagaimana arus informasi ini berjalan.</p>\r\n<p>Beberapa website membutuhkan subskripsi (data masukan) agar para user bisa mengakses sebagian atau keseluruhan isi website tersebut. Contohnya, ada beberapa situs-situs bisnis, situs-situs e-mail gratisan, yang membutuhkan subkripsi agar kita bisa mengakses situs tersebut.</p>\r\n</a></p>', '', 1, 1, 0, 1, '2011-01-14 13:58:48', 62, '', '2011-10-07 08:17:56', 62, 0, '0000-00-00 00:00:00', '2011-01-14 13:58:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 8, '', '', 0, 81, 'robots=\nauthor='),
(14, 'Widgetkit', 'widgetkit', '', '<p>Widgetkit is the next generation tool set for Joomla and WordPress. This toolkit is the first of its kind! It provides a simple and user-friendly way to enrich your websites experience with widgets like Slideshow, Lightbox, Spotlight and Twitter. All widgets make use of modern web technologies like HTML5 markup, CSS3 features and jQuery based JavaScripts. Widgetkit also works on iPads, iPhones and Android phones or tablets. It supports touch gestures and makes use of smooth CSS3 animations. Here is a short feature roundup:</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Available for WordPress, Joomla 1.5 and 1.6</li>\r\n	<li>All widgets can work stand-alone</li>\r\n	<li>Use shortcodes to show widgets anywhere</li>\r\n	<li>Clean and lightweight code</li>\r\n	<li>Semantic HTML5 markup</li>\r\n	<li>Asset file Minification and Compression</li>\r\n	<li>Supports touch gestures for mobile devices</li>\r\n	<li>Uses hardware accelerated CSS3 animations</li>\r\n	<li>Build on HTML5, CSS3, PHP 5.2+, jQuery 1.5+</li>\r\n</ul>\r\n\r\n<h2>How It Works</h2>\r\n\r\n<p>Widgetkit basically acts as a platform for all our widgets. It installs as a single component in Joomla 1.5 and Joomla 1.6 or as a plugin in WordPress 3.x. The Widgetkit dashboard presents you an overview of all widgets. You can create, edit or delete all widgets and their content in one place. And after you have created the content for your first widget you can either use a shortcode or a module to display your widget anywhere on your website. In fact you can do both because once have you created a widget you are able to display it multiple times and reuse it on different parts of your website.</p>', '', 1, 0, 0, 0, '2011-06-08 10:58:46', 62, '', '2011-06-08 10:59:45', 62, 63, '2011-10-11 06:25:16', '2011-06-08 10:58:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 11, '', '', 0, 53, 'robots=\nauthor='),
(8, 'Dummy Content', 'dummy-content', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 1, 0, 0, 0, '2011-02-18 11:09:04', 62, '', '0000-00-00 00:00:00', 0, 63, '2011-10-11 06:24:24', '2011-02-18 11:09:04', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 16, '', '', 0, 279, 'robots=\nauthor='),
(7, 'Manfaat Promosi Website', 'manfaat-promosi-website', '', '<p><a href="index.php?option=com_content&amp;view=article&amp;id=7:joomla-templates&amp;catid=1:blog&amp;Itemid=21">\r\n<p>Hal yang paling anda butuhkan setelah website anda jadi adalah pengunjung website. Tanpa adanya pengunjung website anda hanyalah akan menjadi seperti sebuah file yang tersimpan di komputer biasa yang tidak pernah diakses. Semakin banyak jumlah pengunjung website anda maka itu artinya semakin banyak pula kesempatan anda untuk memperoleh keuntungan dari website anda.</p>\r\n<p>Berikut ini adalah cara-cara yang bisa anda pakai untuk bisa menghasilkan pengunjung untuk website anda :</p>\r\n<p>* Promosikan website anda di situs - situs iklan gratis yang jumlahnya sangat banyak sekali di internet. Gunakan searh engine dibawah ini dengan keyword yang berbeda-beda untuk bisa memberikan hasil pencarian yang cukup variatif. Contoh keyword yang bisa anda pakai adalah : Situs iklan, iklan gratis, iklan baris, promosi gratis dll.', '</p>\r\n<p>* Daftarkan URL website anda ke berbagai search engine utama seperti Google, yahoo, MSN, Lycos, Altavista dll. Gunakan keyword di bawah ini untuk mencari website layanan submit dengan keyword : free submit website.</p>\r\n<p>* Mengadakan kerjasama dengan website lain yang sejenis untuk saling bertukar link.</p>\r\n<p>* Membuat back link di website lain yang menerima daftar katalog website. Untuk mencari website yang menyediakan layanan seperti ini anda dapat menggunkan keyword: katalog website, tambah situs, tambah URL, dll.</p>\r\n<p>* Menggunakan kata yang tepat dibagian judul website dan deskripsi website anda akan sangat banyak membantu website anda untuk dapat muncul di halaman-halaman awal hasil pencarian search engine.</p>\r\n</a></p>\r\n<p>&nbsp;</p>', 1, 1, 0, 1, '2011-04-12 13:55:07', 62, '', '2011-10-07 07:53:17', 62, 63, '2011-10-08 05:50:53', '2011-04-12 13:55:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 19, 0, 3, '', '', 0, 337, 'robots=\nauthor='),
(9, 'Typography', 'typography', '', '<p>You can create some beautiful content by using some simple HTML elements. The Warp theme framework offers some neat styles for all HTML elements and a great set of CSS classes to style your content. Basic HTML is very easy to learn and this small guide shows you how to use all styles provided by the Warp framework.</p>\r\n\r\n<h2>Basic HTML Elements</h2>\r\n\r\n<p>Here is a short demonstration of text-level semanticts. The &lt;p&gt; element creates a new paragraph. It will have some space before and after itself. To turn your text into hypertext just use the <a href="#">&lt;a&gt; element</a>.</p>\r\n\r\n<h3>Text-Level Semantics</h3>\r\n\r\n<p>You can emphasize text using the <em>&lt;em&gt; element</em> or to imply any extra importance the <strong>&lt;strong&gt; element</strong>. Highlight text with no semantic meaning using the <mark>&lt;mark&gt; element</mark>. Markup document changes like inserted or deleted text with the <del>&lt;del&gt; element</del> or <ins>&lt;ins&gt; element</ins>. To define an abbreviation use the <abbr title="Abbreviation Element">&lt;abbr&gt; element</abbr> and to define a definition term use the <dfn title="Defines a definition term">&lt;dfn&gt; element</dfn>.</p>\r\n\r\n<h3>Short List with Links</h3>\r\n\r\n<ul>\r\n	<li><a href="http://www.yootheme.com" target="_blank">YOOtheme</a> - Premium Joomla Templates and WordPress Themes</li>\r\n	<li><a href="http://www.yootheme.com/warp" target="_blank">Warp Framework</a> - Fast and Slick Theme Framework</li>\r\n	<li><a href="http://www.yootheme.com/zoo" target="_blank">ZOO</a> - Content Application Builder</li>\r\n	<li><a href="http://www.yootheme.com/icons" target="_blank">Stock Icons</a> - For Web and Print Projects</li>\r\n</ul>\r\n\r\n<h3>Quotations and Code</h3>\r\n\r\n<p>Inline quotations can be defined by using the <q>&lt;q&gt; element</q>.</p>\r\n\r\n<blockquote>The &lt;blockquote&gt; element defines a long quotation which also creates a new block by inserting white space before and after the blockquote element.</blockquote>\r\n\r\n<p>To define a short inline computer code use the <code>&lt;code&gt; element</code>. For a larger code snippet use the &lt;pre&gt; element which defines preformatted text. It creates a new text block which preserves both spaces and line breaks.</p>\r\n\r\n<pre>\r\npre {\r\n    margin: 15px 0;\r\n    padding: 10px;\r\n    font-family: "Courier New", Courier, monospace;\r\n    font-size: 12px;\r\n    line-height: 18px;\r\n    white-space: pre-wrap;\r\n}\r\n</pre>\r\n\r\n<small>Use the &lt;small&gt; element for side comments and small print.</small>\r\n\r\n<hr />\r\n\r\n<h2>Useful CSS Classes</h2>\r\n\r\n<p>Here is a short demonstration of all style related CSS classes provided by the Warp framework.</p>\r\n\r\n<h3>Highlight Content</h3>\r\n\r\n<p class="dropcap">Drop caps are the first letter of a paragraph which are displayed bigger than the rest of the text. You can create a drop cap using the CSS class <code>dropcap</code>. To emphasize text with some small boxes use <em class="box">&lt;em&gt; element</em> with the CSS class <code>box</code>.</p>\r\n\r\n<div class="box-content">This simple box is intended to group large parts of your content using the CSS class <code>box-content</code>.</div>\r\n<div class="box-note">This is a simple box to highlight some text using the CSS class <code>box-note</code>.</div>\r\n<div class="box-info">This is a simple box with useful information using the CSS class <code>box-info</code>.</div>\r\n<div class="box-warning">This is a simple box with important notes and warnings using the CSS class <code>box-warning</code>.</div>\r\n<div class="box-hint">This is a simple box with additional hints using the CSS class <code>box-hint</code>.</div>\r\n<div class="box-download">This is a simple box with download information using the CSS class <code>box-download</code>.</div>\r\n\r\n<p>Use the CSS class <code>dotted</code> to create a dotted horizontal rule.</p>\r\n\r\n<hr class="dotted" />\r\n\r\n<h3>Tables</h3>\r\n\r\n<p>Create a zebra stripped table using using the CSS class <code>zebra</code>.</p>\r\n\r\n<table class="zebra">\r\n	<caption>Table caption</caption>\r\n	<thead>\r\n		<tr>\r\n			<th>Table Heading</th>\r\n			<th>Table Heading</th>\r\n			<th class="center">Table Heading</th>\r\n		</tr>\r\n	</thead>\r\n	<tfoot>\r\n		<tr>\r\n			<td>Table Footer</td>\r\n			<td>Table Footer</td>\r\n			<td class="center">Table Footer</td>\r\n		</tr>\r\n	</tfoot>\r\n	<tbody>\r\n		<tr class="odd">\r\n			<td>Table Data</td>\r\n			<td>Table Data</td>\r\n			<td class="center">Data Centered</td>\r\n		</tr>\r\n		<tr>\r\n			<td class="bold">Data Bold</td>\r\n			<td>Table Data</td>\r\n			<td class="center">Data Centered</td>\r\n		</tr>\r\n		<tr class="odd">\r\n			<td>Table Data</td>\r\n			<td>Table Data</td>\r\n			<td class="center">Data Centered</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Definition Lists</h3>\r\n\r\n<p>Create a nice looking definition list separated with a line by using the CSS class <code>separator</code>.</p>\r\n\r\n<dl class="separator">\r\n	<dt>Definition List</dt>\r\n	<dd>A definition list is a list of terms and corresponding definitions. To create a definition list use the &lt;dl&gt; element in conjunction with &lt;dt&gt; to define the definition term and &lt;dd&gt; to define the definition description.</dd>\r\n	<dt>Definition Term</dt>\r\n	<dd>This is a definition description.</dd>\r\n	<dt>Definition Term</dt>\r\n	<dd>This is a definition description.</dd>\r\n	<dd>This is another definition description.</dd>\r\n</dl>\r\n\r\n<h3>Forms</h3>\r\n\r\n<p>Create a clearly arranged form layout with fieldset boxes using the CSS class <code>box</code>.</p>\r\n\r\n<form action="#" class="box">\r\n\r\n	<fieldset>\r\n		<legend>Form legend</legend>\r\n		<div><label for="f1">Text input:</label> <input type="text" value="input text" id="f1"/></div>\r\n		<div><label for="f2">Radio input:</label> <input type="radio" id="f2"/></div>\r\n		<div><label for="f3">Checkbox input:</label> <input type="checkbox" id="f3"/></div>\r\n		<div><label for="f4">Select field:</label> <select id="f4"><option>Option 01</option><option>Option 02</option></select></div>\r\n		<div><label for="f5">Textarea:</label><br/><textarea rows="5" cols="30" id="f5">Textarea text</textarea></div>\r\n	</fieldset>\r\n	\r\n	<button>Button</button> <input type="button" value="Input Button" />\r\n	\r\n</form>', '', 1, 0, 0, 0, '2011-02-20 14:42:51', 62, '', '2011-05-02 08:42:58', 62, 63, '2011-10-11 06:24:30', '2011-02-20 14:42:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 55, 0, 15, '', '', 0, 869, 'robots=\nauthor='),
(10, 'ZOO', 'zoo', '', '<img class="size-auto align-right" src="images/yootheme/zoo_video_tour.png" width="250" height="110" alt="Take the video tour on the ZOO!" title="Take the video tour on the ZOO!" />\r\n\r\n<p>ZOO is a flexible and powerful content application builder to manage your content. It provides a much improved Joomla experience. The key feature is the ability to create your very own custom content types. You define what a type is made up of - e.g. text, images or a file download. Any combination is imaginable! You bring the content, ZOO brings the elements to structure it and make it look good!</p>\r\n\r\n<h2>Apps for every Purpose</h2>\r\n\r\n<p>ZOO moves from simply being a CCK to an Application Builder. Apps are extensions for ZOO which are optimized for different purposes and types of content catalogs. ZOO offers a wide range of apps to get you started right away. There is a blog, a product catalog, a cookbook, a business directory, a documentation, a download archive and a movie database app!</p>\r\n\r\n<img class="size-auto align-center" src="images/yootheme/zoo_apps.png" width="635" height="219" alt="ZOO Apps for every Purpose" title="ZOO Apps for every Purpose" />\r\n\r\n<h2>Joomla Integration</h2>\r\n\r\n<p>By now ZOO has developed a thriving ecosystem, with new ZOO extensions appearing regularly. It also integrates well with many popular Joomla extensions. Besides the ZOO component itself offers additional modules and plugins. They allow a seamless integration into Joomla and provide a richer tool set to create your website.</p>\r\n\r\n<a class="button-more" href="http://www.yootheme.com/zoo">Visit Website</a>', '', 1, 0, 0, 0, '2011-04-27 17:37:31', 62, '', '2011-05-09 18:35:54', 62, 63, '2011-10-11 06:24:48', '2011-04-27 17:37:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 14, '', '', 0, 150, 'robots=\nauthor='),
(11, 'Icons', 'icons', '', '<p>YOOtheme is a well-known template and extension provider for Jooomla and WordPress who helps you to create professional websites. But to make your website or interface design a real eye-catcher we had one thing missing: Icons! Icons are an essential tool to simplify user interfaces and today almost every major website uses icons to highlight important parts in their content.</p>\r\n\r\n<p>This is why we created a great resource of beautiful and handcrafted icons for web and print projects. We got commercial icon sets including e-commerce, community, file and folder icons and many more as well as many freebies.</p>\r\n\r\n<div class="box-content bfc-o">\r\n\r\n	<img class="size-auto align-left" width="300" height="282" src="images/yootheme/icons_club.png"/>\r\n\r\n	<div class="bfc-o">\r\n\r\n		<h2 style="margin-top: 0;">Club Icons</h2>\r\n\r\n		<p>As a member of our icon club you will get access to hundreds of handcrafted and detailed icons. New icon sets are added continuously!</p>\r\n		<ul class="check">\r\n			<li>Pixel perfect design</li>\r\n			<li>PNGs in 8 sizes from 16x16 to 512x512 pixels</li>\r\n			<li>Handmade and optimized for each size</li>\r\n			<li>Editable vector PDF sources</li>\r\n			<li>Change the colors and customize easily</li>\r\n		</ul>\r\n\r\n		<p><a class="button-more" href="http://www.yootheme.com/icons" target="_blank">Visit Website</a></p>\r\n\r\n	</div>\r\n\r\n</div>', '', 1, 0, 0, 0, '2011-04-27 19:23:19', 62, '', '2011-05-09 18:38:04', 62, 63, '2011-10-11 06:24:53', '2011-04-27 19:23:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 13, '', '', 0, 179, 'robots=\nauthor='),
(13, 'Module Variations', 'module-variations', '', '<p>This theme comes with different module styles, badges and icons. For each module you can pick a style and combine it with an icon or badge to create your own unique look. Here is a list of the available options:</p>\r\n\r\n<table class="zebra">\r\n	<tbody>\r\n		<tr class="odd">\r\n			<td class="bold">Styles</td>\r\n			<td>Box, Inverted, Line</td>\r\n		</tr>\r\n		<tr>\r\n			<td class="bold">Colors</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr class="odd">\r\n			<td class="bold">Badges</td>\r\n			<td>Hot, New, Free, Top</td>\r\n		</tr>\r\n		<tr>\r\n			<td class="bold">Icons</td>\r\n			<td>Download, Twitter, Mail, Bubble, Login, Cart, Comment</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', 1, 0, 0, 0, '2011-04-29 12:54:14', 62, '', '2011-07-27 17:58:30', 62, 63, '2011-10-11 07:46:46', '2011-04-29 12:54:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 12, '', '', 0, 176, 'robots=\nauthor='),
(15, 'Slideshow', 'slideshow', '', '<p>The Widgetkit Slideshow is the ultimate image and content slideshow for Joomla and WordPress. It''s flexible, easy to customize and completely build with HTML5 and CSS3. </p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Clean and very lightweight code</li>\r\n	<li>15 eye-catching transition effects</li>\r\n	<li>Uses hardware accelerated CSS3 animations</li>\r\n	<li>JavaScript animation fallback for all Internet Explorers</li>\r\n	<li>Support for HTML captions</li>\r\n	<li>Swipe navigation on mobile phones</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla 1.5, 1.6, WordPress and Stand-alone</li>\r\n</ul>\r\n\r\n<h2>Example</h2>\r\n\r\n[widgetkit id=10]\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>The Widgetkit Slideshow takes full advantage of the very user-friendly Widgetkit administration user interface. It has never been easier to create and manage all the slideshows and their different slides in one place. After you created a slideshow you can load it anywhere in your theme using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 0, '2011-06-08 10:59:20', 62, '', '2011-07-29 14:57:16', 62, 63, '2011-10-11 06:25:20', '2011-06-08 10:59:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 10, '', '', 0, 33, 'robots=\nauthor='),
(16, 'Lightbox', 'lightbox', '', '<p>The Widgetkit Lightbox allows you to view images, HTML and multi-media content on a dark dimmed overlay without having to leave the current page.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Display images, videos, HTML, Iframes, Ajax requests and SWF</li>\r\n	<li>Supports YouTube, Vimeo, MP4 (h.264), WebM and FLV movies</li>\r\n	<li>Group lightboxes and mix different content types</li>\r\n	<li>3 different opening and closing transitions</li>\r\n	<li>4 different caption styles</li>\r\n	<li>Keyboard and mouse scroll wheel navigation</li>\r\n	<li>Build on the latest jQuery version</li>\r\n	<li>Works with Joomla 1.5, 1.6, WordPress and Stand-alone</li>\r\n</ul>\r\n\r\n<h2>Examples</h2>\r\n\r\n<p>Different animations - <code>fade</code>, <code>elastic</code> and <code>none</code></p>\r\n<p class="gallery">\r\n	<a data-lightbox="transitionIn:fade;transitionOut:fade;" href="images/yootheme/widgetkit/lightbox/image1_lightbox.jpg"><img src="images/yootheme/widgetkit/lightbox/image1.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n	<a data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image2_lightbox.jpg"><img src="images/yootheme/widgetkit/lightbox/image2.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n	<a data-lightbox="transitionIn:none;transitionOut:none;" href="images/yootheme/widgetkit/lightbox/image3_lightbox.jpg"><img src="images/yootheme/widgetkit/lightbox/image3.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n</p>\r\n\r\n<p>Different title positions - <code>float</code>, <code>inside</code> and <code>over</code></p>\r\n<p class="gallery">\r\n	<a data-lightbox="group:mygroup1;titlePosition:float" href="images/yootheme/widgetkit/lightbox/image4_lightbox.jpg" title="Title Position: Float"><img src="images/yootheme/widgetkit/lightbox/image4.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n	<a data-lightbox="group:mygroup1;titlePosition:inside" href="images/yootheme/widgetkit/lightbox/image5_lightbox.jpg" title="Title Position: Inside"><img src="images/yootheme/widgetkit/lightbox/image5.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n	<a data-lightbox="group:mygroup1;titlePosition:over;padding:0" href="images/yootheme/widgetkit/lightbox/image6_lightbox.jpg" title="Title Position: Over and Padding set to 0"><img src="images/yootheme/widgetkit/lightbox/image6.jpg" width="180" height="120" alt="Lightbox Image" /></a>\r\n</p>\r\n\r\n<p>Various examples in one gallery (try also using the keyboard and mouse scroll wheel)</p>\r\n<ul>\r\n	<li><a data-lightbox="group:mygroup2" href="http://www.youtube.com/watch?v=R55e-uHQna0" title="YouTube Video">YouTube</a></li>\r\n	<li><a data-lightbox="group:mygroup2" href="http://vimeo.com/15261921" title="Vimeo Video">Vimeo</a></li>\r\n	<li><a data-lightbox="group:mygroup2" href="http://www.yootheme.com/videos/mediaplayer.mp4" title="MP4 (h.264)">MP4 (h.264)</a></li>\r\n	<li><a data-lightbox="group:mygroup2" href="http://www.adobe.com/jp/events/cs3_web_edition_tour/swfs/perform.swf" title="Flash Swf">Swf</a></li>\r\n	<li><a data-lightbox="group:mygroup2" href="#inline" title="Inline Content from the Website">Inline</a></li>\r\n	<li><a data-lightbox="group:mygroup2;width:1000;height:700" title="Iframe" href="http://www.google.com">Iframe</a></li>\r\n</ul>\r\n\r\n<div style="display: none;">\r\n	<div id="inline" style="width: 400px; height: 100px; overflow: auto;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n</div>\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>Use the HTML5 custom data attribute <code>data-lightbox</code> to activate the lightbox. You can set various lightbox parameters to the data attribute. For example:</p>\r\n\r\n<pre>&lt;a data-lightbox=&quot;width:1000;height:700;&quot; href=&quot;http://www.google.com&quot;&gt;Lightbox&lt;/a&gt;</pre>\r\n\r\n<p>Here is a list of the most common parameters:</p>\r\n\r\n<ul>\r\n	<li><strong>titlePosition</strong> - How should the title show up? (<code>float</code>, <code>outside</code>, <code>inside</code> or <code>over</code>)</li>\r\n	<li><strong>transitionIn</strong> - Set a opening transition. (<code>fade</code>, <code>elastic</code>, or <code>none</code>)</li>\r\n	<li><strong>transitionOut</strong> - Set a closing transition (<code>fade</code>, <code>elastic</code>, or <code>none</code>)</li>\r\n	<li><strong>overlayShow</strong> - Set to <code>true</code> or <code>false</code></li>\r\n	<li><strong>width</strong> - Set a width in pixel</li>\r\n	<li><strong>height</strong> - Set a height in pixel</li>\r\n	<li><strong>padding</strong> - Set a padding in pixel</li>\r\n</ul>', '', 1, 0, 0, 0, '2011-06-08 11:00:03', 62, '', '2011-07-29 15:04:50', 62, 63, '2011-10-11 06:25:26', '2011-06-08 11:00:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 9, '', '', 0, 15, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(17, 'Spotlight', 'spotlight', '', '<p>The Widgetkit Spotlight allows you to add an overlay to your images which fades or moves in on mouse hover. The overlay can be an image or HTML content. The default magnifier spotlight is a perfect match to be used with a lightbox.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Create nicely animated image overlays</li>\r\n	<li>Supports custom image or HTML content overlays</li>\r\n	<li>5 different animation modes</li>\r\n    <li>Build on the latest jQuery version</li>\r\n	<li>Works with Joomla 1.5, 1.6, WordPress and Stand-alone</li>\r\n</ul>\r\n\r\n<h2>Examples</h2>\r\n\r\n<p>If no custom overlay is set the default spotlight fades in an overlay with an magnifier image. If you define a custom overlay you can choose between different animations - <code>fade</code>, <code>bottom</code>, <code>top</code>, <code>right</code> and <code>left</code>.</p>\r\n\r\n<div>\r\n	<a data-spotlight="on" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image1_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image1.jpg" width="180" height="120" alt="Spotlight Image" />\r\n	</a>\r\n	<a data-spotlight="effect:bottom;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image2_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image2.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay">Custom Overlay (Bottom)</div>\r\n	</a>\r\n	<a data-spotlight="effect:right;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image3_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image3.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay">Custom Overlay (Right)</div>\r\n	</a>\r\n</div>\r\n\r\n<div>\r\n	<a data-spotlight="effect:fade;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image4_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image4.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay"><img src="images/yootheme/widgetkit/lightbox/image4_spotlight.jpg" width="180" height="120" alt="Spotlight Image" /></div>\r\n	</a>\r\n	<a data-spotlight="effect:top;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image5_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image5.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay">Custom Overlay (Top)</div>\r\n	</a>\r\n	<a data-spotlight="effect:left;" data-lightbox="transitionIn:elastic;transitionOut:elastic;" href="images/yootheme/widgetkit/lightbox/image6_lightbox.jpg">\r\n		<img src="images/yootheme/widgetkit/lightbox/image6.jpg" width="180" height="120" alt="Spotlight Image" />\r\n		<div class="overlay">Custom Overlay (Left)</div>\r\n	</a>\r\n</div>\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>Use the HTML5 custom data attribute <code>data-spotlight</code> to activate the spotlight.\r\n\r\n<pre>&lt;a data-spotlight="on" href="/mypage.html"&gt;\r\n	&lt;img src="/image.jpg" width="180" height="120" alt="" /&gt;\r\n&lt;/a&gt;</pre>\r\n\r\n<p>To create a custom overlay use a div element with the CSS class <code>overlay</code>. You can set the effect parameter to the data attribute. For example:</p>\r\n\r\n<pre>&lt;a data-spotlight="effect:bottom;" href="/mypage.html"&gt;\r\n	&lt;img src="/image.jpg" width="180" height="120" alt="" /&gt;\r\n	&lt;div class="overlay"&gt;Custom Overlay&lt;/div&gt;\r\n&lt;/a></pre>\r\n\r\n<p>You can set the effect parameter to <code>fade</code>, <code>bottom</code>, <code>top</code>, <code>right</code> and <code>left</code>.', '', 1, 0, 0, 0, '2011-06-08 11:00:35', 62, '', '2011-07-29 15:05:16', 62, 63, '2011-10-11 06:25:37', '2011-06-08 11:00:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 8, '', '', 0, 21, 'robots=\nauthor='),
(18, 'Twitter', 'twitter', '', '<p>The Widgetkit Twitter module is the neatest way to display tweets directly on your website. All displayed tweets get cached so they show up super fast, even if Twitter is not available.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Filter tweets by hashtags, words, from users, to users, referencing users</li>\r\n	<li>Block tweets using a blacklist</li>\r\n	<li>Tweets are cached for high performance</li>\r\n	<li>Tweets show up even if Twitter is not available</li>\r\n	<li>3 different styles to show your tweets</li>\r\n    <li>Build with HTML5 using article and time elements</li>\r\n	<li>Works with Joomla 1.5, 1.6 and WordPress</li>\r\n</ul>\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>Create a Twitter module in Joomla or a Twitter widget in WordPress and publish it in a module position. A lot of options are available to choose which tweets you want to show.</p>\r\n\r\n<p>For example you can show only tweets from a specific user or tweets that contain a certain hash-tag or a specific word. All options can be combined. To filter by more than one word or user use a space between them. For example: <code>yootheme joomla</code>.</p>', '', 1, 0, 0, 0, '2011-06-08 11:01:06', 62, '', '2011-07-29 15:05:37', 62, 63, '2011-10-11 06:25:46', '2011-06-08 11:01:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 7, '', '', 0, 21, 'robots=\nauthor='),
(19, 'Slideset', 'slideset', '', '<p>The Widgetkit Slideset takes your product showcase to the next level. It provides a sleek way to show multiple sets of items and uses smooth effects while looping through them.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Clean and very lightweight code</li>\r\n	<li>Eye-catching transition effects</li>\r\n	<li>Support of named custom sets</li>\r\n	<li>Swipe navigation on mobile phones</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla 1.5, 1.6, WordPress and Stand-alone</li>\r\n</ul>\r\n\r\n<h2>Slide Example</h2>\r\n<p>The sets are auto generated (4 items per set), item names are shown and it uses a slide effect and navigation buttons.</p>\r\n[widgetkit id=32]\r\n\r\n<h2>Zoom Example</h2>\r\n<p>The sets are arranged manually, the sets names are used as navigation and it uses a zoom effect.</p>\r\n[widgetkit id=33]\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>The Widgetkit Slideset takes full advantage of the very user-friendly Widgetkit administration user interface. You can create and manage all the slidesets and their different items in one place. After you have created a slideset you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 0, '2011-07-29 10:00:02', 62, '', '2011-07-29 16:18:42', 62, 63, '2011-10-11 06:23:51', '2011-07-29 10:00:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 6, '', '', 0, 39, 'robots=\nauthor='),
(20, 'Gallery', 'gallery', '', '<p>The Widgetkit Gallery provides a smart and automated way to publish images on your website. You only need to select the image folders and the whole gallery is generated automatically.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Comes with image wall, slider and slideshow styles</li>\r\n	<li>Folder based image selection</li>\r\n	<li>Support for multiple image folders</li>\r\n	<li>Automatic thumbnail creation</li>\r\n	<li>Support for image captions and custom links</li>\r\n	<li>Uses the Widgetkit Spotlight and Lightbox</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla 1.5, 1.6, WordPress and Stand-alone</li>\r\n</ul>\r\n\r\n<h2>Image Wall Example</h2>\r\n<p>This is an image wall with zoom effect, no margins and squared corners using the lightbox.</p>\r\n[widgetkit id=24]\r\n\r\n<h2>Polaroid Example</h2>\r\n<p>This is an image wall with scattered polaroid pictures using the lightbox.</p>\r\n[widgetkit id=25]\r\n\r\n<h2>Slider Example 1</h2>\r\n<p>This is an image slider where the image centers automatically during the effect. It also features a spotlight caption and the lightbox.</p>\r\n[widgetkit id=27]\r\n\r\n<h2>Slider Example 2</h2>\r\n<p>This is an image slider where the image stays left during the effect.</p>\r\n[widgetkit id=31]\r\n\r\n<h2>Slideshow Example</h2>\r\n<p>This is an image gallery using all the features from the slideshow widget.</p>\r\n[widgetkit id=19]\r\n\r\n<h2>Spotlight Example</h2>\r\n<p>This is an image wall with some margins and rounded corners using the spotlight and lightbox.</p>\r\n[widgetkit id=23]\r\n\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>The Widgetkit Gallery comes with a user-friendly administration user interface which let''s you create new galleries with just a few clicks. The integrated directory browser let''s you easily add or remove source directories of your images. All galleries can be loaded anywhere in your theme using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 0, '2011-07-29 14:58:45', 62, '', '2011-07-29 15:12:50', 62, 63, '2011-10-08 05:52:26', '2011-07-29 14:58:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 5, '', '', 0, 13, 'robots=\nauthor='),
(21, 'Map', 'map', '', '<p>The Widgetkit Map provides a simple solution for adding a map to your website. Various features let you customize the map like changing colors and adding markers or directions.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Location selection with auto geocoding</li>\r\n	<li>Support for multiple map markers with text popups</li>\r\n	<li>Option to get the direction to the active marker</li>\r\n	<li>Support for custom map styles and colors</li>\r\n	<li>Uses the latest Google Maps API</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla 1.5, 1.6, WordPress and Stand-alone</li>\r\n</ul>\r\n\r\n<h2>Direction Example</h2>\r\n<p>This map features all map controls, multiple markers and you can get the direction.</p>\r\n[widgetkit id=26]\r\n\r\n<h2>Color Scheme Example</h2>\r\n<p>Set or invert the hue, saturation, lightness and gamma of a map.</p>\r\n[widgetkit id=28]\r\n\r\n<h2>Minimal Example</h2>\r\n<p>This map has a fixed width, no controls and no markers.</p>\r\n[widgetkit id=29]\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>With the Widgetkit Map you can quickly create and manage simple maps with features like multiple markers, text popups and custom color schemes. Once you have created a map you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 0, '2011-07-29 15:00:29', 62, '', '2011-07-29 15:12:40', 62, 63, '2011-10-11 06:25:55', '2011-07-29 15:00:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 4, '', '', 0, 9, 'robots=\nauthor='),
(22, 'Accordion', 'accordion', '', '<p>The Widgetkit Accordion enables you to display a set of items in a compact space, by clicking on each items header it expands or collapses it''s content section.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Clean and very lightweight code</li>\r\n	<li>Smooth transitions on content section toggle</li>\r\n	<li>Option to match automatically the height of varying content</li>\r\n	<li>Option to auto collapse or allow multiple opened items</li>\r\n	<li>Built with HTML5, CSS3, PHP 5.2+, and the latest jQuery version</li>\r\n	<li>Works with Joomla 1.5, 1.6, WordPress and Stand-alone</li>\r\n</ul>\r\n\r\n<h2>Example</h2>\r\n\r\n[widgetkit id=30]\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>The Widgetkit Accordion lets you easily create and manage all the accordions contents through the user-friendly Widgetkit administration user interface. After you have created an accordion you can load it anywhere on your website using shortcodes or the universal Widgetkit Joomla module or WordPress widget.</p>', '', 1, 0, 0, 0, '2011-07-29 15:01:48', 62, '', '2011-07-29 15:12:30', 62, 63, '2011-10-08 05:54:56', '2011-07-29 15:01:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 3, '', '', 0, 8, 'robots=\nauthor='),
(23, 'Media Player', 'media-player', '', '<p>The Widgetkit Media Player is a HTML5 audio and video player completely built HTML and CSS. You can easily embed video files into your website by using the HTML5 video element. A Flash player fallback is included for all unsupported browsers.</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul class="check">\r\n	<li>Native playback for modern HTML5 browsers</li>\r\n	<li>Supports MP4 (h.264), WebM, FLV, WMV and MP3 files</li>\r\n	<li>Completely built with HTML and CSS</li>\r\n	<li>Same UI in all browsers</li>\r\n	<li>Create your own skins</li>\r\n	<li>Flash player fallback for unsupported browsers</li>\r\n	<li>Works with Joomla 1.5, 1.6, WordPress and Stand-alone</li>\r\n</ul>\r\n\r\n<h2>Examples</h2>\r\n\r\n<video width="640" height="360" poster="http://www.yootheme.com/videos/mediaplayer.jpg" controls="controls" preload="none">\r\n	<source type="video/mp4" src="http://www.yootheme.com/videos/mediaplayer.mp4" />\r\n</video>\r\n\r\n<p>This is a MP3 Audio Sample:</p>\r\n\r\n<audio src="http://www.yootheme.com/videos/mediaplayer.mp3" type="audio/mp3" controls="control" preload="none"></audio>\r\n\r\n<h2>How To Use</h2>\r\n\r\n<p>Use the HTML5 <code>video</code> element to embed video in your website. For example:</p>\r\n\r\n<pre>&lt;video src="/video.mp4" width="320" height="240"&gt;&lt;/video&gt;</pre>\r\n\r\n<p>You can also provide multiple sources, to add support for the different video formats like h.264, WebM or Ogg:</p>\r\n\r\n<pre>&lt;video width="320" height="240"&gt;\r\n	&lt;source type="video/mp4"  src="/video.mp4" /&gt;\r\n	&lt;source type="video/webm" src="/video.webm" /&gt;\r\n	&lt;source type="video/ogg"  src="/video.ogv" /&gt;\r\n&lt;/video&gt;\r\n</pre>\r\n\r\n\r\n<p>Use the HTML5 <code>audio</code> element to embed MP3 files in your website. For example:</p>\r\n\r\n<pre>&lt;audio src="/audio.mp3" type="audio/mp3"&gt;&lt;/audio&gt;</pre>', '', 1, 0, 0, 0, '2011-07-29 15:05:39', 62, '', '2011-07-29 15:12:22', 62, 0, '0000-00-00 00:00:00', '2011-07-29 15:05:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 7, 'robots=\nauthor='),
(24, 'Pentingkah Website?', 'pentingkah-website', '', '<p>sebagian orang memiliki pendapat kalau website tidak terlalu penting untuk mereka, dan sebagian lagi mengatakan "website itu penting!"</p>\r\n<p>jadi yang mana yang benar ya?</p>\r\n<p>Penting atau tidaknya website, itu tergantung dari kebutuhan personal, kelompok ataupun perusahaan masing-masing. Ada beberapa kriteria yang membuat website itu penting, yaitu:</p>\r\n<p><strong>1. Target market yang besar</strong></p>\r\n<p>Berdasarkan statistik, pengguna internet saat ini lebih dari 1 milyar di seluruh dunia. Bagi pemasar/marketing 1 Millyar ini adalah nilai yang sangat besar bagi bisnis tentunya. Nilai ini tidak terprediksi sebelumnya. Dan sepantasnya semua mata melirik internet.</p>\r\n<p><strong>2. Banyak konsumen baru yang sebelumnya tidak dapat dicapai</strong></p>\r\n<p>Saat ini lokasi tempat usaha tidak menjadi hambatan. Toko kecil dari kota kecil sekalipun dapat meraih pelanggan baru dari seluruh dunia berkat internet.</p>\r\n<p><strong>3. Pola marketing menjadi 24/7/365</strong></p>\r\n<p>Pastikan anda telah memiliki website saat konsumen datang mencari yang diinginkannya. Internet tidak pernah tidur dan tidak pernah berhenti. Pada setiap saat sepanjang hari ada jutaan orang yang berselancar mencari informasi, produk, hiburan, dll.</p>\r\n<p><strong>4. Konsumen sangat teliti dalam mencari produk</strong></p>\r\n<p>Banyaknya informasi pada website di internet, membuat konsumen semakin teliti dalam memilih produk dan layanan yang ada dalam sebuah website sebelum mereka memutuskan untuk membeli atau berlangganan. Pastikan Anda dapat meraih mereka pada tahap awal pencarian jika memungkinkan.</p>\r\n<p><strong>5. Website sangat penting</strong></p>\r\n<p>Bisnis selalu mengiklankan alamat usaha dan nomor telepon. Pada akhir 80-an fax menjadi sama pentingnya. Hari ini, konsumen berharap setiap bisnis/usaha memiliki website. sebagai alat promosi pendukung, website sangat berguna memberikan informasi lebih banyak dari pada berpromosi lewat media massa yang biayanya relatif sangat mahal. Bahkan dengan website, hubungan antara klien dengan pemilik website bisa langsung terkoneksi.</p>\r\n<p><strong>6. Info Kontak website</strong></p>\r\n<p>Minimal setiap usaha harus memiliki halaman website dengan info kontak. Jika seseorang ingin berkomunikasi dengan pemilik website, mudahkan orang tersebut untuk mendapatkan informasinya.</p>\r\n<p><strong>7. Return Of Investment sangat tinggi</strong></p>\r\n<p>Biaya untuk website berkualitas sangat tinggi/mahal tergantung dari perusahaan pengembangnya. Namun memiliki website yang tidak berkualitas jauh lebih tinggi.</p>\r\n<p>Banyak perusahaan yang melihat laba atas investasinya dalam beberapa bulan melalui pelanggan baru dan kesempatan yang datang.<br /> Setelah biaya awal, biaya perawatan website umumnya murah, tetapi pengunjung baru tetap berdatangan.</p>\r\n<p><strong>8. Situs berkualitas dapat menaikan kredibilitas</strong></p>\r\n<p>Memulai bisnis baru atau mengembangkan bisnis lama, dibutuhkan waktu untuk membangun reputasi dan kredibilitas. Website yang berkualitas tinggi, calon pelanggan akan menganggap bisnis Anda sah dan serius tentang apa yang Anda tawarkan atau jual.</p>\r\n<p><strong>9. Pesaing Anda memiliki website</strong></p>\r\n<p>Buatlah website yang dapat mengalahkan kompetitor/pesaing Anda. Jika seseorang mencari suatu produk atau layanan yang Anda sediakan, dan mereka menemukan nya di salah satu web pesaing Anda, maka Anda telah melewatkan satu kesempatan bagus.</p>\r\n<p>&nbsp;</p>\r\n<p>nah kalau sudah tau lebih banyak manfaatnya menggunakan website, langsung aja call admin <a target="_parent" title="wabblower" href="http://webblower.com/">webblower</a> untuk dibuatkan website dengan desain yang menarik dan bermanfaat untuk anda.</p>', '', 1, 1, 0, 1, '2011-09-28 07:04:43', 63, '', '2011-09-28 07:30:43', 62, 0, '0000-00-00 00:00:00', '2011-09-28 07:04:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 4, '', '', 0, 196, 'robots=\nauthor='),
(25, 'Paket Personal', 'paket-personal', '', '<p>• » 10 Halaman Website Dengan Ukuran A4<br />• » Berdasarkan pilihan template yang telah disediakan<br />• » 1 Tahun Domain .com &amp; Hosting 100 MB<br />• » System Backoffice untuk mengubah isi profil, berita &amp; kontak<br />• » Pengerjaan 10 hari kerja<br />• » Cocok Untuk Individu &amp; Company Profile<br />• » Biaya perpanjangan Domain dan Hosting mulai Rp 440.000 /tahun</p>\r\n<p>&nbsp;</p>\r\n<p>-------------- Harga di atas sudah termasuk PPn 10% ------------------------<br />------------------------- Pengisian konten per halaman/item: NEGO ----------------</p>\r\n&nbsp;\r\n<p>&nbsp;</p>', '', 1, 2, 0, 4, '2011-10-05 12:26:39', 62, '', '2011-10-05 12:53:19', 62, 0, '0000-00-00 00:00:00', '2011-10-05 12:26:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 4, '', '', 0, 19, 'robots=\nauthor='),
(26, 'Paket Marketers', 'paket-marketers', '', '<p>Harga: Rp 1.488.000<br />• » 20 Halaman Website Dengan Ukuran A4*<br />• » Berdasarkan pilihan template yang telah disediakan<br />• » 1 Tahun Domain .com / .net / .org<br />• » 1 Tahun Hosting 100 MB<br />• » System Backoffice untuk mengubah isi profil, berita &amp; kontak<br />• » Pengerjaan 15 hari kerja<br />• » Dilengkapi dengan kereta belanja<br />• » Cocok Untuk Toko Online / Showcase<br />• » Biaya perpanjangan mulai Rp 440.000 /tahun</p>\r\n<p>&nbsp;</p>\r\n<p>-------------- Harga di atas sudah termasuk PPn 10% ------------------------<br />------------------------- Pengisian konten per halaman/item: NEGO ----------------</p>\r\n&nbsp;', '', 1, 2, 0, 4, '2011-10-05 12:48:43', 62, '', '2011-10-05 12:53:46', 62, 0, '0000-00-00 00:00:00', '2011-10-05 12:48:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 3, '', '', 0, 13, 'robots=\nauthor='),
(27, 'Paket Eye Custom', 'paket-eye-custom', '', '<p>Harga: Rp 1.888.000<br />• » Jumlah halaman Website sesuai permintaan<br />• » Template yang tersedia bisa di ubah sesuai permintaan*<br />• » 1 Tahun Domain .com / .net / .org<br />• » 1 Tahun Hosting 1 GB<br />• » System Backoffice untuk mengubah isi profil, berita &amp; kontak<br />• » Biaya perpanjangan mulai Rp 550.000 /tahun</p>\r\n<p>&nbsp;</p>\r\n<p>-------------- Harga di atas sudah termasuk PPn 10% ------------------------<br />------------------------- Pengisian konten per halaman/item: NEGO ----------------</p>\r\n&nbsp;', '', 1, 2, 0, 4, '2011-10-05 12:50:39', 62, '', '2011-10-05 12:54:23', 62, 0, '0000-00-00 00:00:00', '2011-10-05 12:50:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 12, 'robots=\nauthor='),
(28, 'Paket SUPER Custom', 'paket-super-custom', '', '<p>Harga mulai : Rp 2.5 Juta - ..............<br />• » Jumlah halaman Website sesuai permintaan<br />• » Template sesuai permintaan<br />• » 1 Tahun Domain sesuai pilihan anda<br />• » 1 Tahun Hosting dengan kapasitas tak terbatas (unlimited)<br />• » System Backoffice untuk mengubah isi profil, berita &amp; kontak<br />• » Biaya perpanjangan mulai Rp 770.000 /tahun</p>\r\n<p>&nbsp;</p>\r\n<p>-------------- Harga di atas sudah termasuk PPn 10% ------------------------<br />------------------------- Pengisian konten per halaman/item: NEGO ----------------</p>\r\n&nbsp;', '', 1, 2, 0, 4, '2011-10-05 12:51:23', 62, '', '2011-10-05 12:54:57', 62, 0, '0000-00-00 00:00:00', '2011-10-05 12:51:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 14, 'robots=\nauthor='),
(29, 'Tentang Kami', 'tentang-kami', '', '<p>&nbsp;</p>\r\n<p>Kami adalah sebuah perusahaan yang bergerak di bidang desain website dan desain promosi media cetak yang mengutamakan kepentingan klien kami agar sukses dalam mempromosikan produk barang atau jasa-nya.</p>\r\n<p><strong>Misi &nbsp;:&nbsp;</strong></p>\r\n<p>- Dengan Harga MURAH hasil dari kami TIDAK MURAHAN, kami tetap mengutamakan kualitas dan pelayanan yang terbaik.<br />- Membangun kerjasama yang sinergis untuk mengembangkan Word Of Mouth terbaik untuk perusahaan kami.<br />- membangun dan juga mengembangkan konsep-konsep desain (website dan media cetak) sesuai kebutuhan klien.</p>\r\n<p>&nbsp;</p>', '', 1, 3, 0, 5, '2011-10-07 07:19:28', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-10-07 07:19:28', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 109, 'robots=\nauthor='),
(30, 'Submit Ke Search Engine', 'submit-ke-search-engine', '', '<p>&nbsp;</p>\r\n<p>Yang harus anda kerjakan agar web site anda dapat masuk dalam daftar pencarian search engine, website Anda harus memenuhi beberapa persyaratan berikut ini:</p>\r\n<p>* Website Anda harus mengandung unsur text<br />Search engine membaca file non-binary pada website Anda. Text - text yang terdapat di dalamnya akan disimpan dalam database search engine tersebut sehingga akan muncul pada pencarian dengan kata kunci yang relevan dengan isinya. Sangat tidak disarankan membuat suatu website dalam full flash karena teknologi search engine saat ini tidak dapat membaca file flash<br />* Lengkapi header di setiap halaman<br />Header yang terdiri dari title, meta description, dan meta keyword harus diisi dengan kata - kata yang relevan dengan isi website. Hal ini semakin memudahkan search engine untuk menyimpan isi halaman website Anda dalam databasenya.</p>\r\n<p>* Buat semua halaman dengan lengkap<br />Sebelum Anda mulai mendaftarkan website Anda pada search engine, silahkan buat seluruh halaman dengan lengkap. Jangan sampai ada deadlink. Biasanya search engine tidak banyak mereferensikan hasil pencariannya pada website yang masih terdapat banyak deadlink.</p>\r\n<p>* Sebaiknya membuat sitemap<br />Untuk mempermudah search engine menemukan halaman - halaman pada website Anda, buatlah sitemap yang berisi link ke seluruh halaman dalam website tersebut.</p>\r\n<p>* Tambahkan tag title pada URL link text dan Alt pada link image<br />Tag alt pada image yang berkait (memiliki link) akan memudahkan search engine untuk mengcrawl halaman yang dituju oleh link tersebut.</p>', '', 1, 1, 0, 1, '2011-10-07 07:55:03', 62, '', '0000-00-00 00:00:00', 0, 63, '2011-10-11 06:24:03', '2011-10-07 07:55:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 205, 'robots=\nauthor='),
(32, 'Search Engine Top Ten Position', 'search-engine-top-ten-position', '', '<p>&nbsp;Harga mulai : Rp 2 Juta - Rp 4 Juta</p>\r\n<p>• » Jumlah keyword yang ingin dioptimasi : 5 kata kunci<br />• » Jumlah hasil pencarian di Google maksimal 400.000 hasil pencarian/kompetitor<br />• » 1 Tahun support dari SEO Enginer <br />• » Garansi 100% uang kembali</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>-------------- Harga di atas sudah termasuk PPn 10% ------------------------<br />------------------------- Pengisian konten per halaman/item: NEGO ----------------</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', 1, 2, 0, 6, '2011-11-09 03:22:27', 62, '', '2011-11-09 03:40:48', 62, 0, '0000-00-00 00:00:00', '2011-11-09 03:22:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 3, '', '', 0, 8, 'robots=\nauthor='),
(33, 'Search Engine Top Five Position', 'search-engine-top-five-position', '', '<p>&nbsp;</p>\r\n<p>Harga mulai : Rp 4,5&nbsp; Juta - Rp 8 Juta</p>\r\n<p>• » Jumlah keyword yang ingin dioptimasi : 5 kata kunci<br />• » Jumlah hasil pencarian di Google maksimal 2.000.000 hasil pencarian/kompetitor<br />• » 1 Tahun support dari SEO Enginer <br />• » Garansi 100% uang kembali</p>\r\n<p>-------------- Harga di atas sudah termasuk PPn 10% ------------------------<br />------------------------- Pengisian konten per halaman/item: NEGO ----------------</p>', '', 1, 2, 0, 6, '2011-11-09 03:41:08', 62, '', '2011-11-09 03:49:16', 62, 0, '0000-00-00 00:00:00', '2011-11-09 03:41:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 8, 'robots=\nauthor='),
(34, 'Search Engine Top One Position', 'search-engine-top-one-position', '', '<p>&nbsp;</p>\r\n<p>Harga mulai : Rp 15 Juta - Rp 100 Juta</p>\r\n<p>• » Jumlah keyword yang ingin dioptimasi : 5 kata kunci<br />• » Jumlah hasil pencarian di Google maksimal&nbsp;4.500.000 hasil pencarian/kompetitor<br />• » 2 Tahun support dari SEO Enginer <br />• » Garansi 100% uang kembali</p>\r\n<p>-------------- Harga di atas sudah termasuk PPn 10% ------------------------<br />------------------------- Pengisian konten per halaman/item: NEGO ----------------</p>', '', 1, 2, 0, 6, '2011-11-09 03:44:59', 62, '', '2011-11-09 03:49:33', 62, 0, '0000-00-00 00:00:00', '2011-11-09 03:44:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 9, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0),
(11, 'users', '63', 0, 'Arifian', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(24, '', 11),
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 48, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=columns-2 columnwidth-200\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(2, 'mainmenu', 'About Us', 'about-us', 'index.php?option=com_content&view=article&id=29', 'component', 1, 0, 20, 0, 49, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(3, 'mainmenu', 'Module Variations', 'module-variations', 'index.php?option=com_content&view=article&id=13', 'component', -2, 0, 20, 1, 38, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(4, 'mainmenu', 'Typography', 'typography', 'index.php?option=com_content&view=article&id=9', 'component', -2, 0, 20, 1, 39, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(63, 'mainmenu', 'Spotlight', 'spotlight', 'index.php?option=com_content&view=article&id=17', 'component', -2, 0, 20, 1, 26, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(6, 'mainmenu', 'Icons', 'icons', 'index.php?option=com_content&view=article&id=11', 'component', -2, 0, 20, 0, 27, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(7, 'mainmenu', 'ZOO', 'zoo', 'index.php?option=com_content&view=article&id=10', 'component', -2, 0, 20, 0, 30, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(8, 'mainmenu', 'Joomla || Subtitle Possible', 'joomla', 'index.php?option=com_content&view=frontpage', 'component', -2, 0, 20, 0, 29, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'num_leading_articles=1\nnum_intro_articles=3\nnum_columns=1\nnum_links=0\norderby_pri=\norderby_sec=rdate\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=icon_joomla.png\nsecure=0\n\n', 0, 0, 0),
(9, 'mainmenu', 'Blog || Personal Blog for Joomla', 'zoo-blog', 'index.php?option=com_zoo&view=frontpage', 'component', -2, 0, 35, 1, 45, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'application=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=icon_zoo_blog.png\nsecure=0\n\n', 0, 0, 0),
(10, 'mainmenu', 'Product Catalog || Clearly arranged Catalog', 'zoo-product-catalog', 'index.php?option=com_zoo&view=frontpage', 'component', -2, 0, 35, 1, 46, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'application=3\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=icon_zoo_product.png\nsecure=0\n\n', 0, 0, 0),
(11, 'mainmenu', 'Download Archive || Provide File Downloads', 'zoo-download-archive', 'index.php?option=com_zoo&view=frontpage', 'component', -2, 0, 35, 1, 40, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'application=4\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=icon_zoo_download.png\nsecure=0\n\n', 0, 0, 0),
(12, 'mainmenu', 'Business Directory || Manage Business Companies', 'zoo-business-directory', 'index.php?option=com_zoo&view=frontpage', 'component', -2, 0, 35, 1, 47, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'application=5\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=icon_zoo_business.png\nsecure=0\n\n', 0, 0, 0),
(13, 'mainmenu', 'Movie Database || Create a great Movie Resource', 'zoo-movie-database', 'index.php?option=com_zoo&view=frontpage', 'component', -2, 0, 35, 1, 44, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'application=2\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=icon_zoo_movie.png\nsecure=0\n\n', 0, 0, 0),
(14, 'mainmenu', 'Cookbook || Build a lovely Recipe Database', 'zoo-cookbook', 'index.php?option=com_zoo&view=frontpage', 'component', -2, 0, 35, 1, 43, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'application=6\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=icon_zoo_cookbook.png\nsecure=0\n\n', 0, 0, 0),
(15, 'mainmenu', 'Documentation || Provide FAQ and Tutorials', 'zoo-documentation', 'index.php?option=com_zoo&view=frontpage', 'component', -2, 0, 35, 1, 42, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'application=10\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=icon_zoo_documentation.png\nsecure=0\n\n', 0, 0, 0),
(64, 'mainmenu', 'Twitter', 'twitter', 'index.php?option=com_content&view=article&id=18', 'component', -2, 0, 20, 1, 31, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(16, 'mainmenu', 'Pages || Static Content Pages', 'zoo-pages', 'index.php?option=com_zoo&view=item', 'component', -2, 0, 35, 1, 41, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'application=8\nitem_id=177\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=icon_zoo_pages.png\nsecure=0\n\n', 0, 0, 0),
(17, 'mainmenu', 'Content || All com_content views', 'content-all-comcontent-views', '', 'separator', -2, 0, 0, 1, 33, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'mainmenu', 'Contact || All com_contact views', 'contact-all-comcontact-views', '', 'separator', -2, 0, 0, 1, 35, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(19, 'mainmenu', 'Other Components || Remaining component views', 'other-components-remaining-component-views', '', 'separator', -2, 0, 0, 1, 32, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(20, 'mainmenu', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=1', 'component', -2, 0, 20, 2, 37, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=rdate\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(21, 'mainmenu', 'Category Blog', 'category-blog', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 2, 36, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=rdate\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(22, 'mainmenu', 'Section List', 'section-list', 'index.php?option=com_content&view=section&id=1', 'component', -2, 0, 20, 2, 34, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=rdate\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(23, 'mainmenu', 'Category List', 'category-list', 'index.php?option=com_content&view=category&id=1', 'component', -2, 0, 20, 2, 25, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=10\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\norderby_sec=rdate\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(24, 'mainmenu', 'Contact Category', 'contact-category', 'index.php?option=com_contact&view=category&catid=2', 'component', -2, 0, 7, 2, 24, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=20\nimage=-1\nimage_align=right\nshow_limit=0\nshow_feed_link=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(25, 'mainmenu', 'Contact Item', 'contact-item', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 0, 7, 2, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(26, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 2, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=\ncomp_description=\nshow_link_hits=\nshow_link_description=\nshow_other_cats=\nshow_headings=\ntarget=\nlink_icons=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(27, 'mainmenu', 'Login', 'login', 'index.php?option=com_user&view=login', 'component', -2, 0, 14, 2, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_login_title=1\nheader_login=\nlogin=\nlogin_message=0\ndescription_login=0\ndescription_login_text=\nimage_login=-1\nimage_login_align=right\nshow_logout_title=1\nheader_logout=\nlogout=\nlogout_message=1\ndescription_logout=1\ndescription_logout_text=\nimage_logout=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(28, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=2&Itemid=2', 'url', 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(29, 'topmenu', 'Archive ==>>', 'archive-g', 'index.php?option=com_content&view=frontpage&Itemid=8', 'url', 1, 0, 0, 0, 3, 63, '2011-10-11 13:04:45', 0, 0, 0, 0, 'menu_image=icon_profile02.png\n\n', 0, 0, 0),
(30, 'topmenu', 'Typography', 'typography', 'index.php?option=com_content&view=article&id=9&Itemid=4', 'url', 0, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(60, 'mainmenu', 'Widgetkit', 'widgetkit', 'index.php?option=com_content&view=article&id=14', 'component', -2, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(61, 'mainmenu', 'Slideshow', 'slideshow', 'index.php?option=com_content&view=article&id=15', 'component', -2, 0, 20, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(62, 'mainmenu', 'Lightbox', 'lightbox', 'index.php?option=com_content&view=article&id=16', 'component', -2, 0, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(40, 'sidebarmenu', 'Sample Levels', 'sample-levels', 'index.php?option=com_content&view=article&id=8', 'component', 1, 0, 20, 0, 1, 63, '2011-10-11 06:27:30', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(41, 'sidebarmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=8', 'component', 1, 40, 20, 1, 1, 63, '2011-10-11 06:14:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(42, 'sidebarmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=8', 'component', 1, 40, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(43, 'sidebarmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=8', 'component', 1, 40, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(44, 'sidebarmenu', 'Level 4', 'level-4', 'index.php?option=com_content&view=article&id=8', 'component', 1, 45, 20, 3, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(45, 'sidebarmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=8', 'component', 1, 42, 20, 2, 1, 63, '2011-10-11 06:14:06', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(46, 'sidebarmenu', 'Accordion A', 'accordion-a', '', 'separator', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(47, 'sidebarmenu', 'Accordion B', 'accordion-b', '', 'separator', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(48, 'sidebarmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=8', 'component', 1, 46, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(49, 'sidebarmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=8', 'component', 1, 46, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(50, 'sidebarmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=8', 'component', 1, 46, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(51, 'sidebarmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=8', 'component', 1, 47, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(52, 'sidebarmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=8', 'component', 1, 47, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(53, 'mainmenu', 'Registration', 'registration', 'index.php?option=com_user&view=register', 'component', -2, 0, 14, 2, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(54, 'mainmenu', 'Remind', 'remind', 'index.php?option=com_user&view=remind', 'component', -2, 0, 14, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(55, 'mainmenu', 'Reset', 'reset', 'index.php?option=com_user&view=reset', 'component', -2, 0, 14, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(56, 'mainmenu', 'User', 'user', 'index.php?option=com_user&view=user', 'component', -2, 0, 14, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'welcome_desc=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(57, 'mainmenu', 'User Form', 'user-form', 'index.php?option=com_user&view=user&layout=form', 'component', -2, 0, 14, 2, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(65, 'frontpagemenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=2', 'component', 1, 0, 20, 0, 1, 63, '2011-10-11 06:34:20', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(66, 'frontpagemenu', 'Widgetkit', 'widgetkit', 'index.php?option=com_content&view=article&id=14', 'component', 1, 0, 20, 0, 2, 63, '2011-10-11 06:17:02', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(67, 'frontpagemenu', 'Icons', 'icons', 'index.php?option=com_content&view=article&id=11', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(68, 'frontpagemenu', 'ZOO', 'zoo', 'index.php?option=com_content&view=article&id=10', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(69, 'mainmenu', 'Profile Wood || Color Red', 'profile-wood', 'index.php?option=com_content&view=article&id=1&Itemid=1&profile=wood', 'url', -2, 0, 0, 1, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=icon_profile01.png\n\n', 0, 0, 0),
(70, 'mainmenu', 'Profile White || Color Blue', 'profile-white', 'index.php?option=com_content&view=article&id=1&Itemid=1&profile=white', 'url', -2, 0, 0, 1, 23, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=icon_profile07.png\n\n', 0, 0, 0),
(71, 'mainmenu', 'Profile Wall || Color Green', 'profile-wall', 'index.php?option=com_content&view=article&id=1&Itemid=1&profile=wall', 'url', -2, 0, 0, 1, 22, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=icon_profile06.png\n\n', 0, 0, 0),
(72, 'mainmenu', 'Profile Black || Color Pink', 'profile-black', 'index.php?option=com_content&view=article&id=1&Itemid=1&profile=black', 'url', -2, 0, 0, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=icon_profile08.png\n\n', 0, 0, 0),
(73, 'mainmenu', 'Profile Space || Color Yellow', 'profile-space', 'index.php?option=com_content&view=article&id=1&Itemid=1&profile=space', 'url', -2, 0, 0, 1, 20, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=icon_profile04.png\n\n', 0, 0, 0),
(74, 'mainmenu', 'Profile Tarmac || Color Blue', 'profile-tarmac', 'index.php?option=com_content&view=article&id=1&Itemid=1&profile=tarmac', 'url', -2, 0, 0, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=icon_profile03.png\n\n', 0, 0, 0),
(75, 'mainmenu', 'Profile Red || Color Green', 'profile-red', 'index.php?option=com_content&view=article&id=1&Itemid=1&profile=red', 'url', -2, 0, 0, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=icon_profile02.png\n\n', 0, 0, 0),
(76, 'mainmenu', 'Profile Blue || Color Green', 'profile-blue', 'index.php?option=com_content&view=article&id=1&Itemid=1&profile=blue', 'url', -2, 0, 0, 1, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=icon_profile05.png\n\n', 0, 0, 0),
(77, 'mainmenu', 'Slideset', 'slideset', 'index.php?option=com_content&view=article&id=19', 'component', -2, 0, 20, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(78, 'mainmenu', 'Gallery', 'gallery', 'index.php?option=com_content&view=article&id=20', 'component', -2, 0, 20, 1, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(79, 'mainmenu', 'Map', 'map', 'index.php?option=com_content&view=article&id=21', 'component', -2, 0, 20, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(80, 'mainmenu', 'Accordion', 'accordion', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 1, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(81, 'mainmenu', 'Media Player', 'media-player', 'index.php?option=com_content&view=article&id=23', 'component', -2, 0, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(82, 'mainmenu', 'Our Service', 'our-service', 'index.php?option=com_content&view=section&layout=blog&id=2', 'component', 1, 0, 20, 0, 50, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=8\nnum_columns=2\nnum_links=4\norderby_pri=order\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=0\nlink_section=\nshow_category=1\nlink_category=1\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'topmenu', 'Top Menu', ''),
(3, 'sidebarmenu', 'Sidebar Menu', ''),
(4, 'frontpagemenu', 'Frontpage Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 63, '2011-10-11 06:41:13', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 63, '2011-10-11 07:55:18', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 63, '2011-10-11 07:55:01', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 62, '2011-09-23 19:31:22', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 63, '2011-10-11 07:54:44', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 63, '2011-10-11 07:55:33', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Top A', '', 2, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-line\n\n', 0, 0, ''),
(17, 'Top A', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-line</code>', 3, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-line\n\n', 0, 0, ''),
(18, 'Top A', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-line</code>', 4, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-line\n\n', 0, 0, ''),
(19, 'Top A', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-line</code>', 5, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-line\n\n', 0, 0, ''),
(28, 'Audio || Listen our audio', '<p><audio src="media/mp3/1.mp3" type="audio/mp3" class="/mp3/mp3"></audio></p>', 10, 'menu', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=badge-top\n\n', 0, 0, ''),
(32, 'Inner Top', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-inverted</code>', 0, 'innertop', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-inverted\n\n', 0, 0, ''),
(33, 'Inner Top', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-inverted</code>', 2, 'innertop', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-inverted\n\n', 0, 0, ''),
(34, 'Inner Bottom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>icon-cart</code>', 3, 'innerbottom', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=icon-cart\n\n', 0, 0, ''),
(36, 'Sidebar A', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 6, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(35, 'Inner Bottom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code> <code>icon-login</code>', 2, 'innerbottom', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=icon-login\n\n', 0, 0, ''),
(38, 'Sidebar B', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-line</code>', 2, 'sidebar-b', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-line\n\n', 0, 0, ''),
(37, 'Sidebar A', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-box</code>', 5, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(40, 'Search', '', 1, 'search', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 1, 'moduleclass_sfx=\nwidth=20\ntext=\nbutton=\nbutton_pos=right\nimagebutton=\nbutton_text=\nset_itemid=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(39, 'Sidebar B', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-line</code> <code>icon-comment</code>', 0, 'sidebar-b', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-line icon-comment\n\n', 0, 0, ''),
(41, 'Logo', '<div class="custom-logo"></div>', 1, 'logo', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(42, 'Tentang kami', '', 9, 'menu', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 0, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', 0, 0, ''),
(46, 'Sidebar Menu', '', 4, 'sidebar-a', 62, '2011-05-04 14:16:51', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=sidebarmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(43, 'Footer', 'Built with HTML5 and CSS3\r\n<br/>Copyright &copy; 2011 <a href="http://www.yootheme.com" target="_blank">YOOtheme</a>', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(103, 'Widgetkit', '', 2, 'toolbar-l', 0, '0000-00-00 00:00:00', 1, 'mod_widgetkit', 0, 0, 0, 'widget_id=33\nmoduleclass_sfx=\n\n', 0, 0, ''),
(104, 'Twitter List', '', 0, 'top-a', 0, '0000-00-00 00:00:00', 0, 'mod_widgetkit_twitter', 0, 0, 0, 'style=list\nfrom_user=yootheme\nto_user=\nref_user=\nhashtag=\nword=\nnots=\nlimit=4\nimage_size=48\nshow_image=1\nshow_author=1\nshow_date=1\nmoduleclass_sfx=\n\n', 0, 0, ''),
(105, 'Get Widgetkit', '<a class="display-block text-center" href="http://www.yootheme.com/blog/item/root/introducing-widgetkit" target="_blank"><img class="size-auto" src="images/yootheme/widgetkit_icon.png" alt="The next generation tool set for Joomla 1.5, Joomla 1.6 and WordPress" title="The next generation tool set for Joomla 1.5, Joomla 1.6 and WordPress" width="140" height="130" /></a>\r\n\r\n<p>The next generation tool set for Joomla 1.5, Joomla 1.6 and WordPress</p>\r\n\r\n<p><a class="button-more" href="http://www.yootheme.com/blog/item/root/introducing-widgetkit" target="_blank">Visit Website</a></p>', 2, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=badge-new style-inverted\n\n', 0, 0, ''),
(44, 'Top Menu', '', 1, 'toolbar-l', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(45, 'Footer Menu', '', 1, 'footer', 63, '2011-10-11 07:52:58', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(48, 'Latest News', '', 10, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_latestnews', 0, 0, 1, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=\ncatid=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(47, 'Headerbar', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 'headerbar', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(49, 'List Line', '<p>Use the CSS class <code>line</code> to create this list style.</p>\r\n\r\n<ul class="line">\r\n	<li>Item 1</li>\r\n	<li>Item 2</li>\r\n	<li>Item 3</li>\r\n	<li>Item 4</li>\r\n	<li>Item 5</li>\r\n</ul>', 7, 'sidebar-a', 62, '2011-05-02 13:19:26', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(50, 'List Zebra', '<p>Use the CSS class <code>zebra</code> to create this list style.</p>\r\n\r\n<ul class="zebra">\r\n	<li class="odd">Item 1</li>\r\n	<li>Item 2</li>\r\n	<li class="odd">Item 3</li>\r\n	<li>Item 4</li>\r\n	<li class="odd">Item 5</li>\r\n</ul>', 8, 'sidebar-a', 62, '2011-05-02 13:19:43', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(51, 'Breadcrumbs', '', 0, 'breadcrumbs', 63, '2011-10-11 13:17:42', 1, 'mod_breadcrumbs', 0, 0, 1, 'showHome=1\nhomeText=Home\nshowLast=1\nseparator=\nmoduleclass_sfx=\ncache=0\n\n', 0, 0, ''),
(52, 'Login', '', 11, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', 0, 0, ''),
(65, 'Download ZOO', '<a class="display-block text-center" href="http://www.yootheme.com/zoo" target="_blank"><img class="size-auto" src="images/yootheme/zoo_icon.png" alt="A flexible and powerful content application builder to manage your content" title="A flexible and powerful content application builder to manage your content" width="140" height="130" /></a>\r\n\r\n<p>A flexible and powerful content application builder to manage your content.</p>\r\n\r\n<p><a class="button-more" href="http://www.yootheme.com/zoo" target="_blank">Download ZOO</a></p>', 12, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=badge-free style-inverted\n\n', 0, 0, ''),
(64, 'List Check', '<p>Use the CSS class <code>check</code> to create this list style.</p>\r\n\r\n<ul class="check">\r\n	<li>Item 1</li>\r\n	<li>Item 2</li>\r\n	<li>Item 3</li>\r\n	<li>Item 4</li>\r\n	<li>Item 5</li>\r\n</ul>', 9, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(89, 'Sidebar B', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>style-line</code>', 3, 'sidebar-b', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-line\n\n', 0, 0, ''),
(78, 'ZOO Warning', '<p class="box-warning">This ZOO app is only shown for demonstration purpose. It''s NOT included in this theme. However you can puchase this <a href="http://www.yootheme.com/zoo" target="_blank">ZOO app</a>.</p>', 10, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=style-blank\n\n', 0, 0, ''),
(83, 'Icon Freebies', '<ul class="line text-center">\r\n	<li>\r\n		<a href="http://www.yootheme.com/icons" target="_blank">\r\n			<figure>\r\n				<img class="size-auto" height="120" width="180" src="images/yootheme/icons_socialbookmarks.png" alt="Social Bookmarks Icons">\r\n				<figcaption>Social Bookmarks Icons</figcaption>\r\n			</figure>\r\n		</a>\r\n	</li>\r\n	<li>\r\n		<a href="http://www.yootheme.com/icons" target="_blank">\r\n			<figure>\r\n				<img class="size-auto" height="120" width="180" src="images/yootheme/icons_halloween.png" alt="Halloween Icons">\r\n				<figcaption>Halloween Icons</figcaption>\r\n			</figure>\r\n		</a>\r\n	</li>\r\n	<li>\r\n		<a href="http://www.yootheme.com/icons" target="_blank">\r\n			<figure>\r\n				<img class="size-auto" height="120" width="180" src="images/yootheme/icons_html5geekmatt.png" alt="HTML5 Geek Icon">\r\n				<figcaption>HTML5 Geek Icon</figcaption>\r\n			</figure>\r\n		</a>\r\n	</li>\r\n</ul>', 18, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=badge-free\n\n', 0, 0, ''),
(84, 'Icons Shipping', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n	<figure class="remove-margin">\r\n		<img class="size-auto" height="120" width="180" src="images/yootheme/icons_shipping.png" alt="Shipping Icons">\r\n		<figcaption>Shipping Icons</figcaption>\r\n	</figure>\r\n</a>', 6, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=style-blank\n\n', 0, 0, ''),
(85, 'Icons Action', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n	<figure class="remove-margin">\r\n		<img class="size-auto" height="120" width="180" src="images/yootheme/icons_actions.png" alt="Action Icons">\r\n		<figcaption>Action Icons</figcaption>\r\n	</figure>\r\n</a>', 8, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=style-blank\n\n', 0, 0, ''),
(87, 'Icons Box', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n	<figure class="remove-margin">\r\n		<img class="size-auto" height="120" width="180" src="images/yootheme/icons_box.png" alt="Box Icons">\r\n		<figcaption>Box Icons</figcaption>\r\n	</figure>\r\n</a>', 9, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=style-blank\n\n', 0, 0, ''),
(86, 'Icons E-Commerce', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n	<figure class="remove-margin">\r\n		<img class="size-auto" height="120" width="180" src="images/yootheme/icons_ecommerce.png" alt="E-Commerce Icons">\r\n		<figcaption>E-Commerce Icons</figcaption>\r\n	</figure>\r\n</a>', 7, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=style-blank\n\n', 0, 0, ''),
(88, 'Sub Menu', '', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=1\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(90, 'Warp Framework', '<a class="display-block text-center" href="http://www.yootheme.com/warp" target="_blank"><img class="size-auto" src="images/yootheme/features_warp_icon.png" alt="Warp is a fast and slick theme framework which provides a rich tool set to develop cross-platform themes" title="Warp is a fast and slick theme framework which provides a rich tool set to develop cross-platform themes" width="140" height="130" /></a>\r\n\r\n<p>A fast and slick theme framework built on the latest web techniques like HTML5, CSS3 and PHP 5.2+</p>\r\n\r\n<p><a class="button-more" href="http://www.yootheme.com/warp" target="_blank">Visit Website</a></p>', 19, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(91, 'Warp Features', '<p>All Warp features are available in this theme:</p>\r\n\r\n<ul class="check">\r\n	<li>Fast and Lightweight</li>\r\n	<li>Mobile Theme</li>\r\n	<li>Update Notifications</li>\r\n	<li>HTML5 markup</li>\r\n	<li>RTL Support</li>\r\n	<li>CSS Framework</li>\r\n	<li>Nice Admin UI</li>\r\n	<li>File Minification</li>\r\n</ul>', 20, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(92, 'JavaScript Library', 'All client side effects use the JavaScript framework <a href="http://www.jquery.com" target="_blank">jQuery</a> which offers most reliable functionality and compact size!', 21, 'sidebar-a', 62, '2011-07-29 16:33:39', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=color-black\n\n', 0, 0, ''),
(93, 'Frontpage Headline', '<div class="demoteaser text-center">\r\n    <h1 class="webfont-arvo">Cheap. Quick. Satisfy</h1>\r\n    <p>Turn on Your Promotion With a Website</p>\r\n</div>', 0, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=style-blank\n\n', 0, 0, ''),
(108, 'Logo Footer', '<img src="images/yootheme/logo_footer.png" width="40" height="65" alt="logo" />', 1, 'logo-footer', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(109, 'Frontpage Menu', '', 22, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'menutype=frontpagemenu\nmenu_style=list\nstartLevel=0\nendLevel=10\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(110, 'Social Bookmarks', '<div id="custombookmarks">\r\n<h3>Want to stay informed? Follow us.</h3>\r\n<div class="icons-social"></div>\r\n</div>', 0, 'top-b', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=color-black\n\n', 0, 0, ''),
(143, 'QLUE Panel', '', 0, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_qPanel', 0, 0, 0, 'categoryId=1\norderBy=article\nnumberPanel=1\npanelName=Our Promo\n\n', 0, 0, ''),
(97, 'App Store', '<img style="margin: 0 15px 0 -20px; float: left;" src="images/yootheme/home_icon_os.png" width="75" height="73">\r\n<div class="bfc-o">\r\n	<h3 class="module-title remove-margin">App Store</h3>\r\n	<p class="remove-margin-b">Available for iOS and Android devices.</p>\r\n</div>', 0, 'bottom-b', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(98, 'Need a present?', '<img style="margin: 0 15px 0 -20px; float: left;" src="images/yootheme/home_icon_gift.png" width="75" height="73">\r\n<div class="bfc-o">\r\n	<h3 class="module-title remove-margin">Need a present?</h3>\r\n	<p class="remove-margin-b">Make your friends happy with our Apps.</p>\r\n</div>', 3, 'bottom-b', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(99, 'Mobile Devices', '<img style="margin: 0 15px 0 -20px; float: left;" src="images/yootheme/home_icon_mobile.png" width="75" height="73">\r\n<div class="bfc-o">\r\n	<h3 class="module-title remove-margin">Mobile Devices</h3>\r\n	<p class="remove-margin-b">All Apps optimized for iPhone and iPad.</p>\r\n</div>', 2, 'bottom-b', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(106, 'Twitter Bubbles', '', 0, 'toolbar-l', 0, '0000-00-00 00:00:00', 0, 'mod_widgetkit_twitter', 0, 0, 0, 'style=bubbles\nfrom_user=budiperkasa\nto_user=\nref_user=\nhashtag=\nword=\nnots=\nlimit=4\nimage_size=48\nshow_image=1\nshow_author=1\nshow_date=1\nmoduleclass_sfx=\n\n', 0, 0, ''),
(107, 'Twitter Single', '', 0, 'top-a', 0, '0000-00-00 00:00:00', 0, 'mod_widgetkit_twitter', 0, 0, 0, 'style=single\nfrom_user=budiperkasa\nto_user=\nref_user=\nhashtag=\nword=\nnots=\nlimit=4\nimage_size=48\nshow_image=0\nshow_author=0\nshow_date=0\nmoduleclass_sfx=style-blank\n\n', 0, 0, ''),
(111, 'Editors Choice', '<p style="margin-top: 25px;" class="text-center">“These apps are well designed and easy to use. Its so great to get this high quality for this low price.”</p>\r\n<img class="align-center" width="92" height="11" alt="Rating" src="images/yootheme/home_rating.png" />\r\n<p class="text-center" style="font-size: 12px; font-style: italic;">Matt Aalhuis, <a href="#">App User</a></p>', 23, 'sidebar-a', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style-blank icon-comment\n\n', 0, 0, ''),
(112, 'Frontpage Slideset', '', 12, 'top-a', 0, '0000-00-00 00:00:00', 1, 'mod_widgetkit', 0, 0, 0, 'widget_id=2\nmoduleclass_sfx=style-blank\n\n', 0, 0, ''),
(114, 'Social Icons', '<p><p>Shelf comes with four social Icons:</p>\r\n\r\n<div class="icons-social">\r\n	<a class="twitter" href="#"></a>\r\n	<a class="facebook" href="#"></a>\r\n	<a class="dribbble" href="#"></a>\r\n	<a class="rss" href="#"></a>\r\n</div>\r\n\r\n<p>You can add them using the following code:</p>\r\n\r\n<pre>\r\n&lt;div class=&quot;icons-social&quot;&gt;\r\n	&lt;a class=&quot;twitter&quot; href=&quot;#&quot;&gt;&lt;/a&gt;\r\n	&lt;a class=&quot;facebook&quot; href=&quot;#&quot;&gt;&lt;/a&gt;\r\n	&lt;a class=&quot;dribbble&quot; href=&quot;#&quot;&gt;&lt;/a&gt;\r\n	&lt;a class=&quot;rss&quot; href=&quot;#&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;\r\n</pre>\r\n\r\n\r\n<p>Possible class names are <strong>twitter, facebook, dribbble</strong> and <strong>rss</strong>.</p>', 4, 'innerbottom', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=color-black\n\n', 0, 0, ''),
(116, 'Login || Module Position ', '', 2, 'toolbar-r', 62, '2011-09-23 18:47:10', 1, 'mod_cd_login', 0, 0, 0, 'moduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\ncache=0\ndefine_links=0\ndisplay_links=1\nlink_new_account=\nlink_forgot_username=\nlink_forgot_password=\ncd_login_border=none\noutlineType=outer-glow\nanchor=bottom-right\nalign=center\ndimmingOpacity=0\n\n', 0, 0, ''),
(127, 'Design || Pilih desain', '<p><iframe width="270" height="177" src="http://www.youtube.com/embed/vsLSyVrA6KY" frameborder="0" allowfullscreen="true"></iframe></p>', 12, 'menu', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=style-blank\n\n', 0, 0, ''),
(125, 'Education / News', '', 4, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_cd_latestnews', 0, 0, 0, 'moduleclass_sfx=\ncd_latestnews_html_content_width=600px\ncache=0\ntype=1\nshow_front=1\ncount=5\ncatid=1\nsecid=1\ncd_latestnews_set_title=title\ncd_latestnews_titlelimit=0\noutlineType=rounded-white\nanchor=auto\nalign=center\ndimmingOpacity=0\ncd_poweredby=1\n\n', 0, 0, ''),
(128, 'Portfolio || See our portfolio', '', 3, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_galleryview', 0, 0, 1, 'moduleclass_sfx=\nloadjq=0\nload_scripts=1\nuniuqe_id=\npath=images/portfolio\nheight=267\nwidth=270\ntheme=light\nshow_film=1\nthumb_gen=0\ntransition_interval=6000\nthumb_width=20\ntrans_speed=400\nbgcolor=#000000\nborder_color=#000000\n\n', 0, 0, ''),
(129, 'Polaroid', '', 2, 'menu', 0, '0000-00-00 00:00:00', 0, 'mod_widgetkit', 0, 0, 0, 'widget_id=25\nmoduleclass_sfx=\n\n', 0, 0, ''),
(130, 'Spotlight', '<p><a data-spotlight="effect:fade;" href="mypage.html"> <img style="float: left;" alt="banner badge" src="images/yootheme/widgetkit/spotlight/banner_badge.png" height="108" width="71" /></a></p>', 0, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(132, 'ZOO Item', '', 1, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zooitem', 0, 0, 1, 'media_position=left\ncount=4\n', 0, 0, ''),
(133, 'ZOO Comment', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zoocomment', 0, 0, 1, 'count=10\nshow_avatar=1\navatar_size=40\nshow_author=1\nshow_meta=1\n', 0, 0, ''),
(134, 'ZOO Tag', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zootag', 0, 0, 1, 'count=10\norder=alpha\n', 0, 0, ''),
(135, 'ZOO Category', '', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zoocategory', 0, 0, 1, '', 0, 0, ''),
(136, 'ZOO Quick Icons', '', 2, 'icon', 63, '2011-10-11 07:54:53', 1, 'mod_zooquickicon', 0, 2, 1, '', 0, 1, ''),
(137, 'ZOO Accordion', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zooaccordion', 0, 0, 1, 'media_position=left\ncount=4\n', 0, 0, ''),
(138, 'ZOO Carousel', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zoocarousel', 0, 0, 1, 'layout=default\nmedia_position=left\ncount=4\n', 0, 0, ''),
(139, 'ZOO Drawer', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zoodrawer', 0, 0, 1, 'media_position=left\ncount=4\n', 0, 0, ''),
(140, 'ZOO Maps', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zoomaps', 0, 0, 1, 'media_position=middle\ncount=20\n', 0, 0, ''),
(141, 'ZOO Scroller', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_zooscroller', 0, 0, 1, 'media_position=left\ncount=4\n', 0, 0, ''),
(142, 'ZOO Slider', '', 10, 'left', 62, '2011-09-30 07:36:26', 0, 'mod_zooslider', 0, 0, 1, 'media_position=left\ncount=4\n', 0, 0, ''),
(144, 'Desain || Pilih desain', '', 3, 'menu', 0, '0000-00-00 00:00:00', 0, 'mod_galleryview', 0, 0, 0, 'moduleclass_sfx=\nloadjq=0\nload_scripts=1\nuniuqe_id=\npath=images/sample\nheight=267\nwidth=270\ntheme=light\nshow_film=1\nthumb_gen=0\ntransition_interval=6000\nthumb_width=20\ntrans_speed=400\nbgcolor=#000000\nborder_color=#000000\n\n', 0, 0, ''),
(145, 'Showcase || Choose Our Design', '', 3, 'menu', 62, '2011-10-11 01:18:09', 1, 'mod_showplus', 0, 0, 1, 'folder=images/showcase\nwidth=270\nheight=280\nalignment=center\norientation=horizontal\nbuttons=1\ncaptions=1\ndefcaption=\ndeflink=\ndelay=3000\nduration=800\ntransition=push\ntransition_easing=linear\ntransition_pan=100\ntransition_zoom=50\nmargin=\nborder_style=\nborder_width=\nborder_color=\npadding=\nthumb_width=20\nthumb_height=13\nthumb_cache=1\nthumb_folder=thumbs\nthumb_quality=85\nlabels=labels\nlabels_multilingual=0\nsort_criterion=labels-filename\nsort_order=0\nlibrary=default\nmoduleclass_sfx=\ndebug=0\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(28, 0),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 3),
(46, 28),
(46, 29),
(46, 30),
(46, 40),
(46, 41),
(46, 42),
(46, 43),
(46, 44),
(46, 45),
(46, 46),
(46, 47),
(46, 48),
(46, 49),
(46, 50),
(46, 51),
(46, 52),
(47, 3),
(48, 8),
(48, 17),
(48, 20),
(48, 21),
(49, 4),
(50, 4),
(51, 2),
(51, 3),
(51, 4),
(51, 6),
(51, 7),
(51, 8),
(51, 9),
(51, 10),
(51, 11),
(51, 12),
(51, 13),
(51, 14),
(51, 15),
(51, 16),
(51, 17),
(51, 18),
(51, 19),
(51, 20),
(51, 21),
(51, 22),
(51, 23),
(51, 24),
(51, 25),
(51, 26),
(51, 27),
(51, 28),
(51, 29),
(51, 30),
(51, 40),
(51, 41),
(51, 42),
(51, 43),
(51, 44),
(51, 45),
(51, 46),
(51, 47),
(51, 48),
(51, 49),
(51, 50),
(51, 51),
(51, 52),
(51, 53),
(51, 54),
(51, 55),
(51, 56),
(51, 57),
(51, 60),
(51, 61),
(51, 62),
(51, 63),
(51, 64),
(51, 77),
(51, 78),
(51, 79),
(51, 80),
(51, 81),
(52, 8),
(52, 17),
(52, 20),
(52, 21),
(64, 4),
(65, 7),
(65, 68),
(78, 10),
(78, 11),
(78, 12),
(78, 13),
(78, 14),
(78, 15),
(83, 6),
(83, 67),
(84, 6),
(84, 67),
(85, 6),
(85, 67),
(86, 6),
(86, 67),
(87, 6),
(87, 67),
(88, 2),
(88, 4),
(88, 8),
(88, 17),
(88, 18),
(88, 19),
(88, 20),
(88, 21),
(88, 22),
(88, 23),
(88, 24),
(88, 25),
(88, 26),
(88, 27),
(88, 53),
(88, 54),
(88, 55),
(88, 56),
(88, 57),
(88, 60),
(88, 61),
(88, 62),
(88, 63),
(88, 77),
(88, 78),
(88, 79),
(88, 80),
(88, 81),
(89, 3),
(90, 2),
(90, 65),
(91, 2),
(91, 65),
(92, 2),
(92, 65),
(93, 1),
(97, 1),
(98, 1),
(99, 1),
(103, 0),
(105, 60),
(105, 61),
(105, 62),
(105, 63),
(105, 66),
(105, 77),
(105, 78),
(105, 79),
(105, 80),
(105, 81),
(106, 0),
(107, 0),
(108, 0),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(114, 2),
(114, 65),
(116, 0),
(125, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_account_expiry`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_account_expiry` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `expiry_date` int(11) NOT NULL DEFAULT '0',
  `expiry_level` int(11) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `order_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_additional_links`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_additional_links` (
  `ordering` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_client_credit`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_client_credit` (
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `net_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_rate` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `currency` varchar(3) NOT NULL DEFAULT '',
  `ledger_code` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `auto_deduct` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vendor_id`,`entity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_configuration`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_configuration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `error_email` varchar(255) NOT NULL DEFAULT '',
  `date_format` varchar(20) NOT NULL DEFAULT '',
  `locale` varchar(100) NOT NULL DEFAULT '',
  `select_users_from_list` tinyint(4) NOT NULL DEFAULT '1',
  `default_user_groups` varchar(100) NOT NULL DEFAULT '',
  `cron_auth_token` varchar(32) NOT NULL DEFAULT '',
  `version_auto_check` tinyint(4) NOT NULL DEFAULT '1',
  `auto_update` tinyint(4) NOT NULL DEFAULT '0',
  `default_start_date` char(2) NOT NULL DEFAULT 'BB',
  `switch_to_ssl` tinyint(4) NOT NULL DEFAULT '0',
  `all_pages_ssl` tinyint(4) NOT NULL DEFAULT '0',
  `email_invoice_option` char(2) NOT NULL DEFAULT 'AA',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_nbill_configuration`
--

INSERT INTO `jos_nbill_configuration` (`id`, `error_email`, `date_format`, `locale`, `select_users_from_list`, `default_user_groups`, `cron_auth_token`, `version_auto_check`, `auto_update`, `default_start_date`, `switch_to_ssl`, `all_pages_ssl`, `email_invoice_option`) VALUES
(1, '', 'd/m/Y', '', 1, '', '4r7jw5gth', 1, 0, 'BB', 0, 0, 'EE');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_contact`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `address_1` varchar(100) NOT NULL DEFAULT '',
  `address_2` varchar(100) NOT NULL DEFAULT '',
  `address_3` varchar(100) NOT NULL DEFAULT '',
  `town` varchar(50) NOT NULL DEFAULT '',
  `state` varchar(50) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `email_address` varchar(100) NOT NULL DEFAULT '',
  `email_address_2` varchar(100) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `telephone_2` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `notes` text,
  `custom_fields` text,
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_currency`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_currency` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(3) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `symbol` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_nbill_currency`
--

INSERT INTO `jos_nbill_currency` (`id`, `code`, `description`, `symbol`) VALUES
(1, 'GBP', 'British Pounds (Sterling)', '&#163;'),
(2, 'USD', 'US Dollars', '&#36;'),
(3, 'EUR', 'Euros', '&#8364;'),
(4, 'CAD', 'Canadian Dollars', '&#36;'),
(5, 'IDR', 'Rupiah', 'Rp');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_discounts`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_discounts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_fee` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `discount_name` varchar(255) NOT NULL DEFAULT '',
  `display_name` varchar(255) NOT NULL DEFAULT '',
  `time_limited` tinyint(4) NOT NULL DEFAULT '0',
  `start_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `global` tinyint(4) NOT NULL DEFAULT '1',
  `logged_in_only` tinyint(4) NOT NULL DEFAULT '0',
  `shipping_discount` tinyint(4) NOT NULL DEFAULT '0',
  `percentage` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `apply_to` varchar(5) NOT NULL DEFAULT 'net',
  `is_compound` tinyint(4) NOT NULL DEFAULT '1',
  `exclusive` tinyint(4) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '0',
  `voucher` varchar(100) NOT NULL DEFAULT '',
  `recurring` tinyint(4) NOT NULL DEFAULT '0',
  `add_to_renewals` tinyint(4) NOT NULL DEFAULT '0',
  `available` tinyint(4) NOT NULL DEFAULT '1',
  `unavailable_when_used` tinyint(4) NOT NULL DEFAULT '0',
  `prerequisite_products` varchar(100) NOT NULL DEFAULT '',
  `disqualifying_products` varchar(100) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT 'WW',
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_discount_currency_amount`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_discount_currency_amount` (
  `discount_id` int(11) unsigned NOT NULL,
  `currency` varchar(3) NOT NULL,
  `amount` decimal(20,6) NOT NULL,
  `min_order_value` decimal(20,6) NOT NULL,
  PRIMARY KEY (`discount_id`,`currency`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_display_options`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_display_options` (
  `name` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_display_options`
--

INSERT INTO `jos_nbill_display_options` (`name`, `value`) VALUES
('admin_via_fe', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_document`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_document` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `document_type` char(2) NOT NULL DEFAULT 'IN',
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(11) NOT NULL DEFAULT '0',
  `document_no` varchar(30) NOT NULL DEFAULT '',
  `vendor_name` varchar(100) NOT NULL DEFAULT '',
  `vendor_address` text,
  `billing_name` varchar(100) NOT NULL DEFAULT '',
  `billing_address` text,
  `billing_country` char(2) NOT NULL DEFAULT '',
  `reference` varchar(100) NOT NULL DEFAULT '',
  `document_date` int(11) NOT NULL DEFAULT '0',
  `tax_abbreviation` varchar(10) NOT NULL DEFAULT '',
  `tax_desc` varchar(100) NOT NULL DEFAULT '',
  `tax_no` varchar(100) NOT NULL DEFAULT '',
  `tax_exemption_code` varchar(50) NOT NULL DEFAULT '',
  `currency` char(3) NOT NULL DEFAULT '',
  `total_net` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_tax` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_gross` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `quote_intro` text,
  `payment_instructions` text,
  `small_print` text,
  `paid_in_full` tinyint(4) NOT NULL DEFAULT '0',
  `partial_payment` tinyint(4) NOT NULL DEFAULT '0',
  `refunded_in_full` tinyint(4) NOT NULL DEFAULT '0',
  `partial_refund` tinyint(4) NOT NULL DEFAULT '0',
  `notes` text,
  `email_sent` int(11) NOT NULL DEFAULT '0',
  `written_off` tinyint(4) NOT NULL DEFAULT '0',
  `date_written_off` int(11) NOT NULL DEFAULT '0',
  `claim_tax_back` tinyint(4) NOT NULL DEFAULT '1',
  `show_invoice_paylink` tinyint(4) NOT NULL DEFAULT '0',
  `status` char(2) DEFAULT NULL,
  `correspondence` text,
  `payment_plan_id` int(11) unsigned NOT NULL DEFAULT '1',
  `pay_to_accept_quote` tinyint(4) NOT NULL DEFAULT '1',
  `quote_show_warning` tinyint(4) NOT NULL DEFAULT '1',
  `auto_create_orders` tinyint(4) NOT NULL DEFAULT '1',
  `auto_create_invoices` tinyint(4) NOT NULL DEFAULT '1',
  `auto_create_income` tinyint(4) NOT NULL DEFAULT '1',
  `related_quote_id` int(11) unsigned NOT NULL DEFAULT '0',
  `gateway_txn_id` int(11) unsigned NOT NULL DEFAULT '0',
  `uploaded_files` text,
  PRIMARY KEY (`id`),
  KEY `document_date` (`document_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_nbill_document`
--

INSERT INTO `jos_nbill_document` (`id`, `document_type`, `vendor_id`, `entity_id`, `document_no`, `vendor_name`, `vendor_address`, `billing_name`, `billing_address`, `billing_country`, `reference`, `document_date`, `tax_abbreviation`, `tax_desc`, `tax_no`, `tax_exemption_code`, `currency`, `total_net`, `total_tax`, `total_shipping`, `total_shipping_tax`, `total_gross`, `quote_intro`, `payment_instructions`, `small_print`, `paid_in_full`, `partial_payment`, `refunded_in_full`, `partial_refund`, `notes`, `email_sent`, `written_off`, `date_written_off`, `claim_tax_back`, `show_invoice_paylink`, `status`, `correspondence`, `payment_plan_id`, `pay_to_accept_quote`, `quote_show_warning`, `auto_create_orders`, `auto_create_invoices`, `auto_create_income`, `related_quote_id`, `gateway_txn_id`, `uploaded_files`) VALUES
(1, 'IN', 1, 1, '0001', 'WEBBLOWER', 'Jl. Kemakmuran Raya, Depok 2 Tengah', 'PT ALIKHLASCITRAUTAMA', '', 'ID', '', 1320253200, '', '', '', '', 'IDR', 1015000.000000, 0.000000, 0.000000, 0.000000, 1015000.000000, '', 'Enter payment instructions here (eg. bank details).', 'Enter any legal jargon here.', 0, 0, 0, 0, '', 1320311619, 0, 0, 1, 0, NULL, '', 1, 1, 1, 1, 1, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_document_items`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_document_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `document_id` int(11) unsigned NOT NULL DEFAULT '0',
  `entity_id` int(11) NOT NULL DEFAULT '0',
  `nominal_ledger_code` varchar(20) NOT NULL DEFAULT '',
  `product_description` varchar(255) NOT NULL DEFAULT '',
  `detailed_description` text,
  `net_price_per_unit` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `no_of_units` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `discount_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `discount_description` varchar(100) NOT NULL DEFAULT '',
  `net_price_for_item` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_rate_for_item` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_for_item` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_id` int(11) NOT NULL DEFAULT '0',
  `shipping_for_item` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_rate_for_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_for_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `gross_price_for_item` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_code` varchar(50) NOT NULL DEFAULT '',
  `quote_pay_freq` char(2) NOT NULL DEFAULT 'AA',
  `quote_auto_renew` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `quote_relating_to` varchar(255) NOT NULL DEFAULT '',
  `quote_unique_invoice` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `quote_mandatory` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `quote_awaiting_payment` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `quote_item_accepted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `quote_g_tx_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_nbill_document_items`
--

INSERT INTO `jos_nbill_document_items` (`id`, `vendor_id`, `document_id`, `entity_id`, `nominal_ledger_code`, `product_description`, `detailed_description`, `net_price_per_unit`, `no_of_units`, `discount_amount`, `discount_description`, `net_price_for_item`, `tax_rate_for_item`, `tax_for_item`, `shipping_id`, `shipping_for_item`, `tax_rate_for_shipping`, `tax_for_shipping`, `gross_price_for_item`, `product_code`, `quote_pay_freq`, `quote_auto_renew`, `quote_relating_to`, `quote_unique_invoice`, `quote_mandatory`, `quote_awaiting_payment`, `quote_item_accepted`, `quote_g_tx_id`) VALUES
(1, 1, 1, 1, '', 'Domain Name', '<br>', 95000.000000, 1.000000, 0.000000, '', 95000.000000, 0.000000, 0.000000, 0, 0.000000, 0.000000, 0.000000, 95000.000000, '002', 'AA', 1, '', 0, 0, 0, 0, 0),
(2, 1, 1, 1, '', 'Hosting 100Mb', '<br>', 120000.000000, 1.000000, 0.000000, '', 120000.000000, 0.000000, 0.000000, 0, 0.000000, 0.000000, 0.000000, 120000.000000, '003', 'AA', 1, '', 0, 0, 0, 0, 0),
(3, 1, 1, 1, '', 'Web Design', '<br>', 800000.000000, 1.000000, 0.000000, '', 800000.000000, 0.000000, 0.000000, 0, 0.000000, 0.000000, 0.000000, 800000.000000, '001', 'AA', 1, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_document_transaction`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_document_transaction` (
  `document_id` int(11) unsigned NOT NULL DEFAULT '0',
  `transaction_id` int(11) unsigned NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `net_amount` decimal(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `tax_rate_1` decimal(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `tax_amount_1` decimal(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `tax_rate_2` decimal(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `tax_amount_2` decimal(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `tax_rate_3` decimal(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `tax_amount_3` decimal(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `gross_amount` decimal(20,6) unsigned NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`document_id`,`transaction_id`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_email_log`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_email_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(2) NOT NULL DEFAULT 'AA',
  `entity_id` int(11) unsigned NOT NULL DEFAULT '0',
  `document_id` int(11) unsigned NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pending_order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `from` varchar(255) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `cc` varchar(255) NOT NULL DEFAULT '',
  `bcc` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `html` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entity_id` (`entity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_nbill_email_log`
--

INSERT INTO `jos_nbill_email_log` (`id`, `type`, `entity_id`, `document_id`, `order_id`, `pending_order_id`, `from`, `to`, `cc`, `bcc`, `timestamp`, `status`, `subject`, `message`, `html`) VALUES
(1, 'IN', 1, 1, 0, 0, 'webmaster@webblower.com', 'webmaster@porosnusantara.com', '', '', 1320311619, 'OK', 'Invoice 0001 from Webblower', 'Dear PT ALIKHLASCITRAUTAMA,\r\n\r\nThis e-mail is to inform you that a new invoice has been generated for you.\r\n\r\nYou can see all of your invoices online by logging in at http://webblower.com. If you no longer wish to receive your invoices by e-mail, simply log in and click on `My Profile` in the `My Account` area to set your preferences.\r\n\r\nRegards,\r\nWebblower', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_entity`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_entity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `primary_contact_id` int(11) unsigned NOT NULL DEFAULT '0',
  `add_name_to_invoice` tinyint(4) NOT NULL DEFAULT '0',
  `is_client` tinyint(4) NOT NULL DEFAULT '0',
  `is_supplier` tinyint(4) NOT NULL DEFAULT '0',
  `reference` varchar(50) NOT NULL DEFAULT '',
  `company_name` varchar(100) NOT NULL DEFAULT '',
  `address_1` varchar(100) NOT NULL DEFAULT '',
  `address_2` varchar(100) NOT NULL DEFAULT '',
  `address_3` varchar(100) NOT NULL DEFAULT '',
  `town` varchar(50) NOT NULL DEFAULT '',
  `state` varchar(50) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `default_language` varchar(10) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `default_currency` char(3) NOT NULL DEFAULT '',
  `tax_zone` varchar(5) NOT NULL DEFAULT '',
  `tax_exemption_code` varchar(50) NOT NULL DEFAULT '',
  `notes` text,
  `custom_fields` text,
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `country` (`country`),
  KEY `tax_zone` (`tax_zone`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_nbill_entity`
--

INSERT INTO `jos_nbill_entity` (`id`, `primary_contact_id`, `add_name_to_invoice`, `is_client`, `is_supplier`, `reference`, `company_name`, `address_1`, `address_2`, `address_3`, `town`, `state`, `country`, `postcode`, `default_language`, `website_url`, `default_currency`, `tax_zone`, `tax_exemption_code`, `notes`, `custom_fields`, `last_updated`) VALUES
(1, 0, 0, 1, 0, '', 'PT ALIKHLASCITRAUTAMA', 'Jl. Raya Gunung Putri Selatan No 28', '', '', 'Bogor', 'Jawa Barat', 'ID', '16810', '', 'www.alikhlascitrautama.com', '', '', '', '', NULL, 1320310868);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_entity_contact`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_entity_contact` (
  `entity_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `allow_update` tinyint(4) NOT NULL DEFAULT '1',
  `allow_orders` tinyint(4) NOT NULL DEFAULT '1',
  `allow_invoices` tinyint(4) NOT NULL DEFAULT '1',
  `allow_quotes` tinyint(4) NOT NULL DEFAULT '1',
  `allow_purchase_orders` tinyint(4) NOT NULL DEFAULT '1',
  `email_invoice_option` char(2) NOT NULL DEFAULT 'EE',
  `reminder_emails` tinyint(4) NOT NULL DEFAULT '1',
  `allow_reminder_opt_in` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_error_log`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_error_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `severity` varchar(15) NOT NULL DEFAULT '',
  `message` text,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `linenum` varchar(5) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_extensions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_type` varchar(50) NOT NULL DEFAULT '',
  `extension_name` varchar(100) NOT NULL DEFAULT '',
  `extension_title` varchar(100) NOT NULL DEFAULT '',
  `extension_description` varchar(255) NOT NULL DEFAULT '',
  `extension_date` varchar(50) NOT NULL DEFAULT '',
  `date_installed` int(11) NOT NULL DEFAULT '0',
  `version` varchar(50) NOT NULL DEFAULT '',
  `copyright` varchar(255) NOT NULL DEFAULT '',
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `author_website` varchar(255) NOT NULL DEFAULT '',
  `file_path_admin` varchar(255) NOT NULL DEFAULT '',
  `file_path_frontend` varchar(255) NOT NULL DEFAULT '',
  `setup_filename` varchar(100) NOT NULL DEFAULT '',
  `gateway_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_extensions_menu`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_extensions_menu` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `parent_id` varchar(20) NOT NULL DEFAULT '0',
  `main_menu_parent_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `text` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `extension_name` varchar(100) NOT NULL DEFAULT '',
  `favourite` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_gateway_tx`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_gateway_tx` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pending_order_id` varchar(100) NOT NULL DEFAULT '',
  `document_ids` varchar(255) NOT NULL DEFAULT '',
  `net_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_tax_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `user_ip` varchar(20) NOT NULL DEFAULT '',
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `form_id` int(11) NOT NULL DEFAULT '0',
  `other_params` text,
  `turn_on_auto_renew` tinyint(4) NOT NULL DEFAULT '0',
  `callback_file` varchar(255) NOT NULL DEFAULT '',
  `callback_function` varchar(255) NOT NULL DEFAULT '',
  `success_confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pending_order_id` (`pending_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_ledger_breakdown_guesses`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_ledger_breakdown_guesses` (
  `transaction_id` int(11) unsigned NOT NULL,
  `transaction_type` char(2) NOT NULL DEFAULT 'IN',
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_license`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license_key` varchar(255) NOT NULL DEFAULT '',
  `verifier` varchar(100) NOT NULL,
  `date_updated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_nbill_license`
--

INSERT INTO `jos_nbill_license` (`id`, `license_key`, `verifier`, `date_updated`) VALUES
(1, '', '1302091848p7s57c4288', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_menu`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `text` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `favourite` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `jos_nbill_menu`
--

INSERT INTO `jos_nbill_menu` (`id`, `parent_id`, `ordering`, `text`, `description`, `image`, `url`, `published`, `favourite`) VALUES
(1, -1, 1, 'NBILL_MNU_HOME', 'NBILL_MNU_HOME_DESC', '', '[NBILL_ADMIN]', 1, 0),
(2, -1, 2, 'NBILL_MNU_CONFIG', 'NBILL_MNU_CONFIG_DESC', '', '', 1, 0),
(3, 2, 0, 'NBILL_MNU_GLOBAL_CONFIG', 'NBILL_MNU_GLOBAL_CONFIG_DESC', '[NBILL_FE]/images/icons/config.gif', '[NBILL_ADMIN]&action=configuration', 1, 0),
(4, -1, 4, 'NBILL_MNU_BILLING', 'NBILL_MNU_BILLING_DESC', '', '', 1, 0),
(5, 2, 2, 'NBILL_MNU_VENDOR', 'NBILL_MNU_VENDOR_DESC', '[NBILL_FE]/images/icons/vendors.gif', '[NBILL_ADMIN]&action=vendors&task=view', 1, 1),
(6, 2, 1, 'NBILL_MNU_CURRENCIES', 'NBILL_MNU_CURRENCIES_DESC', '[NBILL_FE]/images/icons/currencies.gif', '[NBILL_ADMIN]&action=currency', 1, 0),
(7, 2, 3, 'NBILL_MNU_SALES_TAX', 'NBILL_MNU_SALES_TAX_DESC', '[NBILL_FE]/images/icons/tax.gif', '[NBILL_ADMIN]&action=vat', 1, 0),
(8, 2, 5, 'NBILL_MNU_SHIPPING', 'NBILL_MNU_SHIPPING_DESC', '[NBILL_FE]/images/icons/shipping.gif', '[NBILL_ADMIN]&action=shipping', 1, 0),
(9, 2, 4, 'NBILL_MNU_NOMINAL_LEDGER', 'NBILL_MNU_NOMINAL_LEDGER_DESC', '[NBILL_FE]/images/icons/ledger.gif', '[NBILL_ADMIN]&action=ledger', 1, 0),
(10, 4, 4, 'NBILL_MNU_CLIENTS', 'NBILL_MNU_CLIENTS_DESC', '[NBILL_FE]/images/icons/clients.gif', '[NBILL_ADMIN]&action=clients', 1, 1),
(11, 4, 6, 'NBILL_MNU_PRODUCT_CATS', 'NBILL_MNU_PRODUCT_CATS_DESC', '[NBILL_FE]/images/icons/categories.gif', '[NBILL_ADMIN]&action=categories', 1, 0),
(12, 4, 7, 'NBILL_MNU_PRODUCTS', 'NBILL_MNU_PRODUCTS_DESC', '[NBILL_FE]/images/icons/products.gif', '[NBILL_ADMIN]&action=products', 1, 1),
(13, 4, 8, 'NBILL_MNU_ORDERS', 'NBILL_MNU_ORDERS_DESC', '[NBILL_FE]/images/icons/orders.gif', '[NBILL_ADMIN]&action=orders', 1, 1),
(14, 4, 9, 'NBILL_MNU_INVOICES', 'NBILL_MNU_INVOICES_DESC', '[NBILL_FE]/images/icons/invoices.gif', '[NBILL_ADMIN]&action=invoices', 1, 1),
(15, -1, 5, 'NBILL_MNU_ACCOUNTING', 'NBILL_MNU_ACCOUNTING_DESC', '', '', 1, 0),
(16, 15, 1, 'NBILL_MNU_INCOME', 'NBILL_MNU_INCOME_DESC', '[NBILL_FE]/images/icons/income.gif', '[NBILL_ADMIN]&action=income', 1, 1),
(17, 15, 2, 'NBILL_MNU_EXPENDITURE', 'NBILL_MNU_EXPENDITURE_DESC', '[NBILL_FE]/images/icons/expenditure.gif', '[NBILL_ADMIN]&action=expenditure', 1, 1),
(18, -1, 6, 'NBILL_MNU_REPORTS', 'NBILL_MNU_REPORTS_DESC', '', '', 1, 0),
(19, 4, 10, 'NBILL_MNU_CREDIT_NOTES', 'NBILL_MNU_CREDIT_NOTES_DESC', '[NBILL_FE]/images/icons/credits.gif', '[NBILL_ADMIN]&action=credits&task=view', 1, 0),
(20, 15, 3, 'NBILL_MNU_AUDIT_LOG', 'NBILL_MNU_AUDIT_LOG_DESC', '[NBILL_FE]/images/icons/audit.gif', '[NBILL_ADMIN]&action=audit&task=view', 0, 0),
(21, -1, 3, 'NBILL_MNU_FRONT_END', 'NBILL_MNU_FRONT_END_DESC', '', '', 1, 0),
(22, 21, 4, 'NBILL_MNU_ORDER_FORMS', 'NBILL_MNU_ORDER_FORMS_DESC', '[NBILL_FE]/images/icons/forms.gif', '[NBILL_ADMIN]&action=orderforms&task=view', 1, 1),
(23, 21, 5, 'NBILL_MNU_GATEWAYS', 'NBILL_MNU_GATEWAYS_DESC', '[NBILL_FE]/images/icons/payment.gif', '[NBILL_ADMIN]&action=gateway', 1, 0),
(24, 2, 10, 'NBILL_MNU_BACKUP_RESTORE', 'NBILL_MNU_BACKUP_RESTORE_DESC', '[NBILL_FE]/images/icons/backup.gif', '[NBILL_ADMIN]&action=backup', 1, 1),
(25, 21, 6, 'NBILL_MNU_PENDING_ORDERS', 'NBILL_MNU_PENDING_ORDERS_DESC', '[NBILL_FE]/images/icons/pending.gif', '[NBILL_ADMIN]&action=pending', 1, 1),
(26, 21, 1, 'NBILL_MNU_DISPLAY_OPTIONS', 'NBILL_MNU_DISPLAY_OPTIONS_DESC', '[NBILL_FE]/images/icons/display.gif', '[NBILL_ADMIN]&action=display', 1, 0),
(27, 2, 7, 'NBILL_MNU_DISCOUNTS', 'NBILL_MNU_DISCOUNTS_DESC', '[NBILL_FE]/images/icons/discounts.gif', '[NBILL_ADMIN]&action=discounts', 1, 1),
(28, 18, 3, 'NBILL_MNU_TAX_SUMMARY', 'NBILL_MNU_TAX_SUMMARY_DESC', '[NBILL_FE]/images/icons/summary.gif', '[NBILL_ADMIN]&action=taxsummary', 1, 0),
(29, -1, 7, 'NBILL_MNU_EXTENSIONS', 'NBILL_MNU_EXTENSIONS_DESC', '', '[NBILL_ADMIN]&action=extensions', 1, 0),
(30, 29, 1, 'NBILL_MNU_EXTENSIONS_INSTALL', 'NBILL_MNU_EXTENSIONS_INSTALL_DESC', '[NBILL_FE]/images/icons/extensions.gif', '[NBILL_ADMIN]&action=extensions', 1, 0),
(31, 4, 5, 'NBILL_MNU_SUPPLIERS', 'NBILL_MNU_SUPPLIERS_DESC', '[NBILL_FE]/images/icons/suppliers.gif', '[NBILL_ADMIN]&action=suppliers', 1, 0),
(32, 4, 1, 'NBILL_MNU_CONTACTS', 'NBILL_MNU_CONTACTS_HELP', '[NBILL_FE]/images/icons/contacts.gif', '[NBILL_ADMIN]&action=contacts', 1, 0),
(33, 2, 11, 'NBILL_MNU_IO', 'NBILL_MNU_IO_DESC', '[NBILL_FE]/images/icons/io.gif', '', 1, 0),
(34, 33, 1, 'NBILL_MNU_IO_CLIENTS', 'NBILL_MNU_IO_CLIENTS_DESC', '[NBILL_FE]/images/icons/clients.gif', '[NBILL_ADMIN]&action=io&task=clients', 1, 0),
(35, 21, 2, 'NBILL_MNU_PROFILE_FIELDS', 'NBILL_MNU_PROFILE_FIELDS_DESC', '[NBILL_FE]/images/icons/profile_fields.gif', '[NBILL_ADMIN]&action=profile_fields', 1, 0),
(36, 18, 1, 'NBILL_MNU_TRANSACTION_REPORT', 'NBILL_MNU_TRANSACTION_REPORT_DESC', '[NBILL_FE]/images/icons/transactions.gif', '[NBILL_ADMIN]&action=transactions', 1, 0),
(37, 18, 2, 'NBILL_MNU_LEDGER_REPORT', 'NBILL_MNU_LEDGER_REPORT_DESC', '[NBILL_FE]/images/icons/ledger_report.gif', '[NBILL_ADMIN]&action=ledger_report', 1, 1),
(38, 2, 9, 'NBILL_MNU_REMINDERS', 'NBILL_MNU_REMINDERS_DESC', '[NBILL_FE]/images/icons/reminders.gif', '[NBILL_ADMIN]&action=reminders', 1, 0),
(39, 15, 3, 'NBILL_MNU_TX_SEARCH', 'NBILL_MNU_TX_SEARCH_HELP', '[NBILL_FE]/images/icons/tx_search.gif', '[NBILL_ADMIN]&action=tx_search', 1, 0),
(40, 18, 4, 'NBILL_MNU_SNAPSHOT', 'NBILL_MNU_SNAPSHOT_HELP', '[NBILL_FE]/images/icons/snapshot.gif', '[NBILL_ADMIN]&action=snapshot', 1, 0),
(41, 18, 5, 'NBILL_MNU_ANOMALY', 'NBILL_MNU_ANOMALY_HELP', '[NBILL_FE]/images/icons/anomaly.gif', '[NBILL_ADMIN]&action=anomaly', 1, 0),
(42, 15, 4, 'NBILL_MNU_RECONCILE', 'NBILL_MNU_RECONCILE_HELP', '[NBILL_FE]/images/icons/reconcile.gif', '[NBILL_ADMIN]&action=reconcile', 0, 0),
(43, 21, 3, 'NBILL_MNU_QUOTE_REQUEST', 'NBILL_MNU_QUOTE_REQUEST_DESC', '[NBILL_FE]/images/icons/quote_request.gif', '[NBILL_ADMIN]&action=quote_request&task=view', 1, 0),
(44, 4, 2, 'NBILL_MNU_POTENTIAL_CLIENTS', 'NBILL_MNU_POTENTIAL_CLIENTS_DESC', '[NBILL_FE]/images/icons/potential_clients.gif', '[NBILL_ADMIN]&action=potential_clients', 1, 0),
(45, 4, 3, 'NBILL_MNU_QUOTES', 'NBILL_MNU_QUOTES_DESC', '[NBILL_FE]/images/icons/quotes.gif', '[NBILL_ADMIN]&action=quotes', 1, 1),
(46, 2, 8, 'NBILL_MNU_PAYMENT_PLANS', 'NBILL_MNU_PAYMENT_PLANS_DESC', '[NBILL_FE]/images/icons/payment_plans.gif', '[NBILL_ADMIN]&action=payment_plans', 1, 0),
(47, -1, 8, 'NBILL_MNU_HELP', 'NBILL_MNU_HELP_DESC', '', '', 1, 0),
(48, 47, 1, 'NBILL_MNU_HELP_ABOUT', 'NBILL_MNU_HELP_ABOUT_DESC', '[NBILL_FE]/images/icons/about.gif', '[NBILL_ABOUT]', 1, 0),
(49, 47, 2, 'NBILL_MNU_HELP_DOCUMENTATION', 'NBILL_MNU_HELP_DOCUMENTATION_DESC', '[NBILL_FE]/images/icons/documentation.gif', '[NBILL_DOCUMENTATION]', 1, 0),
(50, 47, 3, 'NBILL_MNU_HELP_REGISTRATION', 'NBILL_MNU_HELP_REGISTRATION_DESC', '[NBILL_FE]/images/icons/registration.gif', '[NBILL_ADMIN]&action=registration', 1, 0),
(51, 47, 4, 'NBILL_MNU_HELP_SUPPORT', 'NBILL_MNU_HELP_SUPPORT_DESC', '[NBILL_FE]/images/icons/support.gif', '[NBILL_SUPPORT]', 1, 0),
(52, 18, 6, 'NBILL_MNU_EMAIL_LOG', 'NBILL_MNU_EMAIL_LOG_HELP', '[NBILL_FE]/images/icons/email_log.gif', '[NBILL_ADMIN]&action=email_log', 1, 0),
(53, 2, 7, 'NBILL_MNU_FEES', 'NBILL_MNU_FEES_DESC', '[NBILL_FE]/images/icons/fees.gif', '[NBILL_ADMIN]&action=fees', 1, 0),
(54, 2, 13, 'NBILL_MNU_HOUSEKEEPING', 'NBILL_MNU_HOUSEKEEPING_DESC', '[NBILL_FE]/images/icons/housekeeping.gif', '[NBILL_ADMIN]&action=housekeeping', 1, 0),
(55, 21, 7, 'NBILL_MNU_USER_ADMIN', 'NBILL_MNU_USER_ADMIN_DESC', '[NBILL_FE]/images/icons/user_admin.gif', '[NBILL_ADMIN]&action=user_admin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_nominal_ledger`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_nominal_ledger` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `code` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_orders`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(30) NOT NULL DEFAULT '',
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `client_id` int(11) unsigned NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL DEFAULT '0',
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `net_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `custom_tax_rate` decimal(20,6) DEFAULT NULL,
  `total_tax_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `custom_ledger_code` varchar(20) NOT NULL DEFAULT '',
  `quantity` decimal(20,6) NOT NULL DEFAULT '1.000000',
  `relating_to` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` int(11) NOT NULL DEFAULT '0',
  `shipping_service` varchar(100) NOT NULL DEFAULT '',
  `total_shipping_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `is_online` tinyint(4) NOT NULL DEFAULT '0',
  `tax_exemption_code` varchar(50) NOT NULL DEFAULT '',
  `start_date` int(11) NOT NULL DEFAULT '0',
  `payment_frequency` char(2) NOT NULL DEFAULT '',
  `auto_renew` tinyint(4) NOT NULL DEFAULT '1',
  `currency` char(3) NOT NULL DEFAULT '',
  `last_due_date` int(11) NOT NULL DEFAULT '0',
  `next_due_date` int(11) NOT NULL DEFAULT '0',
  `unique_invoice` tinyint(4) NOT NULL DEFAULT '0',
  `cancellation_reason` text,
  `order_status` char(2) NOT NULL DEFAULT 'BB',
  `expiry_date` int(11) NOT NULL DEFAULT '0',
  `cancellation_date` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `gateway_txn_id` int(11) NOT NULL DEFAULT '0',
  `auto_create_invoice` tinyint(4) NOT NULL DEFAULT '1',
  `auto_create_income` tinyint(4) NOT NULL DEFAULT '1',
  `discount_voucher` varchar(100) NOT NULL DEFAULT '',
  `form_field_values` text,
  `form_total_order_value` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_invoice_paylink` tinyint(4) NOT NULL DEFAULT '0',
  `parcel_tracking_id` varchar(255) NOT NULL DEFAULT '',
  `payment_plan_id` int(11) unsigned NOT NULL DEFAULT '1',
  `related_quote_id` int(11) unsigned NOT NULL DEFAULT '0',
  `related_quote_item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `uploaded_files` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_orders_discounts`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_orders_discounts` (
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `discount_id` int(11) unsigned NOT NULL DEFAULT '0',
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_orders_document`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_orders_document` (
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `document_item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `document_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`document_item_id`),
  KEY `document_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_order_form`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_order_form` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `logged_in_users_only` tinyint(4) NOT NULL DEFAULT '0',
  `prerequisite_products` varchar(100) NOT NULL DEFAULT '',
  `disqualifying_products` varchar(100) NOT NULL,
  `always_show` tinyint(4) NOT NULL DEFAULT '0',
  `email_pending_to_client` tinyint(4) NOT NULL DEFAULT '0',
  `email_confirmation_to_client` tinyint(4) NOT NULL DEFAULT '1',
  `email_admin` tinyint(4) NOT NULL DEFAULT '1',
  `email_admin_pending` tinyint(4) NOT NULL DEFAULT '1',
  `admin_email_to` varchar(255) NOT NULL DEFAULT '',
  `validation_code` text,
  `process_code` text,
  `pre_calculate_code` text,
  `post_calculate_code` text,
  `submit_code` text,
  `auto_create_orders` tinyint(4) NOT NULL DEFAULT '1',
  `auto_create_user` tinyint(4) NOT NULL DEFAULT '1',
  `use_email_address` tinyint(4) NOT NULL DEFAULT '0',
  `auto_create_invoice` tinyint(4) NOT NULL DEFAULT '1',
  `auto_create_income` tinyint(4) NOT NULL DEFAULT '1',
  `relating_to` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` varchar(10) NOT NULL DEFAULT '',
  `tax_exemption_code` varchar(30) NOT NULL DEFAULT '',
  `payment_frequency` varchar(10) NOT NULL DEFAULT '',
  `currency` varchar(10) NOT NULL DEFAULT '',
  `unique_invoice` varchar(10) NOT NULL DEFAULT '0',
  `auto_renew` varchar(10) NOT NULL DEFAULT '1',
  `expiry_date` varchar(30) DEFAULT NULL,
  `expire_after` varchar(10) NOT NULL DEFAULT '',
  `payment_gateway` varchar(255) NOT NULL DEFAULT '',
  `pending_until_paid` tinyint(4) NOT NULL DEFAULT '1',
  `discount_voucher_code` varchar(100) NOT NULL DEFAULT '',
  `order_creation_code` text,
  `auto_handle_shipping` tinyint(4) NOT NULL DEFAULT '1',
  `javascript_functions` text,
  `upload_path` varchar(255) NOT NULL DEFAULT '',
  `max_upload_size` int(10) unsigned NOT NULL DEFAULT '100',
  `allowed_types` varchar(255) NOT NULL DEFAULT '.jpg|.gif|.png|.bmp|.txt|.pdf|.odt|.doc|.csv|.xls',
  `attach_to_email` tinyint(4) NOT NULL DEFAULT '1',
  `thank_you_redirect` varchar(255) DEFAULT NULL,
  `thank_you_message` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `form_type` char(2) NOT NULL DEFAULT 'OR',
  `payment_plan_id` int(11) unsigned NOT NULL DEFAULT '1',
  `form_unavailable_message` text,
  `after_processing_code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_order_form_fields`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_order_form_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned NOT NULL DEFAULT '0',
  `page_no` int(11) unsigned NOT NULL DEFAULT '1',
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `field_type` char(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `x_pos` int(11) DEFAULT NULL,
  `y_pos` int(11) DEFAULT NULL,
  `z_pos` int(11) DEFAULT NULL,
  `label` text,
  `merge_columns` tinyint(4) NOT NULL DEFAULT '0',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `checkbox_text` text,
  `horizontal_options` tinyint(4) NOT NULL DEFAULT '0',
  `pre_field` text,
  `post_field` text,
  `default_value` text,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `help_text` text,
  `xref` varchar(50) NOT NULL DEFAULT '',
  `xref_sql` text,
  `confirmation` tinyint(4) NOT NULL DEFAULT '0',
  `related_product_cat` int(11) NOT NULL DEFAULT '0',
  `related_product` int(11) NOT NULL DEFAULT '0',
  `related_product_quantity` varchar(30) NOT NULL,
  `override_freq` tinyint(4) NOT NULL DEFAULT '0',
  `order_value` varchar(50) NOT NULL DEFAULT '',
  `value_required_for_order` varchar(255) NOT NULL DEFAULT '',
  `entity_mapping` varchar(50) NOT NULL DEFAULT '',
  `contact_mapping` varchar(50) NOT NULL DEFAULT '',
  `show_on_summary` tinyint(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_order_form_fields_options`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_order_form_fields_options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned NOT NULL DEFAULT '0',
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `option_value` varchar(255) NOT NULL DEFAULT '',
  `option_description` varchar(255) NOT NULL DEFAULT '',
  `related_product_cat` int(11) NOT NULL DEFAULT '0',
  `related_product` int(11) NOT NULL DEFAULT '0',
  `related_product_quantity` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_order_form_pages`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_order_form_pages` (
  `form_id` int(11) unsigned NOT NULL DEFAULT '0',
  `page_no` int(11) unsigned NOT NULL DEFAULT '1',
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `label_width` int(11) unsigned NOT NULL DEFAULT '1',
  `close_gaps` tinyint(4) NOT NULL DEFAULT '1',
  `min_width` int(11) unsigned NOT NULL DEFAULT '1',
  `intro` text,
  `footer` text,
  `onload` text,
  `external_js_files` text,
  `prev_pre_field` text,
  `prev_post_field` text,
  `prev_default_value` text,
  `prev_attributes` varchar(255) NOT NULL DEFAULT '',
  `prev_help_text` text,
  `prev_x_pos` int(11) unsigned NOT NULL DEFAULT '1',
  `prev_y_pos` int(11) unsigned NOT NULL DEFAULT '1',
  `prev_z_pos` int(11) unsigned NOT NULL DEFAULT '1',
  `next_pre_field` text,
  `next_post_field` text,
  `next_default_value` text,
  `next_attributes` varchar(255) NOT NULL DEFAULT '',
  `next_help_text` text,
  `next_x_pos` int(11) unsigned NOT NULL DEFAULT '1',
  `next_y_pos` int(11) unsigned NOT NULL DEFAULT '1',
  `next_z_pos` int(11) unsigned NOT NULL DEFAULT '1',
  `auto_tab` tinyint(4) NOT NULL DEFAULT '1',
  `page_submit_code` text,
  `legacy_renderer` tinyint(4) NOT NULL DEFAULT '0',
  `legacy_table_border` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`form_id`,`page_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_payment_gateway`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_payment_gateway` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(50) NOT NULL DEFAULT '',
  `g_key` varchar(255) NOT NULL DEFAULT '',
  `g_value` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `help_text` text,
  `required` tinyint(4) NOT NULL DEFAULT '1',
  `admin_can_edit` tinyint(4) NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gateway_id` (`gateway_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_nbill_payment_gateway`
--

INSERT INTO `jos_nbill_payment_gateway` (`id`, `gateway_id`, `g_key`, `g_value`, `label`, `help_text`, `required`, `admin_can_edit`, `ordering`) VALUES
(1, 'paypal', 'business', 'info@email.com', 'NBILL_PAYPAL_EMAIL', 'NBILL_PAYPAL_EMAIL_HELP', 1, 1, 1),
(3, 'paypal', 'sandbox', '0', 'NBILL_PAYPAL_SANDBOX', 'NBILL_PAYPAL_SANDBOX_HELP', 1, 1, 2),
(2, 'paypal', 'sra', '1', 'NBILL_PAYPAL_REATTEMPT', 'NBILL_PAYPAL_REATTEMPT_HELP', 0, 1, 3),
(6, 'paypal', 'notify_url', '[NBILL_FE_PAGE_PREFIX]&action=gateway&task=ipn&gateway=paypal', 'NBILL_PAYPAL_IPN_URL', 'NBILL_PAYPAL_IPN_URL_HELP', 0, 1, 6),
(7, 'paypal', 'include_breakdown', '0', 'NBILL_PAYPAL_INCLUDE_BREAKDOWN', 'NBILL_PAYPAL_INCLUDE_BREAKDOWN_HELP', 0, 1, 7),
(8, 'paypal', 'add_debug_info', '0', 'NBILL_PAYPAL_ADD_DEBUG_INFO', 'NBILL_PAYPAL_ADD_DEBUG_INFO_HELP', 0, 1, 8),
(9, 'paypal', 'gateway_description', 'NBILL_PAYPAL_DESC', '', '', 0, 0, 9),
(11, 'paypal', 'use_curl', '0', 'NBILL_PAYPAL_USE_CURL', 'NBILL_PAYPAL_USE_CURL_HELP', 0, 1, 10),
(12, 'paypal', 'verify_callback', '1', 'NBILL_PAYPAL_VERIFY_CALLBACK', 'NBILL_PAYPAL_VERIFY_CALLBACK_HELP', 0, 1, 11),
(13, 'paypal', 'success_url', '', 'NBILL_PAYPAL_SUCCESS_URL', 'NBILL_PAYPAL_SUCCESS_URL_HELP', 0, 1, 12),
(14, 'paypal', 'failure_url', '', 'NBILL_PAYPAL_FAILURE_URL', 'NBILL_PAYPAL_FAILURE_URL_HELP', 0, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_payment_gateway_config`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_payment_gateway_config` (
  `gateway_id` varchar(50) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `voucher_code` varchar(100) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`gateway_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_payment_gateway_config`
--

INSERT INTO `jos_nbill_payment_gateway_config` (`gateway_id`, `display_name`, `voucher_code`, `published`, `ordering`) VALUES
('offline', 'NBILL_ARRANGE_OFFLINE', '', 0, 0),
('paypal', 'Paypal', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_payment_plans`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_payment_plans` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) NOT NULL DEFAULT '',
  `plan_type` char(2) NOT NULL DEFAULT 'AA',
  `deposit_percentage` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `currency` char(3) NOT NULL DEFAULT '',
  `deposit_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `installment_frequency` char(2) NOT NULL DEFAULT 'AA',
  `no_of_installments` int(11) NOT NULL DEFAULT '0',
  `quote_default` tinyint(4) NOT NULL DEFAULT '0',
  `invoice_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_nbill_payment_plans`
--

INSERT INTO `jos_nbill_payment_plans` (`id`, `plan_name`, `plan_type`, `deposit_percentage`, `currency`, `deposit_amount`, `installment_frequency`, `no_of_installments`, `quote_default`, `invoice_default`) VALUES
(1, 'Payment In Full', 'AA', 0.000000, '', 0.000000, '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_pending_orders`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_pending_orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `form_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `existing_client` tinyint(4) NOT NULL DEFAULT '0',
  `tax_exemption_code` varchar(100) NOT NULL DEFAULT '',
  `relating_to` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` int(11) NOT NULL DEFAULT '0',
  `payment_frequency` char(2) NOT NULL DEFAULT '',
  `currency` char(3) NOT NULL DEFAULT '',
  `unique_invoice` tinyint(4) NOT NULL DEFAULT '0',
  `auto_renew` tinyint(4) NOT NULL DEFAULT '1',
  `expiry_date` int(11) DEFAULT NULL,
  `normal_tax_rate` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_gross` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `regular_total_gross` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `orders` text,
  `posted_values` text,
  `auto_email_invoice` tinyint(4) NOT NULL DEFAULT '0',
  `discount_voucher_code` varchar(100) NOT NULL DEFAULT '',
  `client_name` varchar(255) NOT NULL DEFAULT '',
  `ext_order_activation_code` text,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `client_id` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_product`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `product_code` varchar(50) NOT NULL DEFAULT '',
  `nominal_ledger_code` varchar(20) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '',
  `is_freebie` tinyint(4) NOT NULL DEFAULT '0',
  `allow_freq_change` tinyint(4) NOT NULL DEFAULT '0',
  `is_taxable` tinyint(4) NOT NULL DEFAULT '1',
  `custom_tax_rate` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `requires_shipping` tinyint(4) NOT NULL DEFAULT '0',
  `shipping_services` varchar(50) NOT NULL DEFAULT '',
  `shipping_units` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `auto_fulfil_orders` tinyint(4) NOT NULL DEFAULT '0',
  `existing_clients_only` tinyint(4) NOT NULL DEFAULT '0',
  `is_downloadable` tinyint(4) NOT NULL DEFAULT '0',
  `download_location` varchar(255) NOT NULL DEFAULT '',
  `no_of_days_available` int(11) NOT NULL DEFAULT '9999',
  `download_link_text` varchar(255) NOT NULL DEFAULT '',
  `download_location_2` varchar(255) NOT NULL DEFAULT '',
  `download_link_text_2` varchar(255) NOT NULL DEFAULT '',
  `download_location_3` varchar(255) NOT NULL DEFAULT '',
  `download_link_text_3` varchar(255) NOT NULL DEFAULT '',
  `email_downloads` tinyint(4) NOT NULL DEFAULT '1',
  `email_downloads_message` text,
  `is_sub` tinyint(4) NOT NULL DEFAULT '0',
  `user_group` int(11) NOT NULL DEFAULT '0',
  `multi_group` tinyint(4) NOT NULL DEFAULT '1',
  `expiry_level` int(11) NOT NULL DEFAULT '0',
  `expiry_redirect` varchar(255) NOT NULL DEFAULT '',
  `allow_global_discounts` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_nbill_product`
--

INSERT INTO `jos_nbill_product` (`id`, `vendor_id`, `category`, `product_code`, `nominal_ledger_code`, `name`, `description`, `image`, `is_freebie`, `allow_freq_change`, `is_taxable`, `custom_tax_rate`, `requires_shipping`, `shipping_services`, `shipping_units`, `auto_fulfil_orders`, `existing_clients_only`, `is_downloadable`, `download_location`, `no_of_days_available`, `download_link_text`, `download_location_2`, `download_link_text_2`, `download_location_3`, `download_link_text_3`, `email_downloads`, `email_downloads_message`, `is_sub`, `user_group`, `multi_group`, `expiry_level`, `expiry_redirect`, `allow_global_discounts`) VALUES
(1, 1, -1, '001', '0', 'Web Design', '<br>', '', 0, 0, 0, 0.000000, 0, '', 0.000000, 0, 0, 0, '', 9999, '', '', '', '', '', 1, NULL, 0, 0, 1, 0, '', 1),
(2, 1, -1, '002', '0', 'Domain Name', '<br>', '', 0, 0, 1, 0.000000, 0, '', 0.000000, 0, 0, 0, '', 9999, '', '', '', '', '', 1, NULL, 0, 0, 1, 0, '', 1),
(3, 1, -1, '003', '0', 'Hosting 100Mb', '<br>', '', 0, 0, 0, 0.000000, 0, '', 0.000000, 0, 0, 0, '', 9999, '', '', '', '', '', 1, NULL, 0, 0, 1, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_product_category`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_product_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_product_discount`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_product_discount` (
  `product_id` int(11) unsigned NOT NULL DEFAULT '0',
  `discount_id` int(11) unsigned NOT NULL DEFAULT '0',
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `quantity_required` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `multiply` tinyint(4) NOT NULL DEFAULT '1',
  `offset` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_product_price`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_product_price` (
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL DEFAULT '0',
  `currency_code` char(3) NOT NULL DEFAULT '',
  `net_price_setup_fee` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_one_off` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_weekly` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_four_weekly` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_monthly` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_quarterly` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_semi_annually` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_annually` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_biannually` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_five_years` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `net_price_ten_years` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`vendor_id`,`product_id`,`currency_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_product_price`
--

INSERT INTO `jos_nbill_product_price` (`vendor_id`, `product_id`, `currency_code`, `net_price_setup_fee`, `net_price_one_off`, `net_price_weekly`, `net_price_four_weekly`, `net_price_monthly`, `net_price_quarterly`, `net_price_semi_annually`, `net_price_annually`, `net_price_biannually`, `net_price_five_years`, `net_price_ten_years`) VALUES
(1, 1, 'GBP', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 1, 'USD', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 1, 'EUR', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 1, 'CAD', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 1, 'IDR', 0.000000, 800000.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 2, 'GBP', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 2, 'USD', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 2, 'EUR', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 2, 'CAD', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 2, 'IDR', 0.000000, 95000.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 3, 'GBP', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 3, 'USD', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 3, 'EUR', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 3, 'CAD', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000),
(1, 3, 'IDR', 0.000000, 120000.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_profile_fields`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_profile_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `field_type` char(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `label` text,
  `merge_columns` tinyint(4) NOT NULL DEFAULT '0',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `checkbox_text` text,
  `pre_field` text,
  `post_field` text,
  `default_value` text,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `help_text` text,
  `xref` varchar(50) NOT NULL DEFAULT '',
  `xref_sql` text,
  `confirmation` tinyint(4) NOT NULL DEFAULT '0',
  `entity_mapping` varchar(50) NOT NULL DEFAULT '',
  `contact_mapping` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `include_on_forms` tinyint(4) NOT NULL DEFAULT '1',
  `show_on_summary` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `jos_nbill_profile_fields`
--

INSERT INTO `jos_nbill_profile_fields` (`id`, `ordering`, `field_type`, `name`, `label`, `merge_columns`, `attributes`, `checkbox_text`, `pre_field`, `post_field`, `default_value`, `required`, `help_text`, `xref`, `xref_sql`, `confirmation`, `entity_mapping`, `contact_mapping`, `published`, `include_on_forms`, `show_on_summary`) VALUES
(1, 1, 'OO', 'NBILL_CORE_login', '', 1, 'style="border: solid 1px #cccccc;margin-left:auto;margin-right:auto;margin-bottom:10px;"', '', '', '<div class="nbill-login-box-outer"><div class="nbill-login-box-inner">$$return defined("NBILL_NOT_YET_REGISTERED") ? NBILL_NOT_YET_REGISTERED : "New Client? Please fill in your details below.";$$</div></div>', '', 0, '', '', NULL, 0, '', '', 1, 1, 0),
(2, 2, 'AA', 'NBILL_CORE_first_name', '* NBILL_FIRST_NAME', 0, '', '', '', '', '', 1, '', '', NULL, 0, '', 'first_name', 1, 1, 1),
(3, 3, 'AA', 'NBILL_CORE_last_name', '* NBILL_LAST_NAME', 0, '', '', '', '', '', 1, '', '', NULL, 0, '', 'last_name', 1, 1, 1),
(4, 4, 'EE', 'NBILL_CORE_add_name_to_invoice', 'NBILL_PRIMARY_CONTACT_NAME', 0, '', 'NBILL_CLIENT_ADD_NAME_TO_INVOICE', '', '', '', 0, '', '', NULL, 0, 'add_name_to_invoice', '', 1, 0, 1),
(5, 5, 'AA', 'NBILL_CORE_company_name', 'NBILL_COMPANY_NAME', 0, '', '', '', '', '', 0, '', '', NULL, 0, 'company_name', '', 1, 1, 1),
(6, 6, 'AA', 'NBILL_CORE_address_1', '* NBILL_ADDRESS_1', 0, '', '', '', '', '', 1, '', '', NULL, 0, 'address_1', 'address_1', 1, 1, 1),
(7, 7, 'AA', 'NBILL_CORE_address_2', 'NBILL_ADDRESS_2', 0, '', '', '', '', '', 0, '', '', NULL, 0, 'address_2', 'address_2', 1, 1, 1),
(8, 8, 'AA', 'NBILL_CORE_address_3', 'NBILL_ADDRESS_3', 0, '', '', '', '', '', 0, '', '', NULL, 0, 'address_3', 'address_3', 1, 1, 1),
(9, 9, 'AA', 'NBILL_CORE_town', '* NBILL_TOWN', 0, '', '', '', '', '', 1, '', '', NULL, 0, 'town', 'town', 1, 1, 1),
(10, 10, 'AA', 'NBILL_CORE_state', 'NBILL_STATE', 0, '', '', '', '', '', 0, '', '', NULL, 0, 'state', 'state', 1, 1, 1),
(11, 11, 'AA', 'NBILL_CORE_postcode', '* NBILL_POSTCODE', 0, '', '', '', '', '', 1, '', '', NULL, 0, 'postcode', 'postcode', 1, 1, 1),
(12, 12, 'BB', 'NBILL_CORE_country', '* NBILL_COUNTRY', 0, '', '', '', '', '$$$sql="SELECT vendor_country FROM #__nbill_vendor WHERE default_vendor = 1";nbf_cms::$interop->database->setQuery($sql);return nbf_cms::$interop->database->loadResult();$$', 1, '', 'country_codes', NULL, 0, 'country', 'country', 1, 1, 1),
(13, 13, 'CC', 'NBILL_CORE_email_address', '* NBILL_EMAIL_ADDRESS', 0, '', '', '', '', '', 1, '', '', NULL, 1, '', 'email_address', 1, 1, 1),
(14, 14, 'AA', 'NBILL_CORE_email_address_2', 'NBILL_EMAIL_ADDRESS_2', 0, '', '', '', '', '', 0, '', '', NULL, 1, '', 'email_address_2', 1, 0, 1),
(15, 15, 'AA', 'NBILL_CORE_telephone', 'NBILL_TELEPHONE', 0, '', '', '', '', '', 0, '', '', NULL, 0, '', 'telephone', 1, 1, 1),
(16, 16, 'AA', 'NBILL_CORE_telephone_2', 'NBILL_TELEPHONE_2', 0, '', '', '', '', '', 0, '', '', NULL, 0, '', 'telephone_2', 1, 0, 1),
(17, 17, 'AA', 'NBILL_CORE_mobile', 'NBILL_MOBILE', 0, '', '', '', '', '', 0, '', '', NULL, 0, '', 'mobile', 1, 0, 1),
(18, 18, 'AA', 'NBILL_CORE_fax', 'NBILL_FAX', 0, '', '', '', '', '', 0, '', '', NULL, 0, '', 'fax', 1, 0, 1),
(19, 19, 'AA', 'NBILL_CORE_tax_exemption_code', 'NBILL_TAX_EXEMPTION_CODE', 0, '', '', '', '', '', 0, 'NBILL_TAX_EXEMPTION_CODE_HELP', '', NULL, 0, 'tax_exemption_code', '', 1, 0, 1),
(20, 20, 'AA', 'NBILL_CORE_username', '* NBILL_USERNAME', 0, '', '', '', '', '', 1, 'NBILL_USERNAME_HELP', '', NULL, 0, '', 'username', 1, 1, 1),
(21, 21, 'CP', 'NBILL_CORE_password', '* NBILL_PASSWORD', 0, '', '', '', '', '', 1, '', '', NULL, 1, '', 'password', 1, 1, 1),
(22, 22, 'EE', 'NBILL_CORE_reminder_emails', 'NBILL_EMAIL_REMINDERS', 0, '', 'NBILL_EMAIL_REMINDERS_CHKBOX', '', '', 'On', 0, '', '', NULL, 0, 'reminder_emails', '', 1, 0, 1),
(23, 23, 'DD', 'NBILL_CORE_email_invoice_option', 'NBILL_EMAIL_INVOICE_OPTIONS', 0, '', '', '', '', 'AB', 0, '', 'email_invoice', NULL, 0, 'email_invoice_option', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_profile_fields_options`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_profile_fields_options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `option_value` varchar(255) NOT NULL DEFAULT '',
  `option_description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_reminders`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_reminders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL,
  `reminder_name` varchar(255) NOT NULL DEFAULT '',
  `reminder_type` char(2) NOT NULL DEFAULT 'AA',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `starting_from` int(11) DEFAULT NULL,
  `number_of_units` int(11) NOT NULL,
  `units` varchar(20) NOT NULL,
  `send_after` tinyint(4) NOT NULL DEFAULT '0',
  `email_text` text,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `filter` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_shipping`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_shipping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT '',
  `code` char(2) NOT NULL DEFAULT '',
  `service` varchar(100) NOT NULL DEFAULT '',
  `is_taxable` tinyint(4) NOT NULL DEFAULT '0',
  `tax_rate_if_different` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `is_fixed_per_invoice` tinyint(4) NOT NULL DEFAULT '0',
  `nominal_ledger_code` varchar(30) NOT NULL DEFAULT '',
  `parcel_tracking_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_shipping_price`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_shipping_price` (
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `shipping_id` int(11) unsigned NOT NULL DEFAULT '0',
  `currency_code` char(3) NOT NULL DEFAULT '',
  `net_price_per_unit` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`vendor_id`,`shipping_id`,`currency_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_tax`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_tax` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `country_code` char(2) NOT NULL DEFAULT '',
  `tax_zone` varchar(5) NOT NULL DEFAULT '',
  `tax_name` varchar(150) NOT NULL DEFAULT '',
  `tax_abbreviation` varchar(10) NOT NULL DEFAULT '',
  `tax_reference_no` varchar(100) NOT NULL DEFAULT '',
  `tax_reference_desc` varchar(100) NOT NULL DEFAULT '',
  `tax_rate` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `online_exempt` tinyint(4) NOT NULL DEFAULT '0',
  `payment_instructions` text,
  `small_print` text,
  `exempt_with_ref_no` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `country_code` (`country_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_temp_html`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_temp_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` varchar(20) NOT NULL DEFAULT '',
  `html` text,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_transaction`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_transaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_type` char(2) NOT NULL DEFAULT 'IN',
  `transaction_no` varchar(30) NOT NULL DEFAULT '',
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `document_ids` varchar(255) NOT NULL DEFAULT '0',
  `entity_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT '',
  `for` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL DEFAULT '',
  `currency` char(3) NOT NULL DEFAULT '',
  `amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_rate_1` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_amount_1` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_rate_2` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_amount_2` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_rate_3` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_amount_3` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_reference` varchar(100) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(255) NOT NULL DEFAULT '',
  `notes` text,
  `no_summary` tinyint(4) NOT NULL DEFAULT '0',
  `g_tx_id` int(11) unsigned NOT NULL DEFAULT '0',
  `added_document_item_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_transaction_ledger`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_transaction_ledger` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `transaction_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nominal_ledger_code` varchar(20) NOT NULL DEFAULT '',
  `currency` char(3) NOT NULL DEFAULT '',
  `net_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_rate` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `tax_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `gross_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_user_admin`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_user_admin` (
  `user_id` int(11) unsigned NOT NULL,
  `admin_via_fe` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_vendor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(255) NOT NULL DEFAULT '',
  `vendor_address` text,
  `vendor_country` char(2) NOT NULL DEFAULT '',
  `vendor_currency` char(3) NOT NULL DEFAULT '',
  `default_vendor` tinyint(4) NOT NULL DEFAULT '0',
  `next_invoice_no` varchar(30) NOT NULL DEFAULT '0001',
  `invoice_no_locked` tinyint(4) NOT NULL DEFAULT '0',
  `next_order_no` varchar(30) NOT NULL DEFAULT '0001',
  `order_no_locked` tinyint(4) NOT NULL DEFAULT '0',
  `next_receipt_no` varchar(30) NOT NULL DEFAULT '0001',
  `receipt_no_locked` tinyint(4) NOT NULL DEFAULT '0',
  `next_payment_no` varchar(30) NOT NULL DEFAULT '0001',
  `payment_no_locked` tinyint(4) NOT NULL DEFAULT '0',
  `next_credit_no` varchar(30) NOT NULL DEFAULT 'CR-0001',
  `credit_no_locked` tinyint(4) NOT NULL DEFAULT '0',
  `next_quote_no` varchar(30) NOT NULL DEFAULT 'QU-0001',
  `quote_no_locked` tinyint(4) NOT NULL DEFAULT '0',
  `next_po_no` varchar(30) NOT NULL DEFAULT 'PO-0001',
  `po_no_locked` tinyint(4) NOT NULL DEFAULT '0',
  `quote_default_intro` text,
  `payment_instructions` text,
  `quote_offline_pay_inst` text,
  `small_print` text,
  `credit_small_print` text,
  `quote_small_print` text,
  `invoice_template_name` varchar(50) NOT NULL DEFAULT 'invoice_default',
  `invoice_email_template_name` varchar(50) NOT NULL DEFAULT 'invoice_email_default',
  `credit_template_name` varchar(50) NOT NULL DEFAULT 'credit_default',
  `credit_email_template_name` varchar(50) NOT NULL DEFAULT 'credit_email_default',
  `quote_template_name` varchar(50) NOT NULL DEFAULT 'quote_default',
  `qrc_email_template_name` varchar(50) NOT NULL DEFAULT 'quote_request_email_default',
  `quote_email_template_name` varchar(50) NOT NULL DEFAULT 'quote_email_default',
  `po_template_name` varchar(50) NOT NULL DEFAULT 'po_default',
  `po_email_template_name` varchar(50) NOT NULL DEFAULT 'po_email_default',
  `pending_email_template_name` varchar(50) NOT NULL DEFAULT 'pending_email_default',
  `order_email_template_name` varchar(50) NOT NULL DEFAULT 'order_email_default',
  `show_remittance` tinyint(4) NOT NULL DEFAULT '1',
  `show_paylink` tinyint(4) NOT NULL DEFAULT '1',
  `admin_email` varchar(100) NOT NULL DEFAULT '',
  `paper_size` varchar(30) NOT NULL DEFAULT 'A4',
  `default_gateway` varchar(50) NOT NULL DEFAULT 'paypal',
  `auto_create_income` tinyint(4) NOT NULL DEFAULT '1',
  `suppress_receipt_nos` tinyint(4) NOT NULL DEFAULT '0',
  `suppress_payment_nos` tinyint(4) NOT NULL DEFAULT '0',
  `suppress_generation_buttons` tinyint(4) NOT NULL DEFAULT '0',
  `use_master_db` tinyint(4) NOT NULL DEFAULT '0',
  `master_host` varchar(255) NOT NULL DEFAULT '',
  `master_username` varchar(100) NOT NULL DEFAULT '',
  `master_password` varchar(100) NOT NULL DEFAULT '',
  `master_dbname` varchar(100) NOT NULL DEFAULT '',
  `master_table_prefix` varchar(255) NOT NULL DEFAULT 'jos_',
  `master_vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_nbill_vendor`
--

INSERT INTO `jos_nbill_vendor` (`id`, `vendor_name`, `vendor_address`, `vendor_country`, `vendor_currency`, `default_vendor`, `next_invoice_no`, `invoice_no_locked`, `next_order_no`, `order_no_locked`, `next_receipt_no`, `receipt_no_locked`, `next_payment_no`, `payment_no_locked`, `next_credit_no`, `credit_no_locked`, `next_quote_no`, `quote_no_locked`, `next_po_no`, `po_no_locked`, `quote_default_intro`, `payment_instructions`, `quote_offline_pay_inst`, `small_print`, `credit_small_print`, `quote_small_print`, `invoice_template_name`, `invoice_email_template_name`, `credit_template_name`, `credit_email_template_name`, `quote_template_name`, `qrc_email_template_name`, `quote_email_template_name`, `po_template_name`, `po_email_template_name`, `pending_email_template_name`, `order_email_template_name`, `show_remittance`, `show_paylink`, `admin_email`, `paper_size`, `default_gateway`, `auto_create_income`, `suppress_receipt_nos`, `suppress_payment_nos`, `suppress_generation_buttons`, `use_master_db`, `master_host`, `master_username`, `master_password`, `master_dbname`, `master_table_prefix`, `master_vendor_id`) VALUES
(1, 'WEBBLOWER', 'Jl. Kemakmuran Raya, Depok 2 Tengah', 'ID', 'IDR', 1, '0002', 0, '0001', 0, '0001', 0, '0001', 0, 'CR-0001', 0, 'QU-0001', 0, 'PO-0001', 0, '', 'Enter payment instructions here (eg. bank details).', '', 'Enter any legal jargon here.', '', '', 'invoice_default', 'invoice_email_default', 'credit_default', 'credit_email_default', 'quote_default', 'quote_request_email_default', 'quote_email_default', 'po_default', 'po_email_default', 'pending_email_default', 'order_email_default', 0, 0, 'webmaster@webblower.com', 'A4', 'paypal', 1, 1, 0, 0, 0, '', '', '', '', 'jos_', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_version`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_version` (
  `id` int(11) NOT NULL DEFAULT '0',
  `software_version` varchar(20) NOT NULL DEFAULT '',
  `service_pack` int(11) NOT NULL DEFAULT '0',
  `upgraded_from` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_version`
--

INSERT INTO `jos_nbill_version` (`id`, `software_version`, `service_pack`, `upgraded_from`) VALUES
(1, '2.2.0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_country_codes`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_country_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=243 ;

--
-- Dumping data for table `jos_nbill_xref_country_codes`
--

INSERT INTO `jos_nbill_xref_country_codes` (`id`, `code`, `description`) VALUES
(1, 'AF', 'AFGHANISTAN'),
(2, 'AX', 'ALAND ISLANDS'),
(3, 'AL', 'ALBANIA'),
(4, 'DZ', 'ALGERIA'),
(5, 'AS', 'AMERICAN SAMOA'),
(6, 'AD', 'ANDORRA'),
(7, 'AO', 'ANGOLA'),
(8, 'AI', 'ANGUILLA'),
(9, 'AQ', 'ANTARCTICA'),
(10, 'AG', 'ANTIGUA AND BARBUDA'),
(11, 'AR', 'ARGENTINA'),
(12, 'AM', 'ARMENIA'),
(13, 'AW', 'ARUBA'),
(14, 'AU', 'AUSTRALIA'),
(15, 'AT', 'AUSTRIA'),
(16, 'AZ', 'AZERBAIJAN'),
(17, 'BS', 'BAHAMAS'),
(18, 'BH', 'BAHRAIN'),
(19, 'BD', 'BANGLADESH'),
(20, 'BB', 'BARBADOS'),
(21, 'BY', 'BELARUS'),
(22, 'BE', 'BELGIUM'),
(23, 'BZ', 'BELIZE'),
(24, 'BJ', 'BENIN'),
(25, 'BM', 'BERMUDA'),
(26, 'BT', 'BHUTAN'),
(27, 'BO', 'BOLIVIA'),
(28, 'BA', 'BOSNIA AND HERZEGOVINA'),
(29, 'BW', 'BOTSWANA'),
(30, 'BV', 'BOUVET ISLAND'),
(31, 'BR', 'BRAZIL'),
(32, 'IO', 'BRITISH INDIAN OCEAN TERRITORY'),
(33, 'BN', 'BRUNEI DARUSSALAM'),
(34, 'BG', 'BULGARIA'),
(35, 'BF', 'BURKINA FASO'),
(36, 'BI', 'BURUNDI'),
(37, 'KH', 'CAMBODIA'),
(38, 'CM', 'CAMEROON'),
(39, 'CA', 'CANADA'),
(40, 'CV', 'CAPE VERDE'),
(41, 'KY', 'CAYMAN ISLANDS'),
(42, 'CF', 'CENTRAL AFRICAN REPUBLIC'),
(43, 'TD', 'CHAD'),
(44, 'CL', 'CHILE'),
(45, 'CN', 'CHINA'),
(46, 'CX', 'CHRISTMAS ISLAND'),
(47, 'CC', 'COCOS (KEELING) ISLANDS'),
(48, 'CO', 'COLOMBIA'),
(49, 'KM', 'COMOROS'),
(50, 'CG', 'CONGO'),
(51, 'CD', 'CONGO, DEMOCRATIC REPUBLIC'),
(52, 'CK', 'COOK ISLANDS'),
(53, 'CR', 'COSTA RICA'),
(54, 'CI', 'COTE D''IVOIRE'),
(55, 'HR', 'CROATIA'),
(56, 'CU', 'CUBA'),
(57, 'CY', 'CYPRUS'),
(58, 'CZ', 'CZECH REPUBLIC'),
(59, 'DK', 'DENMARK'),
(60, 'DJ', 'DJIBOUTI'),
(61, 'DM', 'DOMINICA'),
(62, 'DO', 'DOMINICAN REPUBLIC'),
(63, 'EC', 'ECUADOR'),
(64, 'EG', 'EGYPT'),
(65, 'SV', 'EL SALVADOR'),
(66, 'GQ', 'EQUATORIAL GUINEA'),
(67, 'ER', 'ERITREA'),
(68, 'EE', 'ESTONIA'),
(69, 'ET', 'ETHIOPIA'),
(70, 'FK', 'FALKLAND ISLANDS (MALVINAS)'),
(71, 'FO', 'FAROE ISLANDS'),
(72, 'FJ', 'FIJI'),
(73, 'FI', 'FINLAND'),
(74, 'FR', 'FRANCE'),
(75, 'GF', 'FRENCH GUIANA'),
(76, 'PF', 'FRENCH POLYNESIA'),
(77, 'TF', 'FRENCH SOUTHERN TERRITORIES'),
(78, 'GA', 'GABON'),
(79, 'GM', 'GAMBIA'),
(80, 'GE', 'GEORGIA'),
(81, 'DE', 'GERMANY'),
(82, 'GH', 'GHANA'),
(83, 'GI', 'GIBRALTAR'),
(84, 'GR', 'GREECE'),
(85, 'GL', 'GREENLAND'),
(86, 'GD', 'GRENADA'),
(87, 'GP', 'GUADELOUPE'),
(88, 'GU', 'GUAM'),
(89, 'GT', 'GUATEMALA'),
(90, 'GN', 'GUINEA'),
(91, 'GW', 'GUINEA-BISSAU'),
(92, 'GY', 'GUYANA'),
(93, 'HT', 'HAITI'),
(94, 'HM', 'HEARD ISLAND/MCDONALD ISLANDS'),
(95, 'VA', 'HOLY SEE (VATICAN CITY STATE)'),
(96, 'HN', 'HONDURAS'),
(97, 'HK', 'HONG KONG'),
(98, 'HU', 'HUNGARY'),
(99, 'IS', 'ICELAND'),
(100, 'IN', 'INDIA'),
(101, 'ID', 'INDONESIA'),
(102, 'IR', 'IRAN'),
(103, 'IQ', 'IRAQ'),
(104, 'IE', 'IRELAND'),
(105, 'IL', 'ISRAEL'),
(106, 'IT', 'ITALY'),
(107, 'JM', 'JAMAICA'),
(108, 'JP', 'JAPAN'),
(109, 'JO', 'JORDAN'),
(110, 'KZ', 'KAZAKHSTAN'),
(111, 'KE', 'KENYA'),
(112, 'KI', 'KIRIBATI'),
(113, 'KP', 'KOREA, DEMOCRATIC REPUBLIC'),
(114, 'KR', 'KOREA, REPUBLIC OF'),
(115, 'KW', 'KUWAIT'),
(116, 'KG', 'KYRGYZSTAN'),
(117, 'LA', 'LAO DEMOCRATIC REPUBLIC'),
(118, 'LV', 'LATVIA'),
(119, 'LB', 'LEBANON'),
(120, 'LS', 'LESOTHO'),
(121, 'LR', 'LIBERIA'),
(122, 'LY', 'LIBYAN ARAB JAMAHIRIYA'),
(123, 'LI', 'LIECHTENSTEIN'),
(124, 'LT', 'LITHUANIA'),
(125, 'LU', 'LUXEMBOURG'),
(126, 'MO', 'MACAO'),
(127, 'MK', 'MACEDONIA'),
(128, 'MG', 'MADAGASCAR'),
(129, 'MW', 'MALAWI'),
(130, 'MY', 'MALAYSIA'),
(131, 'MV', 'MALDIVES'),
(132, 'ML', 'MALI'),
(133, 'MT', 'MALTA'),
(134, 'MH', 'MARSHALL ISLANDS'),
(135, 'MQ', 'MARTINIQUE'),
(136, 'MR', 'MAURITANIA'),
(137, 'MU', 'MAURITIUS'),
(138, 'YT', 'MAYOTTE'),
(139, 'MX', 'MEXICO'),
(140, 'FM', 'MICRONESIA'),
(141, 'MD', 'MOLDOVA'),
(142, 'MC', 'MONACO'),
(143, 'MN', 'MONGOLIA'),
(144, 'MS', 'MONTSERRAT'),
(145, 'MA', 'MOROCCO'),
(146, 'MZ', 'MOZAMBIQUE'),
(147, 'MM', 'MYANMAR'),
(148, 'NA', 'NAMIBIA'),
(149, 'NR', 'NAURU'),
(150, 'NP', 'NEPAL'),
(151, 'NL', 'NETHERLANDS'),
(152, 'AN', 'NETHERLANDS ANTILLES'),
(153, 'NC', 'NEW CALEDONIA'),
(154, 'NZ', 'NEW ZEALAND'),
(155, 'NI', 'NICARAGUA'),
(156, 'NE', 'NIGER'),
(157, 'NG', 'NIGERIA'),
(158, 'NU', 'NIUE'),
(159, 'NF', 'NORFOLK ISLAND'),
(160, 'MP', 'NORTHERN MARIANA ISLANDS'),
(161, 'NO', 'NORWAY'),
(162, 'OM', 'OMAN'),
(163, 'PK', 'PAKISTAN'),
(164, 'PW', 'PALAU'),
(165, 'PS', 'PALESTINIAN TERRITORY'),
(166, 'PA', 'PANAMA'),
(167, 'PG', 'PAPUA NEW GUINEA'),
(168, 'PY', 'PARAGUAY'),
(169, 'PE', 'PERU'),
(170, 'PH', 'PHILIPPINES'),
(171, 'PN', 'PITCAIRN'),
(172, 'PL', 'POLAND'),
(173, 'PT', 'PORTUGAL'),
(174, 'PR', 'PUERTO RICO'),
(175, 'QA', 'QATAR'),
(176, 'RE', 'REUNION'),
(177, 'RO', 'ROMANIA'),
(178, 'RU', 'RUSSIAN FEDERATION'),
(179, 'RW', 'RWANDA'),
(180, 'SH', 'SAINT HELENA'),
(181, 'KN', 'SAINT KITTS AND NEVIS'),
(182, 'LC', 'SAINT LUCIA'),
(183, 'PM', 'SAINT PIERRE AND MIQUELON'),
(184, 'VC', 'ST VINCENT AND THE GRENADINES'),
(185, 'WS', 'SAMOA'),
(186, 'SM', 'SAN MARINO'),
(187, 'ST', 'SAO TOME AND PRINCIPE'),
(188, 'SA', 'SAUDI ARABIA'),
(189, 'SN', 'SENEGAL'),
(190, 'CS', 'SERBIA AND MONTENEGRO'),
(191, 'SC', 'SEYCHELLES'),
(192, 'SL', 'SIERRA LEONE'),
(193, 'SG', 'SINGAPORE'),
(194, 'SK', 'SLOVAKIA'),
(195, 'SI', 'SLOVENIA'),
(196, 'SB', 'SOLOMON ISLANDS'),
(197, 'SO', 'SOMALIA'),
(198, 'ZA', 'SOUTH AFRICA'),
(199, 'GS', 'SOUTH GEORGIA/SANDWICH ISLES'),
(200, 'ES', 'SPAIN'),
(201, 'LK', 'SRI LANKA'),
(202, 'SD', 'SUDAN'),
(203, 'SR', 'SURINAME'),
(204, 'SJ', 'SVALBARD AND JAN MAYEN'),
(205, 'SZ', 'SWAZILAND'),
(206, 'SE', 'SWEDEN'),
(207, 'CH', 'SWITZERLAND'),
(208, 'SY', 'SYRIAN ARAB REPUBLIC'),
(209, 'TW', 'TAIWAN'),
(210, 'TJ', 'TAJIKISTAN'),
(211, 'TZ', 'TANZANIA'),
(212, 'TH', 'THAILAND'),
(213, 'TL', 'TIMOR-LESTE'),
(214, 'TG', 'TOGO'),
(215, 'TK', 'TOKELAU'),
(216, 'TO', 'TONGA'),
(217, 'TT', 'TRINIDAD AND TOBAGO'),
(218, 'TN', 'TUNISIA'),
(219, 'TR', 'TURKEY'),
(220, 'TM', 'TURKMENISTAN'),
(221, 'TC', 'TURKS AND CAICOS ISLANDS'),
(222, 'TV', 'TUVALU'),
(223, 'UG', 'UGANDA'),
(224, 'UA', 'UKRAINE'),
(225, 'AE', 'UNITED ARAB EMIRATES'),
(226, 'GB', 'UNITED KINGDOM'),
(227, 'US', 'UNITED STATES'),
(228, 'UM', 'US MINOR OUTLYING ISLANDS'),
(229, 'UY', 'URUGUAY'),
(230, 'UZ', 'UZBEKISTAN'),
(231, 'VU', 'VANUATU'),
(232, 'VE', 'VENEZUELA'),
(233, 'VN', 'VIET NAM'),
(234, 'VG', 'VIRGIN ISLANDS, BRITISH'),
(235, 'VI', 'VIRGIN ISLANDS, U.S.'),
(236, 'WF', 'WALLIS AND FUTUNA'),
(237, 'EH', 'WESTERN SAHARA'),
(238, 'YE', 'YEMEN'),
(239, 'ZM', 'ZAMBIA'),
(240, 'ZW', 'ZIMBABWE'),
(241, 'EU', 'European Union'),
(242, 'WW', 'Worldwide');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_default_start_date`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_default_start_date` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_default_start_date`
--

INSERT INTO `jos_nbill_xref_default_start_date` (`code`, `description`) VALUES
('AA', 'NBILL_CFG_START_DATE_CURRENT_ONLY'),
('BB', 'NBILL_CFG_START_DATE_CURRENT_LAST'),
('CC', 'NBILL_CFG_START_DATE_QUARTER'),
('DD', 'NBILL_CFG_START_DATE_SEMI'),
('EE', 'NBILL_CFG_START_DATE_YEAR'),
('FF', 'NBILL_CFG_START_DATE_FIVE'),
('GG', 'NBILL_CFG_START_DATE_ALL');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_email_invoice`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_email_invoice` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_email_invoice`
--

INSERT INTO `jos_nbill_xref_email_invoice` (`code`, `description`) VALUES
('AA', 'NBILL_NO_EMAIL'),
('BB', 'NBILL_EMAIL_INVOICE'),
('CC', 'NBILL_EMAIL_NOTIFICATION'),
('AB', 'NBILL_EMAIL_INVOICE_ATTACH'),
('AC', 'NBILL_EMAIL_INVOICE_PDF'),
('DD', 'NBILL_EMAIL_TEMPLATE'),
('EE', 'NBILL_EMAIL_TEMPLATE_ATTACH'),
('FF', 'NBILL_EMAIL_TEMPLATE_PDF');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_eu_country_codes`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_eu_country_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `jos_nbill_xref_eu_country_codes`
--

INSERT INTO `jos_nbill_xref_eu_country_codes` (`id`, `code`, `description`) VALUES
(1, 'AT', 'AUSTRIA'),
(2, 'BE', 'BELGIUM'),
(3, 'CY', 'CYPRUS'),
(4, 'CZ', 'CZECH REPUBLIC'),
(5, 'DK', 'DENMARK'),
(6, 'EE', 'ESTONIA'),
(7, 'FI', 'FINLAND'),
(8, 'FR', 'FRANCE'),
(9, 'DE', 'GERMANY'),
(10, 'GR', 'GREECE'),
(11, 'HU', 'HUNGARY'),
(12, 'IE', 'IRELAND'),
(13, 'IT', 'ITALY'),
(14, 'LV', 'LATVIA'),
(15, 'LT', 'LITHUANIA'),
(16, 'LU', 'LUXEMBOURG'),
(17, 'MT', 'MALTA'),
(18, 'PL', 'POLAND'),
(19, 'PT', 'PORTUGAL'),
(20, 'SK', 'SLOVAKIA'),
(21, 'SI', 'SLOVENIA'),
(22, 'ES', 'SPAIN'),
(23, 'SE', 'SWEDEN'),
(24, 'NL', 'THE NETHERLANDS'),
(25, 'RO', 'ROMANIA'),
(26, 'BG', 'BULGARIA'),
(27, 'GB', 'UNITED KINGDOM');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_field_type`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_field_type` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_field_type`
--

INSERT INTO `jos_nbill_xref_field_type` (`code`, `description`) VALUES
('AA', 'NBILL_FLD_TEXTBOX'),
('BB', 'NBILL_FLD_DROPDOWN'),
('CC', 'NBILL_FLD_EMAIL'),
('CP', 'NBILL_FLD_PASSWORD'),
('DD', 'NBILL_FLD_RADIOLIST'),
('EE', 'NBILL_FLD_CHECKBOX'),
('FF', 'NBILL_FLD_TEXTAREA'),
('GG', 'NBILL_FLD_NUMERIC'),
('GZ', 'NBILL_FLD_DATE'),
('HH', 'NBILL_FLD_HIDDEN'),
('LL', 'NBILL_FLD_LABEL'),
('MM', 'NBILL_FLD_JAVASCRIPT_BUTTON'),
('NN', 'NBILL_FLD_SUBMIT_BUTTON'),
('JJ', 'NBILL_FLD_DOMAIN_LOOKUP'),
('KK', 'NBILL_FLD_FILE_UPLOAD'),
('OO', 'NBILL_FLD_LOGIN'),
('PP', 'NBILL_FLD_SUMMARY'),
('SS', 'NBILL_FLD_CAPTCHA');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_order_status`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_order_status` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_order_status`
--

INSERT INTO `jos_nbill_xref_order_status` (`code`, `description`) VALUES
('AA', 'NBILL_STATUS_PENDING'),
('BB', 'NBILL_STATUS_PROCESSING'),
('CC', 'NBILL_STATUS_DISPATCHED'),
('DD', 'NBILL_STATUS_COMPLETED'),
('EE', 'NBILL_STATUS_CANCELLED');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_payment_method`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_payment_method` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_payment_method`
--

INSERT INTO `jos_nbill_xref_payment_method` (`code`, `description`) VALUES
('BB', 'NBILL_CHEQUE'),
('DD', 'NBILL_DIRECT_DEBIT'),
('FF', 'NBILL_STANDING_ORDER'),
('EE', 'NBILL_BANK_TRANSFER'),
('CC', 'NBILL_CREDIT_CARD'),
('GG', 'NBILL_ONLINE_AGENCY'),
('AA', 'NBILL_CASH'),
('XX', 'NBILL_OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_pay_frequency`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_pay_frequency` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_pay_frequency`
--

INSERT INTO `jos_nbill_xref_pay_frequency` (`code`, `description`) VALUES
('BB', 'NBILL_WEEKLY'),
('BX', 'NBILL_FOUR_WEEKLY'),
('CC', 'NBILL_MONTHLY'),
('DD', 'NBILL_QUARTERLY'),
('DX', 'NBILL_SEMI_ANNUALLY'),
('EE', 'NBILL_ANNUALLY'),
('FF', 'NBILL_BIANNUALLY'),
('GG', 'NBILL_FIVE_YEARLY'),
('HH', 'NBILL_TEN_YEARLY'),
('AA', 'NBILL_ONE_OFF'),
('XX', 'NBILL_NOT_APPLICABLE');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_plan_type`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_plan_type` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_plan_type`
--

INSERT INTO `jos_nbill_xref_plan_type` (`code`, `description`) VALUES
('AA', 'NBILL_UP_FRONT'),
('BB', 'NBILL_INSTALLMENTS'),
('CC', 'NBILL_DEPOSIT_AND_FINAL'),
('DD', 'NBILL_DEPOSIT_AND_INSTALLMENTS'),
('DX', 'NBILL_DEPOSIT_THEN_USER_CONTROLLED'),
('EE', 'NBILL_DEFERRED_AND_FINAL'),
('FF', 'NBILL_USER_CONTROLLED');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_quote_status`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_quote_status` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_quote_status`
--

INSERT INTO `jos_nbill_xref_quote_status` (`code`, `description`) VALUES
('AA', 'NBILL_STATUS_QUOTE_NEW'),
('BB', 'NBILL_STATUS_QUOTE_ON_HOLD'),
('CC', 'NBILL_STATUS_QUOTE_QUOTED'),
('DD', 'NBILL_STATUS_QUOTE_ACCEPTED'),
('EE', 'NBILL_STATUS_QUOTE_PART_ACCEPTED'),
('FF', 'NBILL_STATUS_QUOTE_REJECTED'),
('GG', 'NBILL_STATUS_QUOTE_WITHDRAWN');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_reminder_type`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_reminder_type` (
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_nbill_xref_reminder_type`
--

INSERT INTO `jos_nbill_xref_reminder_type` (`code`, `description`) VALUES
('AA', 'NBILL_REMINDER_PAYMENT_DUE'),
('BB', 'NBILL_REMINDER_ORDER_EXPIRY'),
('CC', 'NBILL_REMINDER_RENEWAL_DUE'),
('DD', 'NBILL_REMINDER_INVOICE_OVERDUE'),
('XX', 'NBILL_REMINDER_USER_DEFINED');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_states_au`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_states_au` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(3) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jos_nbill_xref_states_au`
--

INSERT INTO `jos_nbill_xref_states_au` (`id`, `code`, `description`) VALUES
(1, 'ACT', 'Australian Capital Territory'),
(2, 'NSW', 'New South Wales'),
(3, 'NT', 'Northern Territory'),
(4, 'QLD', 'Queensland'),
(5, 'SA', 'South Australia'),
(6, 'TAS', 'Tasmania'),
(7, 'VIC', 'Victoria'),
(8, 'WA', 'Western Australia'),
(9, '', 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_states_ca`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_states_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_nbill_xref_states_ca`
--

INSERT INTO `jos_nbill_xref_states_ca` (`id`, `code`, `description`) VALUES
(1, 'BC', 'British Columbia'),
(2, 'AB', 'Alberta'),
(3, 'MB', 'Manitoba'),
(4, 'NB', 'New Brunswick'),
(5, 'NL', 'Newfoundland and Labrador'),
(6, 'NT', 'Northwest Territories'),
(7, 'NS', 'Nova Scotia'),
(8, 'NU', 'Nunavut'),
(9, 'ON', 'Ontario'),
(10, 'PE', 'Prince Edward Island'),
(11, 'QC', 'Quebec'),
(12, 'SK', 'Saskatchewan'),
(13, 'YT', 'Yukon'),
(14, '', 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_states_combined`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_states_combined` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=247 ;

--
-- Dumping data for table `jos_nbill_xref_states_combined`
--

INSERT INTO `jos_nbill_xref_states_combined` (`id`, `code`, `description`) VALUES
(1, '--United States--', '--United States--'),
(2, 'AL', 'Alabama'),
(3, 'AK', 'Alaska'),
(4, 'AS', 'American Samoa'),
(5, 'AZ', 'Arizona'),
(6, 'AR', 'Arkansas'),
(7, 'CA', 'California'),
(8, 'CO', 'Colorado'),
(9, 'CT', 'Connecticut'),
(10, 'DE', 'Delaware'),
(11, 'DC', 'District of Columbia'),
(12, 'FM', 'Federated States of Micronesia'),
(13, 'FL', 'Florida'),
(14, 'GA', 'Georgia'),
(15, 'GU', 'Guam'),
(16, 'HI', 'Hawaii'),
(17, 'ID', 'Idaho'),
(18, 'IL', 'Illinois'),
(19, 'IN', 'Indiana'),
(20, 'IA', 'Iowa'),
(21, 'KS', 'Kansas'),
(22, 'KY', 'Kentucky'),
(23, 'LA', 'Louisiana'),
(24, 'ME', 'Maine'),
(25, 'MH', 'Marshall Islands'),
(26, 'MD', 'Maryland'),
(27, 'MA', 'Massachusetts'),
(28, 'MI', 'Michigan'),
(29, 'MN', 'Minnesota'),
(30, 'MS', 'Mississippi'),
(31, 'MO', 'Missouri'),
(32, 'MT', 'Montana'),
(33, 'NE', 'Nebraska'),
(34, 'NV', 'Nevada'),
(35, 'NH', 'New Hampshire'),
(36, 'NJ', 'New Jersey'),
(37, 'NM', 'New Mexico'),
(38, 'NY', 'New York'),
(39, 'NC', 'North Carolina'),
(40, 'ND', 'North Dakota'),
(41, 'MP', 'Northern Mariana Islands'),
(42, 'OH', 'Ohio'),
(43, 'OK', 'Oklahoma'),
(44, 'OR', 'Oregon'),
(45, 'PW', 'Palau'),
(46, 'PA', 'Pennsylvania'),
(47, 'PR', 'Puerto Rico'),
(48, 'RI', 'Rhode Island'),
(49, 'SC', 'South Carolina'),
(50, 'SD', 'South Dakota'),
(51, 'TN', 'Tennessee'),
(52, 'TX', 'Texas'),
(53, 'UT', 'Utah'),
(54, 'VT', 'Vermont'),
(55, 'VI', 'Virgin Islands'),
(56, 'VA', 'Virginia'),
(57, 'WA', 'Washington'),
(58, 'WV', 'West Virginia'),
(59, 'WI', 'Wisconsin'),
(60, 'WY', 'Wyoming'),
(61, 'AA', 'Armed Forces Americas (except Canada)'),
(62, 'AP', 'Armed Forces Pacific'),
(63, 'AE', 'Armed Forces Other'),
(64, '--Canada--', '--Canada--'),
(65, 'AB', 'Alberta'),
(66, 'BC', 'British Columbia'),
(67, 'MB', 'Manitoba'),
(68, 'NB', 'New Brunswick'),
(69, 'NL', 'Newfoundland and Labrador'),
(70, 'NT', 'Northwest Territories'),
(71, 'NS', 'Nova Scotia'),
(72, 'NU', 'Nunavut'),
(73, 'ON', 'Ontario'),
(74, 'PE', 'Prince Edward Island'),
(75, 'QC', 'Quebec'),
(76, 'SK', 'Saskatchewan'),
(77, 'YT', 'Yukon'),
(78, '--United Kingdom--', '--United Kingdom--'),
(79, 'Avon', 'Avon'),
(80, 'Bedfordshire', 'Bedfordshire'),
(81, 'Buckinghamshire', 'Buckinghamshire'),
(82, 'Berkshire', 'Berkshire'),
(83, 'Cambridgeshire', 'Cambridgeshire'),
(84, 'Cheshire', 'Cheshire'),
(85, 'Cleveland', 'Cleveland'),
(86, 'Cumbria', 'Cumbria'),
(87, 'Cornwall', 'Cornwall'),
(88, 'Cumberland', 'Cumberland'),
(89, 'Derbyshire', 'Derbyshire'),
(90, 'Devon', 'Devon'),
(91, 'Dorset', 'Dorset'),
(92, 'Co. Durham', 'Co. Durham'),
(93, 'East Riding of Yorkshire', 'East Riding of Yorkshire'),
(94, 'Essex', 'Essex'),
(95, 'Gloucestershire', 'Gloucestershire'),
(96, 'Greater Manchester', 'Greater Manchester'),
(97, 'Hampshire', 'Hampshire'),
(98, 'Herefordshire', 'Herefordshire'),
(99, 'Hertfordshire', 'Hertfordshire'),
(100, 'Humberside', 'Humberside'),
(101, 'Huntingdonshire', 'Huntingdonshire'),
(102, 'Hereford and Worcester', 'Hereford and Worcester'),
(103, 'Isle of Wight', 'Isle of Wight'),
(104, 'Kent', 'Kent'),
(105, 'Lancashire', 'Lancashire'),
(106, 'Leicestershire', 'Leicestershire'),
(107, 'Lincolnshire', 'Lincolnshire'),
(108, 'London', 'London'),
(109, 'Middlesex', 'Middlesex'),
(110, 'Merseyside', 'Merseyside'),
(111, 'Northumberland', 'Northumberland'),
(112, 'Norfolk', 'Norfolk'),
(113, 'North Riding of Yorkshire', 'North Riding of Yorkshire'),
(114, 'Northamptonshire', 'Northamptonshire'),
(115, 'Nottinghamshire', 'Nottinghamshire'),
(116, 'North Yorkshire', 'North Yorkshire'),
(117, 'Oxfordshire', 'Oxfordshire'),
(118, 'Rutland', 'Rutland'),
(119, 'Shropshire', 'Shropshire'),
(120, 'Suffolk', 'Suffolk'),
(121, 'Somerset', 'Somerset'),
(122, 'Surrey', 'Surrey'),
(123, 'Sussex', 'Sussex'),
(124, 'Staffordshire', 'Staffordshire'),
(125, 'East Sussex', 'East Sussex'),
(126, 'West Sussex', 'West Sussex'),
(127, 'South Yorkshire', 'South Yorkshire'),
(128, 'Tyne and Wear', 'Tyne and Wear'),
(129, 'Warwickshire', 'Warwickshire'),
(130, 'Westmorland', 'Westmorland'),
(131, 'Wiltshire', 'Wiltshire'),
(132, 'West Midlands', 'West Midlands'),
(133, 'Worcestershire', 'Worcestershire'),
(134, 'West Riding of Yorkshire', 'West Riding of Yorkshire'),
(135, 'West Yorkshire', 'West Yorkshire'),
(136, 'Yorkshire', 'Yorkshire'),
(137, 'Anglesey', 'Anglesey'),
(138, 'Breconshire', 'Breconshire'),
(139, 'Caernarvonshire', 'Caernarvonshire'),
(140, 'Cardiganshire', 'Cardiganshire'),
(141, 'Carmarthenshire', 'Carmarthenshire'),
(142, 'Clwyd', 'Clwyd'),
(143, 'Denbighshire', 'Denbighshire'),
(144, 'Dyfed', 'Dyfed'),
(145, 'Flintshire', 'Flintshire'),
(146, 'Glamorgan', 'Glamorgan'),
(147, 'Gwent', 'Gwent'),
(148, 'Gwynedd', 'Gwynedd'),
(149, 'Merionethshire', 'Merionethshire'),
(150, 'Mid Glamorgan', 'Mid Glamorgan'),
(151, 'Montgomeryshire', 'Montgomeryshire'),
(152, 'Monmouthshire', 'Monmouthshire'),
(153, 'Pembrokeshire', 'Pembrokeshire'),
(154, 'Powys', 'Powys'),
(155, 'Radnorshire', 'Radnorshire'),
(156, 'South Glamorgan', 'South Glamorgan'),
(157, 'West Glamorgan', 'West Glamorgan'),
(158, 'Aberdeenshire', 'Aberdeenshire'),
(159, 'Angus', 'Angus'),
(160, 'Argyllshire', 'Argyllshire'),
(161, 'Ayrshire', 'Ayrshire'),
(162, 'Banffshire', 'Banffshire'),
(163, 'Berwickshire', 'Berwickshire'),
(164, 'Borders', 'Borders'),
(165, 'Bute', 'Bute'),
(166, 'Caithness', 'Caithness'),
(167, 'Central', 'Central'),
(168, 'Clackmannanshire', 'Clackmannanshire'),
(169, 'Dumfries-shire', 'Dumfries-shire'),
(170, 'Dumfries and Galloway', 'Dumfries and Galloway'),
(171, 'Dunbartonshire', 'Dunbartonshire'),
(172, 'East Lothian', 'East Lothian'),
(173, 'Fife', 'Fife'),
(174, 'Grampian', 'Grampian'),
(175, 'Highland', 'Highland'),
(176, 'Inverness-shire', 'Inverness-shire'),
(177, 'Kincardineshire', 'Kincardineshire'),
(178, 'Kirkcudbrightshire', 'Kirkcudbrightshire'),
(179, 'Kinross-shire', 'Kinross-shire'),
(180, 'Lanarkshire', 'Lanarkshire'),
(181, 'Lothian', 'Lothian'),
(182, 'Midlothian', 'Midlothian'),
(183, 'Morayshire', 'Morayshire'),
(184, 'Nairn', 'Nairn'),
(185, 'Orkney', 'Orkney'),
(186, 'Peebles-shire', 'Peebles-shire'),
(187, 'Perth', 'Perth'),
(188, 'Renfrewshire', 'Renfrewshire'),
(189, 'Ross and Cromarty', 'Ross and Cromarty'),
(190, 'Roxburghshire', 'Roxburghshire'),
(191, 'Selkirkshire', 'Selkirkshire'),
(192, 'Shetland', 'Shetland'),
(193, 'Strathclyde', 'Strathclyde'),
(194, 'Stirlingshire', 'Stirlingshire'),
(195, 'Sutherland', 'Sutherland'),
(196, 'Tayside', 'Tayside'),
(197, 'Wigtownshire', 'Wigtownshire'),
(198, 'Western Isles', 'Western Isles'),
(199, 'West Lothian', 'West Lothian'),
(200, 'Co. Antrim', 'Co. Antrim'),
(201, 'Co. Armagh', 'Co. Armagh'),
(202, 'Co. Down', 'Co. Down'),
(203, 'Co. Fermanagh', 'Co. Fermanagh'),
(204, 'Co. Londonderry', 'Co. Londonderry'),
(205, 'Co. Tyrone', 'Co. Tyrone'),
(206, 'Alderney', 'Alderney'),
(207, 'Guernsey', 'Guernsey'),
(208, 'Jersey', 'Jersey'),
(209, 'Sark', 'Sark'),
(210, '--Ireland--', '--Ireland--'),
(211, 'Co. Carlow', 'Co. Carlow'),
(212, 'Co. Cavan', 'Co. Cavan'),
(213, 'Co. Clare', 'Co. Clare'),
(214, 'Co. Cork', 'Co. Cork'),
(215, 'Co. Donegal', 'Co. Donegal'),
(216, 'Co. Dublin', 'Co. Dublin'),
(217, 'Co. Galway', 'Co. Galway'),
(218, 'Co. Kerry', 'Co. Kerry'),
(219, 'Co. Kildare', 'Co. Kildare'),
(220, 'Co. Kilkenny', 'Co. Kilkenny'),
(221, 'Co. Leitrim', 'Co. Leitrim'),
(222, 'Co. Laois', 'Co. Laois'),
(223, 'Co. Limerick', 'Co. Limerick'),
(224, 'Co. Longford', 'Co. Longford'),
(225, 'Co. Louth', 'Co. Louth'),
(226, 'Co. Mayo', 'Co. Mayo'),
(227, 'Co. Meath', 'Co. Meath'),
(228, 'Co. Monaghan', 'Co. Monaghan'),
(229, 'Co. Offaly', 'Co. Offaly'),
(230, 'Co. Roscommon', 'Co. Roscommon'),
(231, 'Co. Sligo', 'Co. Sligo'),
(232, 'Co. Tipperary', 'Co. Tipperary'),
(233, 'Co. Waterford', 'Co. Waterford'),
(234, 'Co. Westmeath', 'Co. Westmeath'),
(235, 'Co. Wexford', 'Co. Wexford'),
(236, 'Co. Wicklow', 'Co. Wicklow'),
(237, '--Australia--', '--Australia--'),
(238, 'ACT', 'Australian Capital Territory'),
(239, 'NSW', 'New South Wales'),
(240, 'NT', 'Northern Territory'),
(241, 'QLD', 'Queensland'),
(242, 'SA', 'South Australia'),
(243, 'TAS', 'Tasmania'),
(244, 'VIC', 'Victoria'),
(245, 'WA', 'Western Australia'),
(246, '', 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_states_gb`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_states_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `jos_nbill_xref_states_gb`
--

INSERT INTO `jos_nbill_xref_states_gb` (`id`, `code`, `description`) VALUES
(1, 'Avon', 'Avon'),
(2, 'Bedfordshire', 'Bedfordshire'),
(3, 'Buckinghamshire', 'Buckinghamshire'),
(4, 'Berkshire', 'Berkshire'),
(5, 'Cambridgeshire', 'Cambridgeshire'),
(6, 'Cheshire', 'Cheshire'),
(7, 'Cleveland', 'Cleveland'),
(8, 'Cumbria', 'Cumbria'),
(9, 'Cornwall', 'Cornwall'),
(10, 'Cumberland', 'Cumberland'),
(11, 'Derbyshire', 'Derbyshire'),
(12, 'Devon', 'Devon'),
(13, 'Dorset', 'Dorset'),
(14, 'Co. Durham', 'Co. Durham'),
(15, 'East Riding of Yorkshire', 'East Riding of Yorkshire'),
(16, 'Essex', 'Essex'),
(17, 'Gloucestershire', 'Gloucestershire'),
(18, 'Greater Manchester', 'Greater Manchester'),
(19, 'Hampshire', 'Hampshire'),
(20, 'Herefordshire', 'Herefordshire'),
(21, 'Hertfordshire', 'Hertfordshire'),
(22, 'Humberside', 'Humberside'),
(23, 'Huntingdonshire', 'Huntingdonshire'),
(24, 'Hereford and Worcester', 'Hereford and Worcester'),
(25, 'Isle of Wight', 'Isle of Wight'),
(26, 'Kent', 'Kent'),
(27, 'Lancashire', 'Lancashire'),
(28, 'Leicestershire', 'Leicestershire'),
(29, 'Lincolnshire', 'Lincolnshire'),
(30, 'London', 'London'),
(31, 'Middlesex', 'Middlesex'),
(32, 'Merseyside', 'Merseyside'),
(33, 'Northumberland', 'Northumberland'),
(34, 'Norfolk', 'Norfolk'),
(35, 'North Riding of Yorkshire', 'North Riding of Yorkshire'),
(36, 'Northamptonshire', 'Northamptonshire'),
(37, 'Nottinghamshire', 'Nottinghamshire'),
(38, 'North Yorkshire', 'North Yorkshire'),
(39, 'Oxfordshire', 'Oxfordshire'),
(40, 'Rutland', 'Rutland'),
(41, 'Shropshire', 'Shropshire'),
(42, 'Suffolk', 'Suffolk'),
(43, 'Somerset', 'Somerset'),
(44, 'Surrey', 'Surrey'),
(45, 'Sussex', 'Sussex'),
(46, 'Staffordshire', 'Staffordshire'),
(47, 'East Sussex', 'East Sussex'),
(48, 'West Sussex', 'West Sussex'),
(49, 'South Yorkshire', 'South Yorkshire'),
(50, 'Tyne and Wear', 'Tyne and Wear'),
(51, 'Warwickshire', 'Warwickshire'),
(52, 'Westmorland', 'Westmorland'),
(53, 'Wiltshire', 'Wiltshire'),
(54, 'West Midlands', 'West Midlands'),
(55, 'Worcestershire', 'Worcestershire'),
(56, 'West Riding of Yorkshire', 'West Riding of Yorkshire'),
(57, 'West Yorkshire', 'West Yorkshire'),
(58, 'Yorkshire', 'Yorkshire'),
(59, 'Anglesey', 'Anglesey'),
(60, 'Breconshire', 'Breconshire'),
(61, 'Caernarvonshire', 'Caernarvonshire'),
(62, 'Cardiganshire', 'Cardiganshire'),
(63, 'Carmarthenshire', 'Carmarthenshire'),
(64, 'Clwyd', 'Clwyd'),
(65, 'Denbighshire', 'Denbighshire'),
(66, 'Dyfed', 'Dyfed'),
(67, 'Flintshire', 'Flintshire'),
(68, 'Glamorgan', 'Glamorgan'),
(69, 'Gwent', 'Gwent'),
(70, 'Gwynedd', 'Gwynedd'),
(71, 'Merionethshire', 'Merionethshire'),
(72, 'Mid Glamorgan', 'Mid Glamorgan'),
(73, 'Montgomeryshire', 'Montgomeryshire'),
(74, 'Monmouthshire', 'Monmouthshire'),
(75, 'Pembrokeshire', 'Pembrokeshire'),
(76, 'Powys', 'Powys'),
(77, 'Radnorshire', 'Radnorshire'),
(78, 'South Glamorgan', 'South Glamorgan'),
(79, 'West Glamorgan', 'West Glamorgan'),
(80, 'Aberdeenshire', 'Aberdeenshire'),
(81, 'Angus', 'Angus'),
(82, 'Argyllshire', 'Argyllshire'),
(83, 'Ayrshire', 'Ayrshire'),
(84, 'Banffshire', 'Banffshire'),
(85, 'Berwickshire', 'Berwickshire'),
(86, 'Borders', 'Borders'),
(87, 'Bute', 'Bute'),
(88, 'Caithness', 'Caithness'),
(89, 'Central', 'Central'),
(90, 'Clackmannanshire', 'Clackmannanshire'),
(91, 'Dumfries-shire', 'Dumfries-shire'),
(92, 'Dumfries and Galloway', 'Dumfries and Galloway'),
(93, 'Dunbartonshire', 'Dunbartonshire'),
(94, 'East Lothian', 'East Lothian'),
(95, 'Fife', 'Fife'),
(96, 'Grampian', 'Grampian'),
(97, 'Highland', 'Highland'),
(98, 'Inverness-shire', 'Inverness-shire'),
(99, 'Kincardineshire', 'Kincardineshire'),
(100, 'Kirkcudbrightshire', 'Kirkcudbrightshire'),
(101, 'Kinross-shire', 'Kinross-shire'),
(102, 'Lanarkshire', 'Lanarkshire'),
(103, 'Lothian', 'Lothian'),
(104, 'Midlothian', 'Midlothian'),
(105, 'Morayshire', 'Morayshire'),
(106, 'Nairn', 'Nairn'),
(107, 'Orkney', 'Orkney'),
(108, 'Peebles-shire', 'Peebles-shire'),
(109, 'Perth', 'Perth'),
(110, 'Renfrewshire', 'Renfrewshire'),
(111, 'Ross and Cromarty', 'Ross and Cromarty'),
(112, 'Roxburghshire', 'Roxburghshire'),
(113, 'Selkirkshire', 'Selkirkshire'),
(114, 'Shetland', 'Shetland'),
(115, 'Strathclyde', 'Strathclyde'),
(116, 'Stirlingshire', 'Stirlingshire'),
(117, 'Sutherland', 'Sutherland'),
(118, 'Tayside', 'Tayside'),
(119, 'Wigtownshire', 'Wigtownshire'),
(120, 'Western Isles', 'Western Isles'),
(121, 'West Lothian', 'West Lothian'),
(122, 'Co. Antrim', 'Co. Antrim'),
(123, 'Co. Armagh', 'Co. Armagh'),
(124, 'Co. Down', 'Co. Down'),
(125, 'Co. Fermanagh', 'Co. Fermanagh'),
(126, 'Co. Londonderry', 'Co. Londonderry'),
(127, 'Co. Tyrone', 'Co. Tyrone'),
(128, 'Alderney', 'Alderney'),
(129, 'Guernsey', 'Guernsey'),
(130, 'Jersey', 'Jersey'),
(131, 'Sark', 'Sark'),
(132, '', 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_states_ie`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_states_ie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `jos_nbill_xref_states_ie`
--

INSERT INTO `jos_nbill_xref_states_ie` (`id`, `code`, `description`) VALUES
(1, 'Co. Carlow', 'Co. Carlow'),
(2, 'Co. Cavan', 'Co. Cavan'),
(3, 'Co. Clare', 'Co. Clare'),
(4, 'Co. Cork', 'Co. Cork'),
(5, 'Co. Donegal', 'Co. Donegal'),
(6, 'Co. Dublin', 'Co. Dublin'),
(7, 'Co. Galway', 'Co. Galway'),
(8, 'Co. Kerry', 'Co. Kerry'),
(9, 'Co. Kildare', 'Co. Kildare'),
(10, 'Co. Kilkenny', 'Co. Kilkenny'),
(11, 'Co. Leitrim', 'Co. Leitrim'),
(12, 'Co. Laois', 'Co. Laois'),
(13, 'Co. Limerick', 'Co. Limerick'),
(14, 'Co. Longford', 'Co. Longford'),
(15, 'Co. Louth', 'Co. Louth'),
(16, 'Co. Mayo', 'Co. Mayo'),
(17, 'Co. Meath', 'Co. Meath'),
(18, 'Co. Monaghan', 'Co. Monaghan'),
(19, 'Co. Offaly', 'Co. Offaly'),
(20, 'Co. Roscommon', 'Co. Roscommon'),
(21, 'Co. Sligo', 'Co. Sligo'),
(22, 'Co. Tipperary', 'Co. Tipperary'),
(23, 'Co. Waterford', 'Co. Waterford'),
(24, 'Co. Westmeath', 'Co. Westmeath'),
(25, 'Co. Wexford', 'Co. Wexford'),
(26, 'Co. Wicklow', 'Co. Wicklow'),
(27, '', 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_states_us`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_states_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `jos_nbill_xref_states_us`
--

INSERT INTO `jos_nbill_xref_states_us` (`id`, `code`, `description`) VALUES
(1, 'AL', 'Alabama'),
(2, 'AK', 'Alaska'),
(3, 'AS', 'American Samoa'),
(4, 'AZ', 'Arizona'),
(5, 'AR', 'Arkansas'),
(6, 'CA', 'California'),
(7, 'CO', 'Colorado'),
(8, 'CT', 'Connecticut'),
(9, 'DE', 'Delaware'),
(10, 'DC', 'District of Columbia'),
(11, 'FM', 'Federated States of Micronesia'),
(12, 'FL', 'Florida'),
(13, 'GA', 'Georgia'),
(14, 'GU', 'Guam'),
(15, 'HI', 'Hawaii'),
(16, 'ID', 'Idaho'),
(17, 'IL', 'Illinois'),
(18, 'IN', 'Indiana'),
(19, 'IA', 'Iowa'),
(20, 'KS', 'Kansas'),
(21, 'KY', 'Kentucky'),
(22, 'LA', 'Louisiana'),
(23, 'ME', 'Maine'),
(24, 'MH', 'Marshall Islands'),
(25, 'MD', 'Maryland'),
(26, 'MA', 'Massachusetts'),
(27, 'MI', 'Michigan'),
(28, 'MN', 'Minnesota'),
(29, 'MS', 'Mississippi'),
(30, 'MO', 'Missouri'),
(31, 'MT', 'Montana'),
(32, 'NE', 'Nebraska'),
(33, 'NV', 'Nevada'),
(34, 'NH', 'New Hampshire'),
(35, 'NJ', 'New Jersey'),
(36, 'NM', 'New Mexico'),
(37, 'NY', 'New York'),
(38, 'NC', 'North Carolina'),
(39, 'ND', 'North Dakota'),
(40, 'MP', 'Northern Mariana Islands'),
(41, 'OH', 'Ohio'),
(42, 'OK', 'Oklahoma'),
(43, 'OR', 'Oregon'),
(44, 'PW', 'Palau'),
(45, 'PA', 'Pennsylvania'),
(46, 'PR', 'Puerto Rico'),
(47, 'RI', 'Rhode Island'),
(48, 'SC', 'South Carolina'),
(49, 'SD', 'South Dakota'),
(50, 'TN', 'Tennessee'),
(51, 'TX', 'Texas'),
(52, 'UT', 'Utah'),
(53, 'VT', 'Vermont'),
(54, 'VI', 'Virgin Islands'),
(55, 'VA', 'Virginia'),
(56, 'WA', 'Washington'),
(57, 'WV', 'West Virginia'),
(58, 'WI', 'Wisconsin'),
(59, 'WY', 'Wyoming'),
(60, 'AA', 'Armed Forces Americas (except Canada)'),
(61, 'AP', 'Armed Forces Pacific'),
(62, 'AE', 'Armed Forces Other'),
(63, '', 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `jos_nbill_xref_states_us_and_ca`
--

CREATE TABLE IF NOT EXISTS `jos_nbill_xref_states_us_and_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `jos_nbill_xref_states_us_and_ca`
--

INSERT INTO `jos_nbill_xref_states_us_and_ca` (`id`, `code`, `description`) VALUES
(1, '--United States--', '--United States--'),
(2, 'AL', 'Alabama'),
(3, 'AK', 'Alaska'),
(4, 'AS', 'American Samoa'),
(5, 'AZ', 'Arizona'),
(6, 'AR', 'Arkansas'),
(7, 'CA', 'California'),
(8, 'CO', 'Colorado'),
(9, 'CT', 'Connecticut'),
(10, 'DE', 'Delaware'),
(11, 'DC', 'District of Columbia'),
(12, 'FM', 'Federated States of Micronesia'),
(13, 'FL', 'Florida'),
(14, 'GA', 'Georgia'),
(15, 'GU', 'Guam'),
(16, 'HI', 'Hawaii'),
(17, 'ID', 'Idaho'),
(18, 'IL', 'Illinois'),
(19, 'IN', 'Indiana'),
(20, 'IA', 'Iowa'),
(21, 'KS', 'Kansas'),
(22, 'KY', 'Kentucky'),
(23, 'LA', 'Louisiana'),
(24, 'ME', 'Maine'),
(25, 'MH', 'Marshall Islands'),
(26, 'MD', 'Maryland'),
(27, 'MA', 'Massachusetts'),
(28, 'MI', 'Michigan'),
(29, 'MN', 'Minnesota'),
(30, 'MS', 'Mississippi'),
(31, 'MO', 'Missouri'),
(32, 'MT', 'Montana'),
(33, 'NE', 'Nebraska'),
(34, 'NV', 'Nevada'),
(35, 'NH', 'New Hampshire'),
(36, 'NJ', 'New Jersey'),
(37, 'NM', 'New Mexico'),
(38, 'NY', 'New York'),
(39, 'NC', 'North Carolina'),
(40, 'ND', 'North Dakota'),
(41, 'MP', 'Northern Mariana Islands'),
(42, 'OH', 'Ohio'),
(43, 'OK', 'Oklahoma'),
(44, 'OR', 'Oregon'),
(45, 'PW', 'Palau'),
(46, 'PA', 'Pennsylvania'),
(47, 'PR', 'Puerto Rico'),
(48, 'RI', 'Rhode Island'),
(49, 'SC', 'South Carolina'),
(50, 'SD', 'South Dakota'),
(51, 'TN', 'Tennessee'),
(52, 'TX', 'Texas'),
(53, 'UT', 'Utah'),
(54, 'VT', 'Vermont'),
(55, 'VI', 'Virgin Islands'),
(56, 'VA', 'Virginia'),
(57, 'WA', 'Washington'),
(58, 'WV', 'West Virginia'),
(59, 'WI', 'Wisconsin'),
(60, 'WY', 'Wyoming'),
(61, 'AA', 'Armed Forces Americas (except Canada)'),
(62, 'AP', 'Armed Forces Pacific'),
(63, 'AE', 'Armed Forces Other'),
(64, '--Canada--', '--Canada--'),
(65, 'AB', 'Alberta'),
(66, 'BC', 'British Columbia'),
(67, 'MB', 'Manitoba'),
(68, 'NB', 'New Brunswick'),
(69, 'NL', 'Newfoundland and Labrador'),
(70, 'NT', 'Northwest Territories'),
(71, 'NS', 'Nova Scotia'),
(72, 'NU', 'Nunavut'),
(73, 'ON', 'Ontario'),
(74, 'PE', 'Prince Edward Island'),
(75, 'QC', 'Quebec'),
(76, 'SK', 'Saskatchewan'),
(77, 'YT', 'Yukon'),
(78, '', 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 63, '2011-10-11 06:39:19', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=,@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight]\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'route=1\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(39, 'System - Widgetkit', 'widgetkit_system', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(40, 'Content - Widgetkit', 'widgetkit_content', 'content', 0, 0, 1, 0, 0, 63, '2011-10-11 06:39:34', ''),
(41, 'System - Widgetkit ZOO', 'widgetkit_zoo', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(44, 'System - Core Design Scriptegrator plugin', 'cdscriptegrator', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'jquery=3\nhighslide=3\ncompression=0\noutlineType=outer-glow\noutlineWhileAnimating=0\nshowCredits=0\nexpandDuration=250\nanchor=auto\nalign=auto\ntransitions=expand\ndimmingOpacity=0\n\n'),
(47, 'Editor - JCE', 'jce', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(49, 'YOOtooltip', 'yoo_tooltip', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'style=default\nmode=cursor\nwidth=250\n\n'),
(51, 'plg_content_cdwebgallery', 'cdwebgallery', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(53, 'load module into article', 'module', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(54, 'Search - ZOO Search', 'zoosearch', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n'),
(55, 'Content - ZOO Shortcut', 'zooshortcut', 'content', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(56, 'System - ZOO Event', 'zooevent', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'Blog', '', 'blog', '', 'content', 'left', '', 1, 63, '2011-10-11 06:08:09', 1, 0, 4, ''),
(2, 'Our Service', '', 'our-service', '', 'content', 'left', '<p>Our Service</p>', 1, 0, '0000-00-00 00:00:00', 2, 0, 5, ''),
(3, 'Profil', '', 'profil', '', 'content', 'left', '<p> </p>\r\n<p><span style="color: #000000;">WEB BLOWER adalah sebuah perusahaan yang bergerak di bidang desain website dan desain promosi media cetak yang mengutamakan kepentingan klien kami agar sukses dalam mempromosikan produk berupa barang dan atau jasa.</span></p>\r\n<p> </p>\r\n<p><span style="color: #000000;">Kelebihan WebBlower adalah berani menjamin kualitasnya, "Dengan Harga MURAH hasil dari kami TIDAK MURAHAN", kami tetap mengutamakan kualitas dan pelayanan yang terbaik.</span><span style="color: #000000;"> Tetap membangun kerjasama yang sinergis untuk mengembangkan Word Of Mouth terbaik untuk perusahaan kami.</span><span style="color: #000000;"> Berjalan dengan membangun dan juga mengembangkan konsep-konsep desain (website dan media cetak) sesuai kebutuhan klien.</span></p>\r\n<p> </p>\r\n<p> </p>', 1, 63, '2011-10-11 06:12:53', 3, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1330049306', '660d03210b388644e662954cee8b7e88', 1, 0, '', 0, 0, 'sF2Mt4Zft6LMv9qmRHhvbQuLOdk2qDMpxufeODAEruKrk_ccBZWFFmBVmRdqBKnasBf99ZTQeo8HBWL1IU3mpD9ddWAASdV6_EWjPaQ2QjYUt6OpXv0RzZa_Qg0PcBc2LLI2qc4clJweFxdqKOZXr3SvBDBi1bEDhtcTdxfXJ2IKx75TeGjuKzpRE9uoAkW00qnqmyBanPGQZ9xRCLW9thGdqoanwPgkgY2AFLitz5BVNRHCMdqD-HWGQEJNBuOj09DcflxCWBhDPP2R9_GOqw_Y8CulmcREhhWWtyt7jwAYmuA4tsMJe1JduFKpDFqzbP0Xuw2wJBFYqQxuCFgiloOr5SLsrs8yPMpkRwFfxc_pWazGOapEwj9GTKiwFqWqLNrb-rZu5ylRZxgYjRLcLlfaYzh0PxoQQCIolX-tkazXRYQMWpwVkuuFCs6oDpRbVseYqLD-POBtESnLpxAW358VPV1siqlDXnb3_6SVd8GXQwkVD3U3xYUqFQUIqrCvxSML_KS1qUftRxqnyjq-jTv49Dt7lijUF_L2ZK0JgDsgMlHhk3rU4aZk2xiLWNwjew8FPXU5sTkxqQZhYqjZ-_TIhzXqDR1YsdIaldKJfJ1MjTY5ivMYo-GB_1bIe_O8HTwjtVRhbvRa5Qse00srdHBIflfwJMpB3qLfK48kEJV3odQmN-Ti8CnUakfpyNENtwUvi0p6xBOJryMgh5RDLHRJr1LbpSmzfB8GtCEdPJSk3ewbin-950bhEyCSVKu0dprsGDEBG1XOqUoP9yjjq_Fd3dqk2QVC7P5p2ZjwADLYWEYfvt6fuRPjCsvupmUM1xknKLAvbawGeu6O9k_LaEKPZrHKF4TxCW7108xF651wXR-_zu_4mohu4eouZy9vGXETw9F9szC23DeRd2HYSlS_YboJ0mAlUFZdL4bVESZpjPuXfZGM_Fa37sYrTsQOunc7QWVzqbIG_cF2uAEAspeqNSf_dk29F92AKrtDLsz2VZQubADFJ9ivTwuo2SeqlzjJmR7S8RGSpgY9tyL_21UaNEuB4ntj0TGPs7fN-Azn9bU14teC6z7sSuy18wrArgylqBHTZ1jfHYwwxNE_eVXOXKXD7h4TmD_IwA1gMrayB3Ua-1YvRUDZ3hXmqXzacsDpv9epdIRyw6hf3yP8nYhKjebd2v2DRj76OEbzF2AYs4t6EqRIVSEOLR8hAF_T2zjD7_m9rW-OTOWQNnMe_Q9iphKLtPSqSzvsmcLTUykkPbLehHu8-zG2GsUqYkFuKwh62xmLo89HwqNirjKFW0n5MU7JWxO_iYSp4wxadulVMr-TQgA96LPrs4FE-PLPhFeTqgdpFgtsoJHi1WZMo6v99-xXpUT0AAWfjautamNkfBzxLEqQKfFlI8q6XkOfzY-IgLOYhyecWdEGffCArv1nHApvu0W4AxFEPSvpx4nzhRd1NPYlioZj2ANr18EAhBMmowtmnidkMXFdbaq6EnZjVASSXmB_L7bfJOoRNnqNGD-eY6SofrbnUew3x3lGjgsdj7DPs5jgk9wiJFvjDWnFd_RUyfyInaLPEd5Y-tw-R5QKJn0jxF3A39iwYXJn');

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('yoo_shelf', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'admin@admin.com', '388b3a7ae674311610fa8230835a614d:g0ZGEyYt5rssqKwyjST16MYnta9z9wYS', 'Super Administrator', 0, 1, 25, '2011-09-22 15:58:49', '2011-11-12 11:48:51', '', 'admin_language=\nlanguage=\neditor=jce\nhelpsite=\ntimezone=0\n\n'),
(63, 'Arifian', 'arifian', 'arifian@webblower.com', 'e2ef9350064d8d9534ebec7f2bb31eac:CUFrgOqAKzQM1LulvmEYPaaCwWAQmCy5', 'Administrator', 0, 0, 24, '2011-09-28 07:04:25', '2011-10-12 18:36:00', '', 'admin_language=\nlanguage=\neditor=jce\nhelpsite=\ntimezone=0\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 3, 0, 'YOOtheme', 'yootheme', 'http://www.yootheme.com', '', '2011-02-16 14:47:57', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=\n\n'),
(2, 3, 0, 'ZOO', 'zoo', 'http://www.yootheme.com/zoo', '', '2011-02-16 14:47:38', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, 'target=\n\n'),
(5, 3, 0, 'Icons', 'icons', 'http://www.yootheme.com/icons', '', '2011-02-16 14:48:53', 2, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_wf_profiles`
--

INSERT INTO `jos_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '19,20,21,23,24,25', '', 0, 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,paste,indent,outdent,numlist,bullist,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,browser,inlinepopups,media,help,paste,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,xhtmlxtras,imgmanager,link,spellchecker,article', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '19,20,21', '', 1, 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;paste,searchreplace,indent,outdent,numlist,bullist,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,inlinepopups,help,paste,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,xhtmlxtras,imgmanager,link,spellchecker,article', 0, 2, 63, '2011-10-11 06:54:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_widgetkit_widget`
--

CREATE TABLE IF NOT EXISTS `jos_widgetkit_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `jos_widgetkit_widget`
--

INSERT INTO `jos_widgetkit_widget` (`id`, `type`, `style`, `name`, `content`, `created`, `modified`) VALUES
(2, 'slideset', 'default', 'Frontpage Slideset', '{"type":"slideset","id":"2","name":"Frontpage Slideset","settings":{"style":"default","width":"auto","height":"auto","effect":"slide","index":0,"autoplay":1,"interval":5000,"items_per_set":4,"navigation":1,"buttons":0,"title":0,"duration":500},"style":"default","items":{"4e311d523a8d7":{"title":"Slide01","content":"<a title=\\"test my apps\\" data-lightbox=\\"transitionIn:elastic;transitionOut:elastic;overlayShow:true;titlePosition:float;\\" href=\\"http:\\/\\/www.yootheme.com\\/videos\\/mediaplayer.mp4\\"><img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app01.png\\" height=\\"220\\" width=\\"210\\" \\/><\\/a>","set":"set01"},"4e311d7be3626":{"title":"Slide02","content":"<a title=\\"test my apps\\" data-lightbox=\\"transitionIn:elastic;transitionOut:elastic;overlayShow:true;titlePosition:float;\\" href=\\"http:\\/\\/www.adobe.com\\/jp\\/events\\/cs3_web_edition_tour\\/swfs\\/perform.swf\\"><img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app02.png\\" height=\\"220\\" width=\\"210\\" \\/><\\/a>","set":"set01"},"4e311d802130d":{"title":"Slide03","content":"<a title=\\"test my apps\\" data-lightbox=\\"transitionIn:elastic;transitionOut:elastic;overlayShow:true;titlePosition:float;\\" href=\\"http:\\/\\/www.youtube.com\\/watch?v=R55e-uHQna0\\"><img alt=\\"home app03\\" src=\\"images\\/yootheme\\/home_app03.png\\" height=\\"220\\" width=\\"210\\" \\/><\\/a>","set":"set01"},"4e311d81520ed":{"title":"Slide04","content":"<a title=\\"test my apps\\" data-lightbox=\\"transitionIn:elastic;transitionOut:elastic;overlayShow:true;titlePosition:float;\\" href=\\"http:\\/\\/vimeo.com\\/15261921\\"><img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app05.png\\" height=\\"220\\" width=\\"210\\" \\/><\\/a>","set":"set01"},"4e311d855e77b":{"title":"Slide05","content":"<a data-spotlight=\\"effect:bottom;\\" href=\\"mypage.html\\"><img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app04.png\\" height=\\"220\\" width=\\"210\\" \\/>\\r\\n<div class=\\"overlay\\"><img style=\\"margin: 1px; float: right;\\" alt=\\"banner badge\\" src=\\"images\\/yootheme\\/widgetkit\\/spotlight\\/banner_badge.png\\" height=\\"108\\" width=\\"71\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam scelerisque egestas dui tincidunt venenatis.<\\/div>\\r\\n<\\/a>","set":"set02"},"4e311d87bf9b6":{"title":"Slide06","content":"<a data-spotlight=\\"effect:bottom;\\" href=\\"mypage.html\\"><img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app06.png\\" height=\\"220\\" width=\\"210\\" \\/>\\r\\n<div class=\\"overlay\\"><img style=\\"margin: 1px; float: right;\\" alt=\\"banner badge\\" src=\\"images\\/yootheme\\/widgetkit\\/spotlight\\/banner_badge.png\\" height=\\"108\\" width=\\"71\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam scelerisque egestas dui tincidunt venenatis.<\\/div>\\r\\n<\\/a>","set":"set02"},"4e311d934256b":{"title":"Slide07","content":"<a data-spotlight=\\"effect:bottom;\\" href=\\"mypage.html\\"><img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app07.png\\" height=\\"220\\" width=\\"210\\" \\/>\\r\\n<div class=\\"overlay\\"><img style=\\"margin: 1px; float: right;\\" alt=\\"banner badge\\" src=\\"images\\/yootheme\\/widgetkit\\/spotlight\\/banner_badge.png\\" height=\\"108\\" width=\\"71\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam scelerisque egestas dui tincidunt venenatis.<\\/div>\\r\\n<\\/a>","set":"set02"},"4e311d94adc81":{"title":"Slide08","content":"<a data-spotlight=\\"effect:bottom;\\" href=\\"mypage.html\\"><img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app08.png\\" height=\\"220\\" width=\\"210\\" \\/>\\r\\n<div class=\\"overlay\\"><img style=\\"margin: 1px; float: right;\\" alt=\\"banner badge\\" src=\\"images\\/yootheme\\/widgetkit\\/spotlight\\/banner_badge.png\\" height=\\"108\\" width=\\"71\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam scelerisque egestas dui tincidunt venenatis.<\\/div>\\r\\n<\\/a>","set":"set02"},"4e311d95df432":{"title":"Slide09","content":"<a data-lightbox=\\"transitionIn:elastic;transitionOut:elastic;overlayShow:true;titlePosition:float;width:1400;height:1000;\\" href=\\"http:\\/\\/www.porosnusantara.com\\"><img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app09.png\\" height=\\"220\\" width=\\"210\\" \\/><\\/a>","set":"set03"},"4e311d9727c78":{"title":"Slide10","content":"<img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app10.png\\" height=\\"220\\" width=\\"210\\" \\/>","set":"set03"},"4e311d983e4af":{"title":"Slide11","content":"<img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app11.png\\" height=\\"220\\" width=\\"210\\" \\/>","set":"set03"},"4e311d9986b98":{"title":"Slide12","content":"<img alt=\\"App Icon\\" src=\\"images\\/yootheme\\/home_app12.png\\" height=\\"220\\" width=\\"210\\" \\/>","set":"set03"}}}', '2011-07-28 08:31:06', '2011-09-26 23:31:50'),
(24, 'gallery', 'wall', 'Demo Wall Zoom', '{"type":"gallery","id":24,"name":"Demo Wall Zoom","settings":{"style":"wall","width":200,"height":150,"effect":"zoom","margin":"","corners":"","lightbox":1,"lightbox_caption":1,"spotlight_effect":""},"style":"wall","paths":["\\/yootheme\\/widgetkit\\/gallery\\/zoom"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image1.jpg":"Model 1","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image2.jpg":"Model 2","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image3.jpg":"Model 3","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image4.jpg":"Model 4","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image5.jpg":"Model 5","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image6.jpg":"Model 6"},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/zoom\\/image6.jpg":""}}', '2011-07-07 15:41:12', '2011-07-29 10:38:06'),
(25, 'gallery', 'wall', 'Demo Wall Polaroid', '{"type":"gallery","id":"25","name":"Demo Wall Polaroid","settings":{"style":"wall","width":200,"height":150,"effect":"polaroid","margin":"","corners":"","lightbox":1,"lightbox_caption":1,"spotlight_effect":""},"style":"wall","paths":["\\/portfolio"],"captions":{"\\/portfolio\\/Budiperkasa.Net76.net-small.jpg":"","\\/portfolio\\/RT-small.png":"","\\/portfolio\\/Rumah Teknik - Alat Selam - Alat Diving - Radio Komunikasi - Gps Garmin-small.JPG":"","\\/portfolio\\/bali-collection.png":"","\\/portfolio\\/garmin-indonesia-small.png":"","\\/portfolio\\/goleti-small.png":"","\\/portfolio\\/mesintempelyamaha.png":"","\\/portfolio\\/natuna-small.png":"","\\/portfolio\\/porosnusantara-small.png":""},"links":{"\\/portfolio\\/Budiperkasa.Net76.net-small.jpg":"","\\/portfolio\\/RT-small.png":"","\\/portfolio\\/Rumah Teknik - Alat Selam - Alat Diving - Radio Komunikasi - Gps Garmin-small.JPG":"","\\/portfolio\\/bali-collection.png":"","\\/portfolio\\/garmin-indonesia-small.png":"","\\/portfolio\\/goleti-small.png":"","\\/portfolio\\/mesintempelyamaha.png":"","\\/portfolio\\/natuna-small.png":"","\\/portfolio\\/porosnusantara-small.png":""}}', '2011-07-07 15:44:32', '2011-10-11 07:59:32'),
(10, 'slideshow', 'default', 'Demo Default', '{"type":"slideshow","id":10,"name":"Demo Default","settings":{"style":"default","autoplay":1,"interval":5000,"width":600,"height":300,"duration":500,"index":0,"navigation":1,"buttons":1,"slices":15,"animated":"scrollLeft","caption_animation_duration":500},"style":"default","items":{"4dd00c3ee01f3":{"title":"Slide 1","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 01\\" \\/><\\/a>","caption":""},"4dd00c473c0f2":{"title":"Slide 2","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 02\\" \\/><\\/a>","caption":"This is a HTML caption with a <a href=\\"#\\">link<\\/a>."},"4dd00c4eb7982":{"title":"Slide 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 03\\" \\/><\\/a>","caption":"This is another HTML caption with a <a href=\\"#\\">link<\\/a>."},"4de3f1aa49f9a":{"title":"Slide 4","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 04\\" \\/><\\/a>","caption":""},"4de3f1ab9f6c9":{"title":"Slide 5","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg\\" width=\\"600\\" height=\\"300\\" alt=\\"Image 05\\" \\/><\\/a>","caption":""}}}', '2011-05-15 17:24:01', '2011-07-28 17:04:22'),
(19, 'gallery', 'default', 'Demo Slideshow', '{"type":"gallery","id":19,"name":"Demo Slideshow","settings":{"style":"default","width":600,"height":300,"autoplay":1,"interval":5000,"duration":500,"index":0,"navigation":1,"buttons":1,"slices":15,"animated":"randomFx","caption_animation_duration":500,"lightbox":1},"style":"default","paths":["\\/yootheme\\/widgetkit\\/slideshow"],"captions":{"\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg":"This is a HTML caption with a <a href=\\"#\\">link<\\/a>.","\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg":"This is another HTML caption with a <a href=\\"#\\">link<\\/a>.","\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg":""},"links":{"\\/yootheme\\/widgetkit\\/slideshow\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/slideshow\\/image5.jpg":""}}', '2011-06-29 17:52:08', '2011-07-28 16:18:18'),
(23, 'gallery', 'wall', 'Demo Wall Spotlight', '{"type":"gallery","id":23,"name":"Demo Wall Spotlight","settings":{"style":"wall","width":200,"height":150,"effect":"spotlight","margin":"margin","corners":"round","lightbox":1,"lightbox_caption":1,"spotlight_effect":""},"style":"wall","paths":["\\/yootheme\\/widgetkit\\/gallery"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image6.jpg":""},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image4.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image5.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/image6.jpg":""}}', '2011-07-03 16:53:00', '2011-07-28 16:18:08'),
(18, 'photogallery', 'default', 'test', '{"type":"photogallery","id":18,"name":"test","settings":{"style":"default","width":100,"height":100},"style":"default","paths":[],"captions":[]}', '2011-05-23 12:25:30', '2011-05-25 15:49:40'),
(26, 'map', 'default', 'Demo Default', '{"type":"map","id":26,"name":"Demo Default","settings":{"style":"default","width":"auto","height":500,"mapTypeId":"roadmap","zoom":13,"mapCtrl":1,"typeCtrl":1,"popup":2,"directions":1,"styler_invert_lightness":0,"styler_hue":"","styler_saturation":0,"styler_lightness":0,"styler_gamma":0},"style":"default","items":{"4e16d63a2bc97":{"title":"Museum of Modern Art","location":"Museum of Modern Art, New York, NY 10019, USA","lat":"40.7613983","lng":"-73.9776179","icon":"red-dot","popup":"<h3>Museum of Modern Art<\\/h3>\\r\\n11 W 53rd St\\r\\n<br \\/>New York, NY 10019\\r\\n<br \\/>(212) 708-9400\\r\\n<br \\/><a href=\\"http:\\/\\/www.moma.org\\">moma.org<\\/a>"},"4e16d65531670":{"title":"Madison Square Garden","location":"Madison Square Garden, Manhattan, NY, USA","lat":"40.7505129","lng":"-73.9935043","icon":"red-dot","popup":"<h3>Madison Square Garden<\\/h3>\\r\\n2 Penn Plz # 15\\r\\n<br \\/>New York, NY 10121\\r\\n<br \\/>Get Directions\\r\\n<br \\/>(212) 465-6000\\r\\n<br \\/><a href=\\"http:\\/\\/www.msg.com\\">msg.com<\\/a>"},"4e16d5e1740d8":{"title":"Rockefeller Center","location":"Rockefeller Plaza, Rockefeller Center, New York, NY 10112, USA","lat":"40.7584384","lng":"-73.9789121","icon":"red-dot","popup":"<h3>Rockefeller Center<\\/h3>\\r\\n25 W 51st St\\r\\n<br \\/>New York, NY 10019\\r\\n<br \\/>(212) 262-1600\\r\\n<br \\/><a href=\\"http:\\/\\/www.rockefellercenterhotel.com\\">rockefellercenterhotel.com<\\/a>"},"4e16d6476a880":{"title":"Empire State Building","location":"Empire State Bldg, 350 5th Ave, New York, NY 10001, USA","lat":"40.748379","lng":"-73.98555999999999","icon":"red-dot","popup":"<h3>Empire State Building<\\/h3>\\r\\n350 5th Ave # 3210\\r\\n<br \\/>New York, NY 10118\\r\\n<br \\/>(212) 736-3100\\r\\n<br \\/><a href=\\"http:\\/\\/www.esbnyc.com\\">esbnyc.com<\\/a>"}}}', '2011-07-08 10:05:25', '2011-07-12 08:24:55'),
(28, 'map', 'default', 'Demo Black', '{"type":"map","id":28,"name":"Demo Black","settings":{"style":"default","width":"auto","height":300,"mapTypeId":"roadmap","zoom":13,"mapCtrl":1,"typeCtrl":0,"popup":1,"directions":0,"styler_invert_lightness":1,"styler_hue":"#ff3300","styler_saturation":-50,"styler_lightness":0,"styler_gamma":0.91},"style":"default","items":{"4e19a7ec5f75a":{"title":"London","location":"Westminster, London, UK","lat":"51.5001524","lng":"-0.1262362","icon":"purple-dot","popup":""}}}', '2011-07-10 13:25:58', '2011-07-12 08:24:47'),
(27, 'gallery', 'slider', 'Demo Slider Center', '{"type":"gallery","id":"27","name":"Demo Slider Center","settings":{"style":"slider","width":300,"height":200,"total_width":600,"spacing":3,"center":1,"sticky":1,"duration":400,"lightbox":1,"lightbox_caption":1,"spotlight":1,"spotlight_effect":"bottom"},"style":"slider","paths":["\\/Portofolio_Desain_Cetak"],"captions":{"\\/Portofolio_Desain_Cetak\\/flyer - dmi - for prj-02.jpg":"","\\/Portofolio_Desain_Cetak\\/flyer edge - convert-01.jpg":"","\\/Portofolio_Desain_Cetak\\/garmin comes to bali lowres.jpg":"","\\/Portofolio_Desain_Cetak\\/gps map 585 dan fish finder-02.jpg":"","\\/Portofolio_Desain_Cetak\\/mens health part2 - nuvi 3770-01.jpg":"","\\/Portofolio_Desain_Cetak\\/mini x banner-01.jpg":"","\\/Portofolio_Desain_Cetak\\/roll banner - edge ke ii-01.jpg":""},"links":{"\\/Portofolio_Desain_Cetak\\/flyer - dmi - for prj-02.jpg":"","\\/Portofolio_Desain_Cetak\\/flyer edge - convert-01.jpg":"","\\/Portofolio_Desain_Cetak\\/garmin comes to bali lowres.jpg":"","\\/Portofolio_Desain_Cetak\\/gps map 585 dan fish finder-02.jpg":"","\\/Portofolio_Desain_Cetak\\/mens health part2 - nuvi 3770-01.jpg":"","\\/Portofolio_Desain_Cetak\\/mini x banner-01.jpg":"","\\/Portofolio_Desain_Cetak\\/roll banner - edge ke ii-01.jpg":""}}', '2011-07-08 15:28:38', '2011-10-11 13:19:23'),
(29, 'map', 'default', 'Demo Minimal', '{"type":"map","id":29,"name":"Demo Minimal","settings":{"style":"default","width":400,"height":200,"mapTypeId":"roadmap","zoom":13,"mapCtrl":0,"typeCtrl":0,"popup":0,"directions":0,"styler_invert_lightness":0,"styler_hue":"","styler_saturation":0,"styler_lightness":0,"styler_gamma":0},"style":"default","items":{"4e1ac310cf33e":{"title":"Hamburg","location":"Hamburg, Germany","lat":"53.553813","lng":"9.991586","icon":"red-dot","popup":""}}}', '2011-07-11 09:33:05', '2011-07-12 08:25:03'),
(30, 'accordion', 'default', 'Demo Default', '{"type":"accordion","id":30,"name":"Demo Default","settings":{"style":"default","collapseall":1,"matchheight":1,"index":0,"duration":500,"width":500},"style":"default","items":{"4e1ac6fe6a20d":{"title":"Slide 1","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/accordion\\/image1.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 01\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua<\\/p>"},"4e1ac708561be":{"title":"Slide 2","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/accordion\\/image2.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 02\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua<\\/p>"},"4e1ac70cb840e":{"title":"Slide 3","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/accordion\\/image3.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 03\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua<\\/p>"},"4e1ac711bbabe":{"title":"Slide 4","content":"<img class=\\"align-left\\" src=\\"images\\/yootheme\\/widgetkit\\/accordion\\/image4.png\\" width=\\"115\\" height=\\"105\\" alt=\\"Icon 04\\" \\/>\\r\\n<h3 class=\\"remove-margin-t\\">Headline<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua<\\/p>"}}}', '2011-07-11 09:49:12', '2011-07-29 14:47:22'),
(31, 'gallery', 'slider', 'Demo Slider Left', '{"type":"gallery","id":31,"name":"Demo Slider Left","settings":{"style":"slider","width":300,"height":200,"total_width":600,"spacing":3,"center":0,"sticky":0,"duration":400,"lightbox":0,"lightbox_caption":1,"spotlight":0,"spotlight_effect":""},"style":"slider","paths":["\\/yootheme\\/widgetkit\\/gallery\\/slider1"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image4.jpg":""},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider1\\/image4.jpg":""}}', '2011-07-12 18:23:44', '2011-07-29 07:48:55'),
(32, 'slideset', 'default', 'Demo Slide', '{"type":"slideset","id":32,"name":"Demo Slide","settings":{"style":"default","width":"auto","height":"auto","effect":"slide","index":0,"autoplay":1,"interval":5000,"items_per_set":4,"navigation":1,"buttons":0,"title":1,"duration":300},"style":"default","items":{"4e30070bb3f2c":{"title":"Radio","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image1.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 01\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071628817":{"title":"Camera","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image2.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 02\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071b515e1":{"title":"Calendar","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image3.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 03\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300720a131e":{"title":"Volume","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image4.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 04\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300725404e2":{"title":"Chat","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image5.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 05\\" \\/><\\/a>","group":"","set":"Set 2"},"4e301094b3b19":{"title":"Tunes","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image6.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 06\\" \\/><\\/a>","set":"Set 2"},"4e301099469eb":{"title":"E-Mail","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image7.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 07\\" \\/><\\/a>","set":"Set 2"},"4e30109dc7253":{"title":"Google+","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image8.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 08\\" \\/><\\/a>","set":"Set 2"},"4e30109faa62d":{"title":"Player","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image9.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 09\\" \\/><\\/a>","set":"Set 3"},"4e3010a16c585":{"title":"Like","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image10.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 10\\" \\/><\\/a>","set":"Set 3"},"4e329ee00dfeb":{"title":"Twitter","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image11.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 12\\" \\/><\\/a>"},"4e329ee198f40":{"title":"Weather","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image12.png\\" width=\\"115\\" height=\\"115\\" alt=\\"Icon 12\\" \\/><\\/a>"}}}', '2011-07-27 12:40:13', '2011-07-29 14:19:51'),
(33, 'slideset', 'default', 'Demo Zoom', '{"type":"slideset","id":"33","name":"Demo Zoom","settings":{"style":"default","width":"auto","height":"24px","effect":"zoom","index":0,"autoplay":1,"interval":7000,"items_per_set":"set","navigation":0,"buttons":0,"title":0,"duration":400},"style":"default","items":{"4e30070bb3f2c":{"title":"Icon 1","content":"<a data-lightbox=\\"width:1000;height:700;\\" href=\\"http:\\/\\/www.facebook.com\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image1.png\\" alt=\\"Icon 01\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071628817":{"title":"Icon 2","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image2.png\\" alt=\\"Icon 02\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","group":"","set":"Set 1"},"4e30071b515e1":{"title":"Icon 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image3.png\\" alt=\\"Icon 03\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300720a131e":{"title":"Icon 4","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image4.png\\" alt=\\"Icon 04\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","group":"","set":"Set 1"},"4e300725404e2":{"title":"Item 5","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image5.png\\" alt=\\"Icon 05\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","group":"","set":"Set 2"},"4e301094b3b19":{"title":"Icon 6","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image6.png\\" alt=\\"Icon 06\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","set":"Set 2"},"4e301099469eb":{"title":"Icon 7","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image7.png\\" alt=\\"Icon 07\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","set":"Set 2"},"4e30109dc7253":{"title":"Icon 8","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image8.png\\" alt=\\"Icon 08\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","set":"Set 2"},"4e30109faa62d":{"title":"Icon 9","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image9.png\\" alt=\\"Icon 09\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","set":"Set 3"},"4e3010a16c585":{"title":"Icon 10","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image10.png\\" alt=\\"Icon 10\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>","set":"Set 3"},"4e329ee00dfeb":{"title":"Icon 11","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image11.png\\" alt=\\"Icon 12\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>"},"4e329ee198f40":{"title":"Icon 12","set":"Set 3","content":"<a href=\\"#\\"><img src=\\"images\\/yootheme\\/widgetkit\\/slideset\\/image12.png\\" alt=\\"Icon 12\\" height=\\"24\\" width=\\"24\\" \\/><\\/a>"}}}', '2011-07-29 11:53:34', '2011-10-24 04:30:01'),
(34, 'gallery', 'slider', 'Portofolio Desain Cetak', '{"type":"gallery","id":"34","name":"Portofolio Desain Cetak","settings":{"style":"slider","width":"auto","height":"auto","total_width":"auto","spacing":0,"center":1,"sticky":0,"duration":500,"lightbox":0,"lightbox_caption":1,"spotlight":1,"spotlight_effect":""},"style":"slider","paths":["\\/Portofolio_Desain_Cetak"],"captions":{"\\/Portofolio_Desain_Cetak\\/flyer - dmi - for prj-02.jpg":"","\\/Portofolio_Desain_Cetak\\/flyer edge - convert-01.jpg":"","\\/Portofolio_Desain_Cetak\\/garmin comes to bali lowres.jpg":"","\\/Portofolio_Desain_Cetak\\/gps map 585 dan fish finder-02.jpg":"","\\/Portofolio_Desain_Cetak\\/mens health part2 - nuvi 3770-01.jpg":"","\\/Portofolio_Desain_Cetak\\/mini x banner-01.jpg":"","\\/Portofolio_Desain_Cetak\\/roll banner - edge ke ii-01.jpg":""},"links":{"\\/Portofolio_Desain_Cetak\\/flyer - dmi - for prj-02.jpg":"","\\/Portofolio_Desain_Cetak\\/flyer edge - convert-01.jpg":"","\\/Portofolio_Desain_Cetak\\/garmin comes to bali lowres.jpg":"","\\/Portofolio_Desain_Cetak\\/gps map 585 dan fish finder-02.jpg":"","\\/Portofolio_Desain_Cetak\\/mens health part2 - nuvi 3770-01.jpg":"","\\/Portofolio_Desain_Cetak\\/mini x banner-01.jpg":"","\\/Portofolio_Desain_Cetak\\/roll banner - edge ke ii-01.jpg":""}}', '2011-10-11 08:01:38', '2011-10-11 13:03:18'),
(35, 'gallery', 'slider', 'Demo Slider Center (Copy)', '{"type":"gallery","id":0,"name":"Demo Slider Center (Copy)","settings":{"style":"slider","width":300,"height":200,"total_width":600,"spacing":3,"center":1,"sticky":0,"duration":400,"lightbox":1,"lightbox_caption":1,"spotlight":1,"spotlight_effect":"bottom"},"style":"slider","paths":["\\/yootheme\\/widgetkit\\/gallery\\/slider2"],"captions":{"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image1.jpg":"This is a caption for the first image.","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image2.jpg":"This is a caption for the second image.","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image3.jpg":"This is a caption for the third image.","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image4.jpg":"This is a caption for the fourth image."},"links":{"\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image1.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image2.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image3.jpg":"","\\/yootheme\\/widgetkit\\/gallery\\/slider2\\/image4.jpg":""}}', '2011-10-11 08:02:26', '2011-10-11 08:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_application`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `application_group` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_zoo_application`
--

INSERT INTO `jos_zoo_application` (`id`, `name`, `alias`, `application_group`, `description`, `params`) VALUES
(1, 'Download Archive', 'archive', 'download', '', '{"group":"download","template":"default","global.config.items_per_page":"5","global.config.item_order":"alpha","global.config.alpha_index":"3","global.config.show_feed_link":"0","global.config.feed_title":"","global.config.alternate_feed_link":"","global.template.show_alpha_index":"1","global.template.show_title":"1","global.template.show_description":"1","global.template.show_image":"1","global.template.alignment":"left","global.template.categories_cols":"4","global.template.show_categories_titles":"1","global.template.show_categories_item_count":"1","global.template.show_categories_descriptions":"1","global.template.show_categories_images":"1","global.template.show_sub_categories":"1","global.template.show_sub_categories_item_count":"1","global.template.items_cols":"2","global.template.items_media_alignment":"left","global.comments.enable_comments":"1","global.comments.require_name_and_mail":"1","global.comments.registered_users_only":"0","global.comments.approved":"0","global.comments.time_between_user_posts":"120","global.comments.email_notification":"","global.comments.email_reply_notification":"0","global.comments.avatar":"1","global.comments.order":"ASC","global.comments.max_depth":"5","global.comments.facebook_enable":"0","global.comments.facebook_app_id":"","global.comments.facebook_app_secret":"","global.comments.twitter_enable":"0","global.comments.twitter_consumer_key":"","global.comments.twitter_consumer_secret":"","global.comments.akismet_enable":"0","global.comments.akismet_api_key":"","global.comments.mollom_enable":"0","global.comments.mollom_public_key":"","global.comments.mollom_private_key":"","global.comments.blacklist":""}'),
(2, 'Blog ', 'content-zoo', 'blog', '', '{"group":"blog","template":"default","global.config.items_per_page":"5","global.config.item_order":"rdate","global.config.show_feed_link":"1","global.config.feed_title":"","global.config.alternate_feed_link":"","global.template.show_title":"1","global.template.show_description":"1","global.template.show_image":"1","global.template.alignment":"left","global.template.items_cols":"1","global.template.items_order":"0","global.template.teaseritem_media_alignment":"left","global.template.item_media_alignment":"left","global.comments.enable_comments":"1","global.comments.require_name_and_mail":"1","global.comments.registered_users_only":"0","global.comments.approved":"0","global.comments.time_between_user_posts":"120","global.comments.email_notification":"","global.comments.email_reply_notification":"0","global.comments.avatar":"1","global.comments.order":"ASC","global.comments.max_depth":"5","global.comments.facebook_enable":"0","global.comments.facebook_app_id":"","global.comments.facebook_app_secret":"","global.comments.twitter_enable":"0","global.comments.twitter_consumer_key":"","global.comments.twitter_consumer_secret":"","global.comments.akismet_enable":"0","global.comments.akismet_api_key":"","global.comments.mollom_enable":"0","global.comments.mollom_public_key":"","global.comments.mollom_private_key":"","global.comments.blacklist":""}'),
(3, 'Movie Database', 'movie', 'movie', '', '{"group":"movie","template":"default","global.config.items_per_page":"15","global.config.item_order":"alpha","global.config.alpha_index":"2","global.config.show_feed_link":"0","global.config.feed_title":"","global.config.alternate_feed_link":"","global.template.show_alpha_index":"1","global.template.show_title":"1","global.template.show_description":"1","global.template.show_image":"1","global.template.alignment":"center","global.template.show_categories":"1","global.template.categories_cols":"4","global.template.categories_order":"1","global.template.show_categories_titles":"1","global.template.show_categories_item_count":"1","global.template.show_categories_descriptions":"1","global.template.show_categories_images":"1","global.template.show_sub_categories":"1","global.template.show_sub_categories_item_count":"1","global.template.show_sub_categories_items":"1","global.template.items_cols":"4","global.template.items_media_alignment":"center","global.template.item_sidebar_alignment":"right","global.template.show_spoiler_warning":"0","global.comments.enable_comments":"1","global.comments.require_name_and_mail":"1","global.comments.registered_users_only":"0","global.comments.approved":"0","global.comments.time_between_user_posts":"120","global.comments.email_notification":"","global.comments.email_reply_notification":"0","global.comments.avatar":"1","global.comments.order":"ASC","global.comments.max_depth":"5","global.comments.facebook_enable":"0","global.comments.facebook_app_id":"","global.comments.facebook_app_secret":"","global.comments.twitter_enable":"0","global.comments.twitter_consumer_key":"","global.comments.twitter_consumer_secret":"","global.comments.akismet_enable":"0","global.comments.akismet_api_key":"","global.comments.mollom_enable":"0","global.comments.mollom_public_key":"","global.comments.mollom_private_key":"","global.comments.blacklist":""}'),
(4, 'Product Catalog', 'produk-katalog', 'product', '', '{"group":"product","template":"default","global.config.items_per_page":"15","global.config.item_order":"alpha","global.config.alpha_index":"3","global.config.show_feed_link":"0","global.config.feed_title":"","global.config.alternate_feed_link":"","global.template.show_alpha_index":"1","global.template.show_title":"1","global.template.show_description":"1","global.template.show_image":"1","global.template.alignment":"left","global.template.categories_cols":"4","global.template.show_categories_titles":"1","global.template.show_categories_item_count":"1","global.template.show_categories_descriptions":"1","global.template.show_categories_images":"1","global.template.show_sub_categories":"1","global.template.show_sub_categories_item_count":"1","global.template.items_cols":"2","global.template.items_media_alignment":"left","global.template.item_media_alignment":"right","global.comments.enable_comments":"1","global.comments.require_name_and_mail":"1","global.comments.registered_users_only":"0","global.comments.approved":"0","global.comments.time_between_user_posts":"120","global.comments.email_notification":"","global.comments.email_reply_notification":"0","global.comments.avatar":"1","global.comments.order":"ASC","global.comments.max_depth":"5","global.comments.facebook_enable":"0","global.comments.facebook_app_id":"","global.comments.facebook_app_secret":"","global.comments.twitter_enable":"0","global.comments.twitter_consumer_key":"","global.comments.twitter_consumer_secret":"","global.comments.akismet_enable":"0","global.comments.akismet_api_key":"","global.comments.mollom_enable":"0","global.comments.mollom_public_key":"","global.comments.mollom_private_key":"","global.comments.blacklist":""}'),
(5, 'Bussiness Directory', 'bisnis-katalog', 'business', '', '{"group":"business","template":"default","global.config.items_per_page":"15","global.config.item_order":"alpha","global.config.alpha_index":"2","global.config.show_feed_link":"0","global.config.feed_title":"","global.config.alternate_feed_link":"","global.template.show_alpha_index":"1","global.template.show_title":"1","global.template.show_description":"1","global.template.show_image":"1","global.template.alignment":"left","global.template.categories_cols":"4","global.template.categories_order":"1","global.template.show_categories_titles":"1","global.template.show_categories_item_count":"1","global.template.show_categories_descriptions":"1","global.template.show_categories_images":"1","global.template.show_sub_categories":"1","global.template.show_sub_categories_item_count":"1","global.template.items_cols":"2","global.template.show_items_titles":"1","global.template.items_media_alignment":"left","global.template.item_sidebar_alignment":"right","global.comments.enable_comments":"1","global.comments.require_name_and_mail":"1","global.comments.registered_users_only":"0","global.comments.approved":"0","global.comments.time_between_user_posts":"120","global.comments.email_notification":"","global.comments.email_reply_notification":"0","global.comments.avatar":"1","global.comments.order":"ASC","global.comments.max_depth":"5","global.comments.facebook_enable":"0","global.comments.facebook_app_id":"","global.comments.facebook_app_secret":"","global.comments.twitter_enable":"0","global.comments.twitter_consumer_key":"","global.comments.twitter_consumer_secret":"","global.comments.akismet_enable":"0","global.comments.akismet_api_key":"","global.comments.mollom_enable":"0","global.comments.mollom_public_key":"","global.comments.mollom_private_key":"","global.comments.blacklist":""}'),
(6, 'Halaman Statis', 'halaman-statis', 'page', '', '{"group":"page","template":"default","global.template.item_media_alignment":"right","global.template.show_item_meta":"1","global.template.show_item_related":"1","global.comments.enable_comments":"0","global.comments.require_name_and_mail":"1","global.comments.registered_users_only":"0","global.comments.approved":"0","global.comments.time_between_user_posts":"120","global.comments.email_notification":"","global.comments.email_reply_notification":"0","global.comments.avatar":"1","global.comments.order":"ASC","global.comments.max_depth":"5","global.comments.facebook_enable":"0","global.comments.facebook_app_id":"","global.comments.facebook_app_secret":"","global.comments.twitter_enable":"0","global.comments.twitter_consumer_key":"","global.comments.twitter_consumer_secret":"","global.comments.akismet_enable":"0","global.comments.akismet_api_key":"","global.comments.mollom_enable":"0","global.comments.mollom_public_key":"","global.comments.mollom_private_key":"","global.comments.blacklist":""}'),
(7, 'Cook Book', 'cook-book', 'cookbook', '', '{"group":"cookbook","template":"default","global.config.items_per_page":"15","global.config.item_order":"alpha","global.config.alpha_index":"2","global.config.show_feed_link":"0","global.config.feed_title":"","global.config.alternate_feed_link":"","global.template.show_alpha_index":"1","global.template.show_title":"1","global.template.show_description":"1","global.template.show_image":"1","global.template.alignment":"left","global.template.categories_cols":"4","global.template.categories_order":"1","global.template.show_categories_titles":"1","global.template.show_categories_item_count":"1","global.template.show_categories_descriptions":"1","global.template.show_categories_images":"1","global.template.categories_images_alignment":"left","global.template.show_sub_categories":"1","global.template.show_sub_categories_item_count":"1","global.template.items_cols":"1","global.template.items_media_alignment":"left","global.template.item_media_alignment":"right","global.template.item_sidebar_alignment":"right","global.comments.enable_comments":"1","global.comments.require_name_and_mail":"1","global.comments.registered_users_only":"0","global.comments.approved":"0","global.comments.time_between_user_posts":"120","global.comments.email_notification":"","global.comments.email_reply_notification":"0","global.comments.avatar":"1","global.comments.order":"ASC","global.comments.max_depth":"5","global.comments.facebook_enable":"0","global.comments.facebook_app_id":"","global.comments.facebook_app_secret":"","global.comments.twitter_enable":"0","global.comments.twitter_consumer_key":"","global.comments.twitter_consumer_secret":"","global.comments.akismet_enable":"0","global.comments.akismet_api_key":"","global.comments.mollom_enable":"0","global.comments.mollom_public_key":"","global.comments.mollom_private_key":"","global.comments.blacklist":""}'),
(8, 'Documentation', 'documentation', 'documentation', '', '{"group":"documentation","template":"default","global.config.items_per_page":"15","global.config.item_order":"alpha","global.config.show_feed_link":"1","global.config.feed_title":"","global.config.alternate_feed_link":"","global.template.show_title":"1","global.template.show_description":"1","global.template.show_image":"1","global.template.alignment":"left","global.template.categories_cols":"3","global.template.categories_order":"1","global.template.show_categories_titles":"1","global.template.link_categories_titles":"1","global.template.show_categories_item_count":"1","global.template.show_categories_descriptions":"1","global.template.show_categories_images":"1","global.template.show_sub_categories":"0","global.template.show_sub_categories_item_count":"1","global.template.show_sub_categories_items":"1","global.template.items_cols":"2","global.comments.enable_comments":"1","global.comments.require_name_and_mail":"1","global.comments.registered_users_only":"0","global.comments.approved":"0","global.comments.time_between_user_posts":"120","global.comments.email_notification":"","global.comments.email_reply_notification":"0","global.comments.avatar":"1","global.comments.order":"ASC","global.comments.max_depth":"5","global.comments.facebook_enable":"0","global.comments.facebook_app_id":"","global.comments.facebook_app_secret":"","global.comments.twitter_enable":"0","global.comments.twitter_consumer_key":"","global.comments.twitter_consumer_secret":"","global.comments.akismet_enable":"0","global.comments.akismet_api_key":"","global.comments.mollom_enable":"0","global.comments.mollom_public_key":"","global.comments.mollom_private_key":"","global.comments.blacklist":""}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_category`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISHED_INDEX` (`published`),
  KEY `APPLICATIONID_ID_INDEX` (`published`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_zoo_category`
--

INSERT INTO `jos_zoo_category` (`id`, `application_id`, `name`, `alias`, `description`, `parent`, `ordering`, `published`, `params`) VALUES
(1, 1, 'Library', 'archive', '<p>Arcive article</p>', 0, 1, 1, '{"content.subtitle":"","content.teaser_description":"","content.teaser_image":"","content.teaser_image_width":"","content.teaser_image_height":"","content.image":"","content.image_width":"","content.image_height":"","content.items_subtitle":""}'),
(2, 2, 'Categori Zoo', 'categories-zoo', '<p>Categori Zoo</p>', 0, 1, 1, '{"content.sub_headline":"","content.image":"","content.image_width":"","content.image_height":""}'),
(3, 3, 'This is Categories for Movies', 'this-is-categories-for-movies', '<p>&nbsp;</p>\r\n<p>This is Categories for Movies</p>', 0, 1, 1, '{"content.teaser_description":"","content.teaser_image":"","content.teaser_image_width":"","content.teaser_image_height":"","content.image":"","content.image_width":"","content.image_height":""}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_category_item`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_category_item` (
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`item_id`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `CATEGORYID_INDEX` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_zoo_category_item`
--

INSERT INTO `jos_zoo_category_item` (`category_id`, `item_id`) VALUES
(1, 1),
(2, 3),
(2, 6),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_comment`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `content` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `STATE_INDEX` (`state`),
  KEY `CREATED_INDEX` (`created`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `AUTHOR_INDEX` (`author`),
  KEY `ITEMID_STATE_INDEX` (`item_id`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_item`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `priority` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `searchable` int(11) NOT NULL,
  `elements` longtext NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISH_INDEX` (`publish_up`,`publish_down`),
  KEY `STATE_INDEX` (`state`),
  KEY `ACCESS_INDEX` (`access`),
  KEY `CREATED_BY_INDEX` (`created_by`),
  KEY `NAME_INDEX` (`name`),
  KEY `APPLICATIONID_INDEX` (`application_id`),
  KEY `TYPE_INDEX` (`type`),
  KEY `MULTI_INDEX` (`application_id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `MULTI_INDEX2` (`id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `ID_APPLICATION_INDEX` (`id`,`application_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_zoo_item`
--

INSERT INTO `jos_zoo_item` (`id`, `application_id`, `type`, `name`, `alias`, `created`, `modified`, `modified_by`, `publish_up`, `publish_down`, `priority`, `hits`, `state`, `access`, `created_by`, `created_by_alias`, `searchable`, `elements`, `params`) VALUES
(1, 1, 'file', 'File JPEG', 'article-archive', '2011-09-28 07:44:50', '2011-09-28 08:03:26', 62, '2011-09-28 07:44:50', '0000-00-00 00:00:00', 0, 5, 1, 0, 62, '', 1, '<?xml version="1.0" encoding="utf-8"?>\n<elements>\n<download identifier="f85c494b-2b32-4109-b8c1-083cca2b7db6">\n  <file><![CDATA[images/stories/taking_notes.jpg]]></file>\n  <download_limit><![CDATA[3]]></download_limit>\n  <hits/>\n  <size><![CDATA[3273]]></size>\n</download>\n<text identifier="b9e826b5-e671-4fe8-a447-bf08c8c6b8e4">\n  <value/>\n</text>\n<text identifier="dbb6e295-9609-4fcc-a527-bc6eac248a6a">\n  <value/>\n</text>\n<text identifier="09ab8526-ffd4-434c-ac61-5bef2365b416">\n  <value/>\n</text>\n<text identifier="b6924e9c-b5af-4568-960f-184a68dc35b2">\n  <value><![CDATA[GNU/GPL]]></value>\n</text>\n<textarea identifier="c5121091-6f63-43ad-a86a-136025fe6da0">\n  <value><![CDATA[<p>Download here</p>]]></value>\n</textarea>\n<rating identifier="c2f19082-507f-4778-9ddb-aa2d6889d6be">\n  <votes><![CDATA[1]]></votes>\n  <value><![CDATA[5.0000]]></value>\n</rating>\n</elements>', '{"metadata.description":"","metadata.keywords":"","metadata.robots":"","metadata.author":"","config.enable_comments":"1","config.primary_category":"1"}'),
(3, 2, 'article', 'Item Zoo page', 'item-zoo-page', '2011-09-28 08:11:55', '2011-09-28 08:13:47', 62, '2011-09-28 08:11:55', '0000-00-00 00:00:00', 0, 20, 1, 0, 62, '', 1, '<?xml version="1.0" encoding="utf-8"?>\n<elements>\n<relateditems identifier="fc5a6788-ffae-41d9-a812-3530331fef64"/>\n<text identifier="08795744-c2dc-4a68-8252-4e21c4c4c774">\n  <value/>\n</text>\n<textarea identifier="2e3c9e69-1f9e-4647-8d13-4e88094d2790">\n  <value><![CDATA[<p>&nbsp;</p>\n<p>Lorem ipsum dolar sit amet, cons incidunt ut labore et dolore magn trud exercitation ullamcorpor susc vel eum irure dolor in reprehende dolore eu fugiat nulla pariatur.</p>\n<p>At lupatum delenit aigue duos dolor tempor sunt in culpa qui officia d dereud facils est er expedit distinc peccand quaerer en imigent cupidat. Incita visset, accom ex robore ad quam vis vadisen vlavis confecs nis revinc tae. Ietm hae magnitu dine for super oper mari aggere. Oppidi his mowni bus suifs fortunis desp erate coe magno recipei ban ibi se rursus isdem opport unitel rursus isdem opport loci defen porti busi. Navigandi ad nunc. Que neque pedibus ipsorum, naves ad hunc mod arm aeque, erant fere situs oppi dorum ut facilus. Vada ac desussum aestus exipe aditurn habere ex alto.</p>\n<p>Oppidi his mowni bus suifs fortunis desp erate coe magno recipei ban ibi se rursus isdem opport unitel rursus isdem opport loci defen porti busi. Situs era eod oppi dorum, ut posta. Lorem ipsum dolar sit amet, cons incidunt ut labore et dolore magn trud exercitation ullamcorpor susc vel eum irure dolor in reprehende dolore eu fugiat nulla pariatur. At lupatum delenit aigue duos dolor tempor sunt in culpa qui officia d dereud facils est er expedit distinc peccand quaerer en imigent cupidat.</p>]]></value>\n</textarea>\n<image identifier="cdce6654-4e01-4a7f-9ed6-0407709d904c">\n  <file/>\n  <title/>\n  <link/>\n  <target/>\n  <rel/>\n  <lightbox_image/>\n</image>\n<image identifier="c26feca6-b2d4-47eb-a74d-b067aaae5b90">\n  <file/>\n  <title/>\n  <link/>\n  <target/>\n  <rel/>\n  <lightbox_image/>\n</image>\n<video identifier="ff1ed5b5-4365-457e-98bb-026366028bd7">\n  <file/>\n  <url/>\n  <width/>\n  <height/>\n  <autoplay/>\n</video>\n<socialbookmarks identifier="6af341e4-f0e9-4605-b2a5-60d7a3525a96">\n  <value><![CDATA[1]]></value>\n</socialbookmarks>\n<relateditems identifier="65b7851d-199f-4ac6-95a7-409ad1bca488"/>\n<link identifier="fdcbebaa-e61a-462d-963e-aff74ff95499">\n  <value/>\n  <text/>\n  <target/>\n  <custom_title/>\n  <rel/>\n</link>\n</elements>', '{"metadata.description":"","metadata.keywords":"","metadata.robots":"","metadata.author":"","config.enable_comments":"1","config.primary_category":"2"}'),
(4, 3, 'movie', 'Movie', 'movie', '2011-09-30 07:02:13', '2011-09-30 07:03:53', 62, '2011-09-30 07:02:13', '0000-00-00 00:00:00', 0, 0, 1, 0, 62, '', 1, '<?xml version="1.0" encoding="utf-8"?>\n<elements>\n<image identifier="540aa2ad-9a8d-454d-b915-605b884e76d5">\n  <file/>\n  <title/>\n  <link/>\n  <target/>\n  <rel/>\n  <lightbox_image/>\n</image>\n<text identifier="cec36dd6-ffde-494d-b25c-8e58bff84e22">\n  <value/>\n</text>\n<date identifier="8a220e32-6975-41ec-9c26-4f73f18d47d3">\n  <value/>\n</date>\n<country identifier="40405a26-d781-4f80-86f6-bc8587c59755">\n  <country><![CDATA[AD]]></country>\n</country>\n<text identifier="69057819-0f6e-46ba-a16f-580328c3bfe4">\n  <value/>\n</text>\n<relateditems identifier="3c1156e0-14d2-4e70-8d75-a3a92c93d7b9"/>\n<relateditems identifier="391d1811-250b-4e1f-9e67-a5cbbbbff1b9"/>\n<text identifier="2cb12d98-ceb8-4c15-938f-d51b39256056">\n  <value/>\n</text>\n<link identifier="2a2257fa-56fd-4bdb-8b47-662baba460e4">\n  <value/>\n  <text/>\n  <target/>\n  <custom_title/>\n  <rel/>\n</link>\n<relateditems identifier="f8cadbf4-23f0-479f-929f-15801b7a8442"/>\n<textarea identifier="b40b44c8-a289-46b6-a6da-9f9824714762">\n  <value/>\n</textarea>\n<textarea identifier="fc6f9df9-8604-4ce2-a293-c60089ec6dbc">\n  <value/>\n</textarea>\n<textarea identifier="cad118dc-046d-493a-bc81-54baab5885a4">\n  <value/>\n</textarea>\n<textarea identifier="a015036f-653a-4b94-a57f-c78824688330">\n  <value/>\n</textarea>\n<gallery identifier="7ffdd4bd-bafd-4b2d-9639-b7e3270864f1">\n  <value><![CDATA[food]]></value>\n  <title/>\n</gallery>\n<rating identifier="176cb7b9-307b-44ad-b2d9-964cfcb9abcb">\n  <votes/>\n  <value/>\n</rating>\n</elements>', '{"metadata.description":"","metadata.keywords":"","metadata.robots":"","metadata.author":"","config.enable_comments":"1","config.primary_category":"3"}'),
(5, 4, 'watch', 'Test', 'test', '2011-09-30 07:07:53', '2011-09-30 07:08:23', 62, '2011-09-30 07:07:53', '0000-00-00 00:00:00', 0, 0, 1, 0, 62, '', 1, '<?xml version="1.0" encoding="utf-8"?>\n<elements>\n<textarea identifier="beab45eb-b32a-4766-822d-b3fb72b5b1d4">\n  <value/>\n</textarea>\n<textarea identifier="83ba7366-d126-40f0-923e-3e7a94f0e773">\n  <value/>\n</textarea>\n<image identifier="c0794696-a5d2-4df9-b20f-f23b0f94a41b">\n  <file/>\n  <title/>\n  <link/>\n  <target/>\n  <rel/>\n  <lightbox_image/>\n</image>\n<image identifier="246e955a-5a57-4ad0-ad8c-c15fc7bfccb6">\n  <file/>\n  <title/>\n  <link/>\n  <target/>\n  <rel/>\n  <lightbox_image/>\n</image>\n<gallery identifier="08416e3c-059f-4f0c-bbb1-82b871d1c021">\n  <value/>\n  <title/>\n</gallery>\n<select identifier="43427945-cbdc-4c12-949a-7963d110e717">\n  <option/>\n</select>\n<select identifier="50f16087-b037-44b9-adae-e5db6a8c917a">\n  <option/>\n</select>\n<select identifier="32912cfc-2abf-4409-8160-5a4a2c068f9d">\n  <option/>\n</select>\n<rating identifier="fff9519f-3b36-4df5-8722-17db9f2ea31c">\n  <votes/>\n  <value/>\n</rating>\n<socialbookmarks identifier="00e1df62-828d-42f5-a1a6-a89d553d4934">\n  <value><![CDATA[1]]></value>\n</socialbookmarks>\n<relateditems identifier="64c188a6-cf2f-4895-8879-8b67a58b6780"/>\n</elements>', '{"metadata.description":"","metadata.keywords":"","metadata.robots":"","metadata.author":"","config.enable_comments":"1","config.primary_category":""}'),
(6, 2, 'article', 'Zoo blog', 'zoo-blog', '2011-09-30 07:34:48', '2011-09-30 07:35:15', 62, '2011-09-30 07:34:48', '0000-00-00 00:00:00', 0, 17, 1, 0, 62, '', 1, '<?xml version="1.0" encoding="utf-8"?>\n<elements>\n<relateditems identifier="fc5a6788-ffae-41d9-a812-3530331fef64"/>\n<text identifier="08795744-c2dc-4a68-8252-4e21c4c4c774">\n  <value><![CDATA[Test]]></value>\n</text>\n<textarea identifier="2e3c9e69-1f9e-4647-8d13-4e88094d2790">\n  <value><![CDATA[<p>Test</p>]]></value>\n</textarea>\n<image identifier="cdce6654-4e01-4a7f-9ed6-0407709d904c">\n  <file/>\n  <title/>\n  <link/>\n  <target/>\n  <rel/>\n  <lightbox_image/>\n</image>\n<image identifier="c26feca6-b2d4-47eb-a74d-b067aaae5b90">\n  <file/>\n  <title/>\n  <link/>\n  <target/>\n  <rel/>\n  <lightbox_image/>\n</image>\n<video identifier="ff1ed5b5-4365-457e-98bb-026366028bd7">\n  <file/>\n  <url/>\n  <width/>\n  <height/>\n  <autoplay/>\n</video>\n<socialbookmarks identifier="6af341e4-f0e9-4605-b2a5-60d7a3525a96">\n  <value><![CDATA[1]]></value>\n</socialbookmarks>\n<relateditems identifier="65b7851d-199f-4ac6-95a7-409ad1bca488"/>\n<link identifier="fdcbebaa-e61a-462d-963e-aff74ff95499">\n  <value/>\n  <text/>\n  <target/>\n  <custom_title/>\n  <rel/>\n</link>\n</elements>', '{"metadata.description":"","metadata.keywords":"","metadata.robots":"","metadata.author":"","config.enable_comments":"1","config.primary_category":"2"}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_rating`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` tinyint(4) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_zoo_rating`
--

INSERT INTO `jos_zoo_rating` (`id`, `item_id`, `element_id`, `user_id`, `value`, `ip`, `created`) VALUES
(1, 1, 'c2f19082-507f-4778-9ddb-aa2d6889d6be', 0, 5, '110.138.31.24', '2011-09-28 07:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_search_index`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_search_index` (
  `item_id` int(11) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`item_id`,`element_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_zoo_search_index`
--

INSERT INTO `jos_zoo_search_index` (`item_id`, `element_id`, `value`) VALUES
(1, 'c5121091-6f63-43ad-a86a-136025fe6da0', 'Download here'),
(1, 'b6924e9c-b5af-4568-960f-184a68dc35b2', 'GNU/GPL'),
(3, '2e3c9e69-1f9e-4647-8d13-4e88094d2790', ' \r\nLorem ipsum dolar sit amet, cons incidunt ut labore et dolore magn trud exercitation ullamcorpor susc vel eum irure dolor in reprehende dolore eu fugiat nulla pariatur.\r\nAt lupatum delenit aigue duos dolor tempor sunt in culpa qui officia d dereud facils est er expedit distinc peccand quaerer en imigent cupidat. Incita visset, accom ex robore ad quam vis vadisen vlavis confecs nis revinc tae. Ietm hae magnitu dine for super oper mari aggere. Oppidi his mowni bus suifs fortunis desp erate coe magno recipei ban ibi se rursus isdem opport unitel rursus isdem opport loci defen porti busi. Navigandi ad nunc. Que neque pedibus ipsorum, naves ad hunc mod arm aeque, erant fere situs oppi dorum ut facilus. Vada ac desussum aestus exipe aditurn habere ex alto.\r\nOppidi his mowni bus suifs fortunis desp erate coe magno recipei ban ibi se rursus isdem opport unitel rursus isdem opport loci defen porti busi. Situs era eod oppi dorum, ut posta. Lorem ipsum dolar sit amet, cons incidunt ut labore et dolore magn trud exercitation ullamcorpor susc vel eum irure dolor in reprehende dolore eu fugiat nulla pariatur. At lupatum delenit aigue duos dolor tempor sunt in culpa qui officia d dereud facils est er expedit distinc peccand quaerer en imigent cupidat.'),
(4, '40405a26-d781-4f80-86f6-bc8587c59755', 'Andorra'),
(6, '08795744-c2dc-4a68-8252-4e21c4c4c774', 'Test'),
(6, '2e3c9e69-1f9e-4647-8d13-4e88094d2790', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_submission`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_tag`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_tag` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_id`,`name`),
  UNIQUE KEY `NAME_ITEMID_INDEX` (`name`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jos_zoo_version`
--

CREATE TABLE IF NOT EXISTS `jos_zoo_version` (
  `version` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_zoo_version`
--

INSERT INTO `jos_zoo_version` (`version`) VALUES
('2.4.11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
