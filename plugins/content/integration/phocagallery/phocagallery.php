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


/**
 * Integration - Phoca Gallery
 * @version	3.0.0 RC4
 *
 */
class phocagalleryWebGalleryIntegration {

	private $match	=	'';
	
	/**
	 * Constructor
	 * 
	 * @param 	string		$match
	 * @return 	void
	 */
	public function __construct($match = '') {
		$this->match = $match;
	}
	
	/**
	 * Get Instance
	 * 
	 * @param	string		$match
	 * @return 	instance
	 */
	public function getInstance($match = '') {
		return new phocagalleryWebGalleryIntegration($match);
	}
	
	/**
	 * Check the pre-requirements
	 * 
	 * @return string	Error message.
	 */
	public function preRequirements() {
		$message = '';

		if (!phocagalleryWebGalleryIntegration::phocaInstalled()) {
			$message = JText::_('PLG_CONTENT_CDWEBGALLERY_NO_PHOCA');
		}
		return $message;
	}

	/**
	 * Integration
	 *
	 * @return array	Image set parameters.
	 */
	public function integration() {

		$image_set = array();

		$catid = array_map('trim', explode(',', $this->match));
		JArrayHelper::toInteger($catid);
		
		if ( !class_exists('PhocaGalleryLoader') ) {
		    require_once( JPATH_ADMINISTRATOR.DS.'components'.DS.'com_phocagallery'.DS.'libraries'.DS.'loader.php');
		}
		
		phocagalleryimport('phocagallery.path.path');
		phocagalleryimport('phocagallery.path.route');
		phocagalleryimport('phocagallery.library.library');
		phocagalleryimport('phocagallery.text.text');
		phocagalleryimport('phocagallery.access.access');
		phocagalleryimport('phocagallery.file.file');
		phocagalleryimport('phocagallery.file.filethumbnail');
		phocagalleryimport('phocagallery.image.image');
		phocagalleryimport('phocagallery.image.imagefront');
		phocagalleryimport('phocagallery.render.renderfront');
		phocagalleryimport('phocagallery.render.renderadmin');
		phocagalleryimport('phocagallery.ordering.ordering');
		phocagalleryimport('phocagallery.picasa.picasa');
		
		// PARAMS - direct from Phoca Gallery Global configuration
		$component			= 'com_phocagallery';
		$paramsC			= JComponentHelper::getParams($component);
		
		$tmpl = array();
		$tmpl['imageordering']	= $paramsC->get( 'image_ordering', 9);
		
		if (count($catid) > 0) {
			
			$db = JFactory::getDBO();
			
			$where = '';
			$limit = '';
			
			if ($tmpl['imageordering'] == 9) {
				$imageOrdering = ' ORDER BY a.catid, RAND()'; 
			} else {
				$iOA = PhocaGalleryOrdering::getOrderingString($tmpl['imageordering']);
				$imageOrdering = $iOA['output'];
			}
			
			$query = 'SELECT cc.id, cc.alias as catalias, a.id, a.catid, a.title, a.alias, a.filename, a.description, a.extm, a.exts, a.extw, a.exth, a.extid, a.extl, a.exto,'
				. ' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(\':\', cc.id, cc.alias) ELSE cc.id END as catslug, '
				. ' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug'
				. ' FROM #__phocagallery_categories AS cc'
				. ' LEFT JOIN #__phocagallery AS a ON a.catid = cc.id'
				. ' WHERE a.catid IN('. implode(',', $catid) . ')'
				. ' AND a.published = 1'
				. ' AND a.approved = 1'
				. ' AND cc.published = 1'
				. ' AND cc.approved = 1'
				. $where
				. $imageOrdering
				. $limit;
			
			$db->setQuery($query);
			$images = $db->loadObjectList();
				
			$params = plgContentCdWebGallery::parseIni(dirname(__FILE__));
				
			$n = count( $images );
			for ($i = 0; $i < $n; $i++) {

				$image_size = $params->get('phocagallery_image', 'M');
					
				switch ($image_size) {
					case 'S':
						$imageName = PhocaGalleryFileThumbnail::getThumbnailName ($images[$i]->filename, 'small');
						break;
					case 'M':
						$imageName = PhocaGalleryFileThumbnail::getThumbnailName ($images[$i]->filename, 'medium');
						break;
					case 'O':
						$imageName = $images[$i]->filename;
						break;
					case 'L':
					default:
						$imageName = PhocaGalleryFileThumbnail::getThumbnailName ($images[$i]->filename, 'large');
						break;
				}
				
				$path = PhocaGalleryPath::getPath();
				
				$image_file_path = PhocaGalleryFile::getFileOriginal($images[$i]->filename);
				$img_src = str_replace('../', JURI::base(true) . '/' , $path->image_rel_full . $images[$i]->filename);
				
				$image_set[$i]->img_tag = '';
				$image_set[$i]->img_src = $img_src;
				$image_set[$i]->img_src_path = $image_file_path;
				$image_set[$i]->img_alt = $images[$i]->title;
				$image_set[$i]->img_title = strip_tags($images[$i]->description);
				$image_set[$i]->thumb_name = basename($imageName->abs);
				$image_set[$i]->thumb_path = JPath::clean($imageName->abs);
				$image_set[$i]->thumb_src = str_replace('../', JURI::base(true) . '/' , $imageName->rel);
				
				$imagesize = getimagesize($image_set[$i]->thumb_path);
				$image_set[$i]->thumb_width = $imagesize[0];
				$image_set[$i]->thumb_height = $imagesize[1];
			}
		}
		return $image_set;
	}

	/**
	 * Check if PhocaGallery is installed
	 *
	 * @return boolean	True if exists.
	 */
	public function phocaInstalled() {
		if (JComponentHelper::isEnabled('com_phocagallery', true)) return true;
		return false;
	}

}

?>