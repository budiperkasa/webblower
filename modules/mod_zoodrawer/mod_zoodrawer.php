<?php
/**
* @package   ZOO Drawer
* @file      mod_zoodrawer.php
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
if (!isset($GLOBALS['yoo_drawers'])) {
	$GLOBALS['yoo_drawers'] = 1;
} else {
	$GLOBALS['yoo_drawers']++;
}

$zoo = App::getInstance('zoo');

// load zoo frontend language file
$zoo->system->language->load('com_zoo');

$items = $zoo->zoomodule->getItems($params);

// load template
if ($item_count = count($items)) {

	// init vars
	$theme			 = $params->get('theme', 'default-v');
	$layout			 = $params->get('layout', 'default');
	$module_height   = $params->get('module_height', '150');
	$item_size       = $params->get('item_size', '220');
	$item_minimized  = $params->get('item_minimized', '90');
	$title           = $params->get('title', 'Title');
	$zoo->path->register(dirname(__FILE__), 'mod_zoodrawer');

	// css parameters
	$drawer_id       = 'yoo-drawer-' . $GLOBALS['yoo_drawers'];

	switch ($theme) {
		// horizontal
		case "photo-h":
			$jslayout              = 'horizontal';
			$item_width          = $item_size;
			$item_height         = $module_height;
			$module_width        = $item_size + ($item_count-1) * $item_minimized;
			$css_item_width      = 'width: ' . $item_width . 'px;';
			$css_item_height     = 'height: ' . $item_height . 'px;';
			$css_module_width    = 'width: ' . $module_width . 'px;';
			$css_module_height   = 'height: ' . $module_height . 'px;';
			// js parameters
			$item_shift          = $item_size - $item_minimized + 10;
			break;

		// vertical
		case "photo-v":
			$jslayout              = 'vertical';
			$item_height         = $item_size;
			$module_height       = $item_size + ($item_count-1) * $item_minimized;
			$css_item_height     = 'height: ' . $item_height . 'px;';
			$css_module_height   = 'height: ' . $module_height . 'px;';
			// js parameters
			$item_shift          = $item_size - $item_minimized + 10;
			break;

		case "default-v":
		default:
			$jslayout              = 'vertical';
			$item_height         = $item_size - 10;
			$module_height       = $item_size + ($item_count-1) * $item_minimized;
			$css_item_height     = 'height: ' . $item_height . 'px;';
			$css_module_height   = 'height: ' . $module_height . 'px;';
			// js parameters
			$item_shift          = $item_size - $item_minimized - 10;
	}

	// set renderer
	$renderer = $zoo->renderer->create('item')->addPath(array($zoo->path->path('component.site:'), dirname(__FILE__)));

	include(JModuleHelper::getLayoutPath('mod_zoodrawer', $theme));

	$javascript = "new YOOdrawer('" . $drawer_id . "', '#" . $drawer_id . " .item', { layout: '" . $jslayout . "', shiftSize: " . $item_shift . " });";
	$javascript = "window.addEvent('domready', function(){ $javascript });";

	$zoo->document->addStyleSheet('mod_zoodrawer:mod_zoodrawer.css.php');
	$zoo->document->addScript('mod_zoodrawer:mod_zoodrawer.js');
	$zoo->document->addScriptDeclaration($javascript);
}