<?php
/**
 * Core Design Web Gallery plugin for Joomla! 1.7
 * @author		Daniel Rataj, <info@greatjoomla.com>
 * @package		Joomla
 * @subpackage	Content
 * @category   	Plugin
 * @version		2.0.2
 * @copyright	Copyright (C) 2007 - 2011 Great Joomla!, http://www.greatjoomla.com
 * @license		http://www.gnu.org/copyleft/gpl.html GNU/GPL 3
 * 
 * This file is part of Great Joomla! extension.   
 * This extension is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This extension is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// no direct access
defined('_JEXEC') or die;


class popupWebGalleryEngine {
	
	private $params = null;
	
	
	/**
	 * Constructor
	 * 
	 * @param 	object		$params
	 * @return 	void
	 */
	public function __construct($params = null) {
		$this->params = $params;
	}
	
	/**
	 * Get Instance
	 * 
	 * @param	object		$params
	 * @return 	instance
	 */
	public function getInstance($params = null) {
		static $instances;
		
		if (!isset($instances)) {
			$instances = array();
		}
		
		$instance_signature = serialize($params);
		
		if (empty($instance[$instance_signature])) {
			$instance[$instance_signature] = new popupWebGalleryEngine($params);
		}
		
		return $instance[$instance_signature];
	}
	
	/**
	 * Check the pre-requirements
	 * 
	 * @return string	Error message.
	 */
	public function preRequirements() {
		if (!class_exists('JScriptegrator')) {
			return JText::_('PLG_CONTENT_CDWEBGALLERY_ENABLE_SCRIPTEGRATOR');
		}
		
		$JScriptegrator = JScriptegrator::getInstance('2.1.0');
		$JScriptegrator->importLibrary(array(
			'jquery'
		));
		if ($error = $JScriptegrator->getError()) {
			return $error;
		}
		
		return '';
	}
	
	/**
	 * Return tag array
	 * 
	 * @param $image_set
	 * 
	 * @return array
	 */
	public function tag($image_set) {
		
		foreach($image_set as $image) {
			$src_dimension = getimagesize($image->img_src_path);
			$image->a = str_replace('></a>', ' rel="webgallery_popup '.$src_dimension[0] . 'x' . $src_dimension[1] . '"></a>', $image->a);
		}
		
		return $image_set;
		
	}
	
}

?>