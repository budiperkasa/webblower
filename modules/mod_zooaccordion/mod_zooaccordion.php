<?php
/**
* @package   ZOO Accordion
* @file      mod_zooaccordion.php
* @version   2.4.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// load mootools
JHTML::_('behavior.mootools');

// load config
require_once(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php');

// count instances
if (!isset($GLOBALS['yoo_accordions'])) {
	$GLOBALS['yoo_accordions'] = 1;
} else {
	$GLOBALS['yoo_accordions']++;
}

$zoo = App::getInstance('zoo');

// load zoo frontend language file
$zoo->system->language->load('com_zoo');

$items = $zoo->zoomodule->getItems($params);

if ($item_count = count($items)) {

	// init vars
	$theme			 = $params->get('theme', 'default');
	$layout			 = $params->get('layout', 'default');
	$open            = $params->get('open', 'first');
	$multiple_open   = $params->get('multiple_open', 0) ? 'true' : 'false';
	$zoo->path->register(dirname(__FILE__), 'mod_zooaccordion');

	// css parameters
	$accordion_id    = 'yoo-accordion-' . $GLOBALS['yoo_accordions'];

	// set renderer
	$renderer = $zoo->renderer->create('item')->addPath(array($zoo->path->path('component.site:'), dirname(__FILE__)));

	include(JModuleHelper::getLayoutPath('mod_zooaccordion', $theme));

	// js parameters
	$javascript = "new YOOaccordion($$('#$accordion_id .toggler'), $$('#$accordion_id .content'), { open: '$open', allowMultipleOpen: $multiple_open });";
	$javascript = "window.addEvent('domready', function(){ $javascript });";

	$zoo->document->addStyleSheet('mod_zooaccordion:mod_zooaccordion.css.php');
	$zoo->document->addScript('mod_zooaccordion:mod_zooaccordion.js');
	$zoo->document->addScriptDeclaration($javascript);

}