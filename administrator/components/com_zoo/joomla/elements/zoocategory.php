<?php
/**
* @package   ZOO Component
* @file      zoocategory.php
* @version   2.4.11 July 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

class JElementZooCategory extends JElement {

	var	$_name = 'ZooCategory';

	function fetchElement($name, $value, &$node, $control_name) {

		// load config
		require_once(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php');

		// get app
		$app = App::getInstance('zoo');

		$application = $app->zoo->getApplication();

		// create html
		$options = array();
		$options[] = $app->html->_('select.option', '', '- '.JText::_('Select Category').' -');

		$html[] = '<div id="'.$name.'" class="zoo-categories">';
		$html[] = $app->html->_('zoo.categorylist', $application, $options, $control_name.'['.$name.']', 'size="10"', 'value', 'text', $value);
		$html[] = '</div>';

		return implode("\n", $html);
	}

}