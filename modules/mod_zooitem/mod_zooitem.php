<?php
/**
* @package   ZOO Item
* @file      mod_zooitem.php
* @version   2.4.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// load config
require_once(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php');

// get app
$zoo = App::getInstance('zoo');

// load zoo frontend language file
$zoo->system->language->load('com_zoo');

// init vars
$path = dirname(__FILE__);

//register base path
$zoo->path->register($path, 'mod_zooitem');

if ($application = $zoo->table->application->get($params->get('application', 0))) {

	$items = $zoo->zoomodule->getItems($params);

	// load template
	if (!empty($items)) {

		// set renderer
		$renderer = $zoo->renderer->create('item')->addPath(array($zoo->path->path('component.site:'), dirname(__FILE__)));

		$layout = $params->get('layout', 'default');

		include(JModuleHelper::getLayoutPath('mod_zooitem', $params->get('theme', 'list-v')));
	}
}