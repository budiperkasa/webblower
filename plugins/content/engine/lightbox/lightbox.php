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


class lightboxWebGalleryEngine {
	
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
			$instance[$instance_signature] = new lightboxWebGalleryEngine($params);
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
	 * Add script declaration to header
	 * 
	 * @param $params
	 * @return string
	 */
	public function addScriptDeclaration() {
		
		$enginefolder = plgContentCdWebGallery::engineFolder();
		
		$random_id = $this->params->get('id', 0);;
		
		$script = '
		<!--
		jQuery(document).ready(function($){
			$(\'a[rel*=webgallery_lightbox_' . $random_id . ']\').lightBox({
				overlayOpacity: 0.6,
				imageLoading: \'' . $enginefolder . '/images/lightbox-ico-loading.gif\',
				imageBtnClose: \'' . $enginefolder . '/images/lightbox-btn-close.gif\',
				imageBtnPrev: \'' . $enginefolder . '/images/lightbox-btn-prev.gif\',
				imageBtnNext: \'' . $enginefolder . '/images/lightbox-btn-next.gif\',
				imageBlank: \'' . $enginefolder . '/images/lightbox-blank.gif\',
				containerResizeSpeed: 400,
				txtImage: \'\',
				txtOf: \'-\'
			});
		});
		//-->';

		return $script;
	}

	/**
	 * Return tag array
	 * 
	 * @param $image_set
	 * 
	 * @return array
	 */
	public function tag($image_set) {
		
		$rel_tag = 'webgallery_lightbox_' . $this->params->get('id', 0);
		
		foreach($image_set as $image) {
			$image->a = str_replace('></a>', ' rel="' . $rel_tag . '"></a>', $image->a);
		}
		
		return $image_set;
	}
	
}

?>