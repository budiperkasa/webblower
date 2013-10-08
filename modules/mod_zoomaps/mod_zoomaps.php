<?php
/**
* @package   ZOO Maps
* @file      mod_zoomaps.php
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
if (!isset($GLOBALS['yoo_maps'])) {
	$GLOBALS['yoo_maps'] = 1;
} else {
	$GLOBALS['yoo_maps']++;
}

$zoo = App::getInstance('zoo');

// load zoo frontend language file
$zoo->system->language->load('com_zoo');

$items = $zoo->zoomodule->getItems($params);

// load template
if ($item_count = count($items)) {

	// init vars
	$layout			    = $params->get('layout', 'default');
	$location           = $params->get('location', 'Hamburg, Germany');
	$marker_onload		= $params->get('marker_onload', 0);
	$marker_popup       = $params->get('marker_popup', 0);
	$marker_text        = $params->get('marker_text', '');
	$main_icon          = $params->get('main_icon', 'red-dot');
	$other_icon         = $params->get('other_icon', 'blue-dot');
	$zoom_level         = $params->get('zoom_level', 13);
	$map_controls       = $params->get('map_controls', 2);
	$scroll_wheel_zoom  = $params->get('scroll_wheel_zoom', 1);
	$map_type           = $params->get('map_type', 0);
	$type_controls      = $params->get('type_controls', 1);
	$geocode_cache      = $params->get('geocode_cache', 1);
	$directions         = $params->get('directions', 1);
	$directions_dest_up = $params->get('directions_dest_update', 0);
	$locale             = $params->get('locale', 'en');
	$module_width       = $params->get('module_width', 500);
	$module_height      = $params->get('module_height', 400);
	$from_address       = JText::_('FROM_ADDRESS');
	$get_directions     = JText::_('GET_DIRECTIONS');
	$empty              = JText::_('EMPTY');
	$not_found          = JText::_('NOT_FOUND');
	$address_not_found  = JText::_('ADDRESS_NOT_FOUND');
	$zoo->path->register(dirname(__FILE__), 'mod_zoomaps');

	// determine locale
	if (empty($locale) || $locale == 'auto') {
		$locale = $zoo->user->getBrowserDefaultLanguage();
	}

	// init cache
	if (($cache = $zoo->cache->create($zoo->path->path('cache:') . '/geocode_cache.txt')) && !$cache->check()) {
		echo "<div class=\"alert\"><strong>Cache not writable please update the file permissions! (geocode_cache.txt)</strong></div>\n";
		return;
	}

	// get map center coordinates
	try {

		$center = $zoo->googlemaps->locate($location, $cache);

	} catch (GooglemapsHelperException $e) {

		echo "<div class=\"alert\"><strong>({$e})</strong></div>\n";
		return;

	}

	// css parameters
	$maps_id           = 'yoo-maps-' . $GLOBALS['yoo_maps'];
	$css_module_width  = 'width: ' . $module_width . 'px;';
	$css_module_height = 'height: ' . $module_height . 'px;';

	// js parameters
	$messages    = array();
	$maps_var    = 'yoomap' . $GLOBALS['yoo_maps'];
	$javascript  = "var $maps_var = new YOOmaps('" . $maps_id . "', { lat:" . $center['lat'] . ", lng:" . $center['lng'] . ", marker: " . $marker_onload . ", popup: " . $marker_popup . ", text: '" . $zoo->googlemaps->stripText($marker_text) . "', zoom: " . $zoom_level . ", mapCtrl: " . $map_controls . ", zoomWhl: " . $scroll_wheel_zoom . ", mapType: " . $map_type . ", typeCtrl: " . $type_controls . ", directions: " . $directions . ", directionsDestUpdate: " . $directions_dest_up . ", locale: '" . $locale . "', mainIcon:'" . $main_icon . "', otherIcon:'" . $other_icon . "', msgFromAddress: '" . $from_address . "', msgGetDirections: '" . $get_directions . "', msgEmpty: '" . $empty . "', msgNotFound: '" . $not_found . "', msgAddressNotFound: '" . $address_not_found . "' });";


	// set renderer
	$renderer = $zoo->renderer->create('item')->addPath(array($zoo->path->path('component.site:'), dirname(__FILE__)));

	foreach ($items as $item) {
		$elements = $item->getElements();
		foreach ($elements as $element) {
			if (($element->getElementType() == 'googlemaps') && $element->hasValue()) {

				try {

					if ($coordinates = $zoo->googlemaps->locate($element->getElementData()->get('location'), $cache)) {
						$javascript .= "$maps_var.addMarkerLatLng(" . $coordinates['lat'] . ", " . $coordinates['lng'] . ", '" . $zoo->googlemaps->stripText($renderer->render('item.'.$layout, compact('item', 'params'))) . "');";
					}

				} catch (GooglemapsHelperException $e) {

					$messages[]  = JText::_($e);

				}
			}
		}
	}
	if ($cache) $cache->save();

	$javascript = "window.addEvent('load', function() { " . $javascript . " });";

	require(JModuleHelper::getLayoutPath('mod_zoomaps', 'default'));

	$zoo->system->document->addScript('http://maps.google.com/maps/api/js?sensor=false&language='.$locale);
	$zoo->document->addScript('mod_zoomaps:mod_zoomaps.js');
	echo "<script type=\"text/javascript\" defer=\"defer\">\n// <!--\n$javascript\n// -->\n</script>\n";
}