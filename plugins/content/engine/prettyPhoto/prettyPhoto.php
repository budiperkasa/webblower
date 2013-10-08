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


class prettyPhotoWebGalleryEngine {
	
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
			$instance[$instance_signature] = new prettyPhotoWebGalleryEngine($params);
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
		
		// theme
		$opacity = $this->params->get('prettyPhoto_opacity', '0.35');
		$theme = $this->params->get('prettyPhoto_theme', 'light_rounded');
		$modal = ((int)$this->params->get('prettyPhoto_modal', 0) ? 'true' : 'false');
		$hideflash = ((int)$this->params->get('prettyPhoto_hideflash', 0) ? 'true' : 'false');
		$overlay_gallery = ((int)$this->params->get('prettyPhoto_overlay_gallery', 0) === 0 ? 'false' : 'true');
		$social_tools = ((int)$this->params->get('prettyPhoto_social_tools', 0) === 0 ? '' : '<div class="pp_social"><div class="twitter"><a href="http://twitter.com/share" class="twitter-share-button" data-count="none">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script></div><div class="facebook"><iframe src="http://www.facebook.com/plugins/like.php?locale=en_US&href=\'+location.href+\'&amp;layout=button_count&amp;show_faces=true&amp;width=500&amp;action=like&amp;font&amp;colorscheme=light&amp;height=23" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:500px; height:23px;" allowTransparency="true"></iframe></div></div>');
		
		$random_id = $this->params->get('id', 0);
		
		$rel = 'webgallery_prettyPhoto_' . $random_id;
		
		$script = '
		<!--
		jQuery(document).ready(function($){
			$("a[rel*=\''.$rel.'\']").prettyPhoto( {
				animationSpeed: \'normal\',
				opacity: ' . $opacity . ',
				showTitle: false,
				allowresize: true,
				theme: \'' . $theme . '\',
				hideflash: ' . $hideflash . ',
				modal: ' . $modal . ',
				overlay_gallery : ' . $overlay_gallery . ',
				social_tools : ' . ($social_tools ? '\'' . $social_tools . '\'' : 'false') . '
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
		
		$random_id = $this->params->get('id', 0);
		
		$rel_tag = 'webgallery_prettyPhoto_'.$random_id.'[' . $random_id . ']';
		
		foreach($image_set as $image) {
			$image->a = str_replace('></a>', ' rel="' . $rel_tag . '"></a>', $image->a);
		}
		
		return $image_set;
	}
	
}

?>