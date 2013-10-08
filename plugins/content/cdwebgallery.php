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

// Import library dependencies
jimport('joomla.plugin.plugin');
jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');
jimport('joomla.registry.registry');
jimport('joomla.utilities.utility');

class plgContentCdWebGallery extends JPlugin
{
	
	private static	$plgname	=	'';
	
	/**
	 * Constructor
	 *
	 * @access      protected
	 * @param       object  $subject The object to observe
	 * @param       array   $config  An array that holds the plugin configuration
	 * @since       1.5
	 */
	public function __construct( &$subject, $config )
	{
		parent::__construct( $subject, $config );
		
		self::$plgname = $this->_name;

		// define language
		$this->loadLanguage();
	}

	 /**
     * Call onContentPrepare function
     * Method is called by the view.
	 *
	 * @param	string	The context of the content being passed to the plugin.
	 * @param	object	The content object.  Note $article->text is also available
	 * @param	object	The content params
	 * @param	int		The 'page' number
	 * @since	1.6
	 */
	public function onContentPrepare( $context, &$article, &$params, $page = 0 )
	{
		if (!$this->gdEnabled()) {
			JError::raiseNotice('', JText::_('PLG_CONTENT_CDWEBGALLERY_GD_NOT_INSTALLED'));
			return false;
		}
		
		$expressionlist = JFolder::folders($this->absPath() . DS . 'plugins' . DS . 'content' . DS . 'cdwebgallery' . DS . 'expression');
		
		foreach ($expressionlist as $expression) {
			
			$class_file = dirname(__FILE__) . DS . 'expression' . DS . $expression . DS . $expression . '.php';
			
			// expression file doesn't exists, use default - cdwebgallery
			if (!JFile::exists($class_file)) return false;
			
			// set expression class name
			$classname = $expression . 'WebGalleryExpression';
			
			// register class
			JLoader::register($classname, $class_file);
			
			$regex = '';
			
			// call EXPRESSION::regex() function
			// return regular expression (string)
			if (is_callable(array($classname, 'regex'))) {
				$regex = call_user_func(array($classname, 'regex'));
			}
			
			// if no regular expression, run default one
			if (!$regex) $regex = "#{webgallery(?:\s?(.*?)?)?}(.*?){/webgallery}#is";
			
			if (preg_match($regex, $article->text)) {
				// call EXPRESSION::callback() function
				if (is_callable(array($classname, 'callback'))) {
					$article->text = preg_replace_callback($regex, array($classname, 'callback'), $article->text);
				}
			}			
		}
	}
	
	/**
	 * Check if GD library is enabled
	 * 
	 * @return	boolean
	 */
	public function gdEnabled()
	{
		return extension_loaded('gd');
	}
	
	/**
	 * Process and save overrides
	 * 
	 * @param 	string	$string
	 * @return 	object
	 */
	public function overrides( $string = ' ')
	{
		
		// replace quote and space for line break (INI format)
		$string = str_replace("\" ", "\"\n", $string);
		
		$attributes = new JRegistry(JUtility::parseAttributes($string));
		
		/*
		$params = new stdClass();
		$params->integration = null;
		$params->title = null;
		$params->theme = null;
		$params->engine = null;
		$params->pagination = null;
		$params->watermark = null;
		$params->ordering = null;
		$params->width = null;
		$params->height = null;
		$params->thumbnail_title = null;
		$params->indent = null;
		*/
		
		// integration
		$integration = $attributes->get('integration', '');
		if (!$integration) {
			// no integration specified, use default one - cdwebgallery
			$integration = plgContentCdWebGallery::pluginParams('integration', 'cdwebgallery');
			if ($integration === '-1') $integration = 'cdwebgallery';
			
			$attributes->set('integration', $integration);
		}
		
		// set title
		$display_gal_title = plgContentCdWebGallery::pluginParams('display_gal_title', 0);
		
		$title = '';
		if ($display_gal_title) {
			$title = $attributes->get('title', '');
		}
		$attributes->set('title', $title);
		
		// load theme
		$theme = $attributes->get('theme', '');
		if ($theme) {
			if (!plgContentCdWebGallery::checkTheme($theme)) $theme = 'default';
		} else {
			$theme = plgContentCdWebGallery::pluginParams('theme', 'default');
			if ($theme === '-1' or !plgContentCdWebGallery::checkTheme($theme)) {
				$theme = 'default';
			}
			
			$attributes->set('theme', $theme);
		}
		
		// load engine class file
		$engine = $attributes->get('engine', '');
		if ($engine) {
			if (!plgContentCdWebGallery::checkEngine($engine)) $engine = 'popup';
		} else {
			$engine = plgContentCdWebGallery::pluginParams('engine', 'popup');
			if ($engine == '-1' or !plgContentCdWebGallery::checkEngine($engine)) $engine = 'popup';
			
			$attributes->set('engine', $engine);
		}
		
		// pagination
		$pagination = $attributes->get('pagination', '');
		if (!$pagination) {
			$pagination = (int) plgContentCdWebGallery::pluginParams('pagination', 0);
		}
		$attributes->set('pagination', (int)$pagination);
		
		// set watermark
		$watermark = $attributes->get('watermark', '');
		if ($watermark) {
			$watermark = ($watermark === 'yes' ? 1 : 0);
		} else {
			$watermark = plgContentCdWebGallery::pluginParams('watermark', 1);
		}
		$attributes->set('watermark', $watermark);
		
		// add random id
		$attributes->set('id', mt_rand(1, 1000));
		
		// get ordering - directory integration
		$ordering = $attributes->get('ordering', 0);
		
		switch (strtolower($ordering)) {
			case 'asc':
				$ordering = 1;
				break;
			case 'desc':
				$ordering = -1;
				break;
			default:
				$ordering = 0;
				break;
		}
		
		$attributes->set('ordering', $ordering);
		
		// width
		$width_override = $attributes->get('width', '');
		if (!$width_override) {
			$width = plgContentCdWebGallery::pluginParams('thumb_width', 100);
			$attributes->set('width', $width);
		}
		
		// height
		$height_override = $attributes->get('height', '');
		if (!$height_override) {
			$height = plgContentCdWebGallery::pluginParams('thumb_height', 100);
			$attributes->set('height', $height);
		}
		
		if ($width_override and !$height_override) {
			$attributes->set('height', 0);
		}
		
		if ($height_override and !$width_override) {
			$attributes->set('width', 0);
		}
		
		// thumbnail_title (alt)
		$thumbnail_title = $attributes->get('thumbnail_title', '');
		if ($thumbnail_title) {
			$thumbnail_title = ($thumbnail_title === 'yes' ? 1 : 0);
		} else {
			$thumbnail_title = plgContentCdWebGallery::pluginParams('thumbnail_title', 1);
		}
		
		$attributes->set('thumbnail_title', (int) $thumbnail_title);
		
		// thumbnails indent (wrap for centering) 
		$indent = $attributes->get('indent', '');
		if ($indent) {
			$indent = ($indent ? $indent : false);
		} else {
			$indent = false;
		}
		
		$attributes->set('indent', $indent);
		
		
		// show only first image from group
		$only_first = $attributes->get('only_first', '');
		
		if ($only_first) {
			$only_first = ($only_first === 'yes' ? 1 : 0);
		} else {
			$only_first = plgContentCdWebGallery::pluginParams('only_first', 1);
		}
		
		$attributes->set('only_first', (int) $only_first);
		
		// save and return created params
		if (plgContentCdWebGallery::saveOptions($attributes)) {
			return $attributes;
		}
		
		return new JRegistry(null);
	}

	/**
	 * Check it user inserted $theme (via preg_match function) exists
	 * 
	 * @param 	string		$theme
	 * @return 	boolean		True if theme exists.
	 */
	public function checkTheme( $theme = '' )
	{
		if (!$theme) return false;
		jimport('joomla.filesystem.folder');
		$list = array_map('strtolower', JFolder::folders(dirname(__FILE__) . DS . 'theme'));

		if (in_array(strtolower($theme), $list)) return true;
		return false;
	}

	/**
	 * Check it user inserted $engine (via preg_match function) exists
	 * 
	 * @param 	string		$engine
	 * @return 	boolean		True if engine exists.
	 */
	public function checkEngine( $engine )
	{
		if (!$engine) return false;
		jimport('joomla.filesystem.folder');
		$list = array_map('strtolower', JFolder::folders(dirname(__FILE__) . DS . 'engine'));
		
		if (in_array(strtolower($engine), $list)) return true;
		return false;
	}

	/**
	 * Create a thumbnail
	 * 
	 * @param 	array	$image_set
	 * @return 	array
	 */
	public function createThumbnails( $image_set = array() )
	{
		
		// load thumbnail.class.php file
		require_once(dirname(__FILE__) . DS . 'helper' . DS . 'webgallery.class.php');

		$thumb_cache_dir = plgContentCdWebGallery::cacheDir();
		
		$outputFormat = plgContentCdWebGallery::pluginParams('thumb_output', 'JPG');
		
		$jpg_quality = plgContentCdWebGallery::pluginParams('jpg_quality', 70);
		
		$thumb_width = plgContentCdWebGallery::options('width', 0);
		$thumb_height = plgContentCdWebGallery::options('height', 0);
		
		$watermark_image = plgContentCdWebGallery::pluginParams('watermark_name', 'magnify.png');
		
		$watermark_image_path = dirname(__FILE__) . DS . 'images' . DS . 'magnify' . DS . $watermark_image;
		$watermark_valign = plgContentCdWebGallery::pluginParams('watermark_valign', 'BOTTOM');
		$watermark_halign = plgContentCdWebGallery::pluginParams('watermark_halign', 'RIGHT');

		$thumbnail_name_array = array();
		
		$thumb_prefix = 'thumb_';
		
		$watermark = plgContentCdWebGallery::options('watermark');
		
		foreach ($image_set as $image) {
			$image_src = $image->img_src;
				
			$image_filename = basename($image_src);
				
			$image_abs_path = $image->img_src_path;
			
			$thumbnail_name = $image_filename;
			$thumbnail_name .= '_';
			$thumbnail_name .= md5($image_abs_path);
			if ($thumb_width) {
				$thumbnail_name .= '_';
				$thumbnail_name .= 'w' . $thumb_width;
			}
			if ($thumb_height) {
				$thumbnail_name .= '_';
				$thumbnail_name .= 'h' . $thumb_height;
			}
			$thumbnail_name .= '_';
			$thumbnail_name .= 'wm' . $watermark;
			$thumbnail_name .= '.';
			$thumbnail_name .= strtolower($outputFormat);

			$thumbnail_path = $thumb_cache_dir . DS . $thumbnail_name;
			
			// if thumbnail already exists, return
			if (!JFile::exists($thumbnail_path)) {
				
				// create a thumbnail
				$thumb_class = new webGalleryThumbnail($image_abs_path);
				$thumb_class->output_format = $outputFormat;

				if (strtolower($outputFormat) == 'jpg') {
					$thumb_class->quality = $jpg_quality;
				}

				if ($watermark) {
					$thumb_class->img_watermark = $watermark_image_path;
					$thumb_class->img_watermark_Valing = $watermark_valign;
					$thumb_class->img_watermark_Haling = $watermark_halign;
				}
				if ($thumb_width and $thumb_height) {
					$thumb_class->size($thumb_width, $thumb_height);
				} else {
					if ($thumb_width) {
						$thumb_class->size_width($thumb_width); // thumbnail width
					}
					if ($thumb_height) {
						$thumb_class->size_height($thumb_height); // thumbnail height
					}
				}
				
				$thumb_class->process(); // create thumbnail
				
				$saved_img = $thumb_class->save($thumbnail_path);
				// write generate thumbnail via Joomla! FTP
				if ($saved_img) JFile::write($thumbnail_path, $saved_img);
			}
			
			if (JFile::exists($thumbnail_path)) {
				$thumbnail_name_array []= $thumbnail_name;
			}
		}
		
		return $thumbnail_name_array;
	}
	
	/**
	 * Tag
	 * 
	 * @param	array	$image_set
	 * @return 	array
	 */
	public function tag( $image_set = array() )
	{
		$options = plgContentCdWebGallery::options('all');
		
		$random_id = $options->get('id', 0);
		
		$tag_array = array();
		
		$i = 0;
		
		foreach($image_set as $image) {
			
			$thumb_src_path = (isset($image->thumb_src) ? $image->thumb_src : 'plugins/content/cdwebgallery/images/no-thumbnail.png');
			
			$thumb_width = (isset($image->thumb_width) ? $image->thumb_width : 100);
			$thumb_height = (isset($image->thumb_height) ? $image->thumb_height : 100);
			
			$thumb_alt = (isset($image->img_alt) ? $image->img_alt : '');
			$thumb_title = (isset($image->img_title) ? $image->img_title : '');
			
			$img_tag = '<img src="' . $thumb_src_path . '" width="' . $thumb_width . '" height="' . $thumb_height . '" alt="' . $thumb_alt . '" title="' . $thumb_title . '" />';
			
			$img_src = (isset($image->img_src) ? $image->img_src : null);
			
			$tag_a = '<a href="' . $img_src . '" title="' . $thumb_title . '"></a>';			
			// add html tag to array items
			
			$tag_array[$i]->img = $image->img_tag;
			
			$tag_array[$i]->img_thumb = $img_tag;
			
			// single theme exception !
			if ($options->get('theme', '') === 'single') {
				$tag_array[$i]->img_thumb = str_replace('src="' . $image->img_src . '"', 'src="' . $image->thumb_src . '"', $image->img_tag);
				$tag_array[$i]->img_thumb = preg_replace('#width="(\d*?)"#is', 'width="' . $image->thumb_width . '"', $tag_array[$i]->img_thumb);
				$tag_array[$i]->img_thumb = preg_replace('#height="(\d*?)"#is', 'height="' . $image->thumb_height . '"', $tag_array[$i]->img_thumb);
			}
			
			$tag_array[$i]->img_src_path = $image->img_src_path;
			$tag_array[$i]->img_title = $thumb_title;
			$tag_array[$i]->img_alt = $thumb_alt;
			$tag_array[$i]->a = $tag_a;
			$tag_array[$i]->title = $thumb_alt;
			
			$i++;
		}
		
		return $tag_array;
	}

	/**
	 * Get attribute from HTML tag (based on regular expression)
	 * 
	 * @param 	$html_tag
	 * @param 	$attr
	 * @return 	string		HMTL attribute
	 */
	public function getAttr( $html_tag = '', $attr = '' )
	{
		preg_match('#' . $attr . '\s?=\s?"(.*?)"#', $html_tag, $attr_value);
		if (isset($attr_value[1])) return $attr_value[1];
		return '';
	}

	/**
	 * Return absolute path to Joomla! root
	 * 
	 * @return string	Path to the Joomla! root directory (absolute path)
	 */
	public function absPath()
	{
		return dirname( dirname( dirname( dirname( __FILE__ ) ) ) );
	}
	
	/**
	 * Cache dir
	 * 
	 * @return string	Path to the cache directory.
	 */
	public function cacheDir( $rel = false )
	{
		jimport('joomla.filesystem.path');
		
		$cachedir = 'cache/plugins/content/cdwebgallery';
		if ($rel) return JURI::root(true) . '/' . $cachedir;
		return JPath::clean(plgContentCdWebGallery::absPath() . DS . $cachedir);
	}

	/**
	 * Retrieve plugin parameters
	 * 
	 * @param 	string	$param
	 * @param 	string	$def_val
	 * @return 	string		Plugin parameter.
	 */
	public function pluginParams( $param = '', $def_val = '' )
	{

		$folder = 'content';
		$plg_name = 'cdwebgallery';

		// load plugin parameters
		$pluginParams = new JRegistry(JPluginHelper::getPlugin($folder, $plg_name)->params);
		
		return $pluginParams->get($param, $def_val);
	}

	/**
	 * Load theme and return IMG and A tags
	 * 
	 * @param 	array	$tags
	 * @return 	string	Theme tag.
	 */
	public function loadTheme( $tags = array() )
	{
		
		$theme = plgContentCdWebGallery::options('theme', 'default');
		
		$document = JFactory::getDocument(); // set document for next usage

		$live_path_abs = JURI::root(true) . '/';
		
		$theme_folder_path = dirname(__FILE__) . DS . 'theme' . DS . $theme;
		
		// set helper.php file
		$theme_class_file = $theme_folder_path . DS . 'helper.php';
		
		$css_files = array();
		$js_files = array();
		
		$params = plgContentCdWebGallery::parseIni($theme_folder_path);
		$overrides = plgContentCdWebGallery::options();
		
		$params->merge($overrides);
		
		if (JFile::exists($theme_class_file)) {
			$classname = $theme . 'WebGalleryTheme';
			
			require_once($theme_class_file);
			
			if (is_callable(array($classname, 'getInstance'))) {
				$getInstance = call_user_func(array($classname, 'getInstance'), $params);
			} else {
				return false;
			}
			
			$run_theme = '';
			
			// call theme::requirements() function
			if (is_callable(array($getInstance, 'preRequirements'))) {
				$run_theme = (string) call_user_func(array($getInstance, 'preRequirements'));
			}
	
			// stop the script if pre-requirements failed
			if (is_string($run_theme) and $run_theme) {
				JError::raiseNotice('', JText::_($run_theme));
				return false;
			}
			
			// call THEME::scriptDeclaration() function
			if (is_callable(array($getInstance, 'addScriptDeclaration'))) {
				
				$scriptDeclaration = call_user_func(array($getInstance, 'addScriptDeclaration'));
				
				if ($scriptDeclaration) $document->addScriptDeclaration($scriptDeclaration);
			}
			
		}
		
		$theme_folder = plgContentCdWebGallery::themeFolder();
		
		// load all CSS styles
		if (!$css_files and JFolder::exists($theme_folder_path . DS . 'css')) {
			$css_files = JFolder::files($theme_folder_path . DS . 'css', '.css$', false);
		}
		if ($css_files) {
			foreach($css_files as $css_file) {
				$document->addStyleSheet($theme_folder . '/css/' . $css_file, 'text/css');
			}
		}
		
		// load all JS files
		if (!$js_files and JFolder::exists($theme_folder_path . DS . 'js')) {
			$js_files = JFolder::files($theme_folder_path . DS . 'js', '.js$', false);
		}
		if ($js_files) {
			foreach($js_files as $js_file) {
				$document->addScript($theme_folder . '/js/' . $js_file);
			}
		}
		
		// call THEME::template() function
		$themed_tag = '';
		$layoutpath = dirname(__FILE__) . DS . 'theme' . DS . $theme . DS . $theme . '.html.php';
		
		if (JFile::exists($layoutpath)) {
			
			// global variables
			$title = $params->get('title', '');
			
			$thumbnail_title = $params->get('thumbnail_title', '');
			$indent = $params->get('indent', '');
			
			// $pagination
			$pagination = '';
			$pagination_template = '';
			
			$limit_per_page = $params->get('pagination', 0);
			if ($limit_per_page and count($tags) > $limit_per_page) {
				$total = count($tags);
				$limitstart = JRequest::getInt(self::$plgname . '_limitstart', null);
				
				if ($limit_per_page) {
					$tags = array_splice($tags, $limitstart, $limit_per_page);
				}
				
				jimport('joomla.html.pagination');
				$pagination = new JPagination($total, $limitstart, $limit_per_page, self::$plgname . '_');
				$pagination_template = plgContentCdWebGallery::paginationTemplate($pagination);
			}
			
			ob_start();
				require($layoutpath); //must be "require" not "require_once"
				$themed_tag .= ob_get_contents();
			ob_end_clean();
		}
		
		return $themed_tag;
	}
	
	/**
	 * Get pagination default template
	 * 
	 * @param 	object	$pagination
	 * @return 	string
	 */
	public function paginationTemplate( $pagination = null )
	{
		if (!is_object($pagination)) return false;
		
		$tmpl = '<div class="' . self::$plgname . '_pagination pagination">';
			$tmpl .= $pagination->getPagesLinks();
			$tmpl .= '<div>';
				$tmpl .= $pagination->getResultsCounter();
			$tmpl .= '</div>';
		$tmpl .= '</div';
		$tmpl .= '<hr class="webgallery_clr" />';
		return $tmpl;
	}

	/**
	 * Save random id session
	 * 
	 * @param 	object	$params
	 * @return 	boolean
	 */
	public function saveOptions( $params = null )
	{
		if (is_null($params)) return false;

		$session = JFactory::getSession();
		$session_name = 'cdWebGalleryOptions';
		
		if ($session->set($session_name, $params)) return true;
		return false;
	}

	/**
	 * Retrieve random options from session
	 * 
	 * @param	string	$mode
	 * @param	string	$default
	 * @return	mixed	integer, string or object
	 */
	public function options( $mode = '', $default = '' )
	{
		$session = JFactory::getSession();
		$session_name = 'cdWebGalleryOptions';
		$session_obj = $session->get($session_name);
		
		$random = $default;
		
		if ($mode === 'all' or !$mode) {
			$random = $session_obj;
		} else {
			$random = $session_obj->get($mode, $default);
		}
		return $random;
	}
	
	/**
	 * Parse INI file and load the settings from file
	 * 
	 * @param 	string	$dir
	 * @param 	string	$filename
	 * @return 	object
	 */
	public function parseIni( $dir = '', $filename = 'params.ini' )
	{
		if (!$dir) $dir = dirname(__FILE__);
		
		$path_to_ini = $dir . DS . $filename;
		
		$data = null;
		if (JFile::exists($path_to_ini)) {
			$data = JFile::read($path_to_ini);
		}
		
		return new JRegistry($data);
	}
	
	/**
	 * Integration routine
	 * 
	 * @param 	string	$match
	 * @return 	array	Image set.
	 */
	public function integration( $match = '' )
	{
		$abspath = plgContentCdWebGallery::absPath() . DS . 'plugins' . DS . 'content';
		
		$integration = plgContentCdWebGallery::options('integration');
		
		$class_file = $abspath . DS . 'cdwebgallery' . DS . 'integration' . DS . $integration . DS . $integration . '.php';
		
		// integration file doesn't exists, use default - cdwebgallery
		if (!JFile::exists($class_file)) {
			JError::raiseNotice('', JText::sprintf('PLG_CONTENT_CDWEBGALLERY_UNKNOWN_INTEGRATION', $integration));
			return false;
		}

		// set integration class name
		$classname = $integration . 'WebGalleryIntegration';
		
		// register class
		JLoader::register($classname, $class_file);
		
		if (is_callable(array($classname, 'getInstance'))) {
			$getInstance = call_user_func(array($classname, 'getInstance'), $match);
		} else {
			return false;
		}
		
		// check the pre-requirements
		$run_integration = '';
		if (is_callable(array($getInstance, 'preRequirements'))) {
			// call INTEGRATION::requirements() function
			$run_integration = call_user_func(array($getInstance, 'preRequirements'));
		}

		// stop the script if pre-requirements failed
		if ($run_integration) {
			JError::raiseNotice('', JText::_($run_integration));
			return false;
		}
		// call INTEGRATION::integration() function
		$image_set = call_user_func(array($getInstance, 'integration'));
		
		return $image_set;
		
		/*
		 $image_set MUST RETURN THE ARRAY WITH OBJECTS AND THE FOLLOWING ITEMS INSIDE
		 NOTE: (the values are just examples)

		 [0] => stdClass Object
		 (
			 [img_tag] => <img style="margin: 5px;" src="images/stories/gallery-demo/single-images/global_config_site_tab_ss.png" alt="Site tab" title="Joomla! global configuration - Site tab" height="114" width="152" />
			 [img_src] => images/stories/gallery-demo/single-images/global_config_site_tab_ss.png
			 [img_src_path] => D:\xampp\htdocs\joomla15\images\stories\gallery-demo\single-images\global_config_site_tab_ss.png
			 [img_alt] => Site tab
			 [img_title] => Joomla! global configuration - Site tab
			 [thumb_name] => thumb_webgallery_100x100_watermark-1_global_config_site_tab_ss.jpg
			 [thumb_path] => D:\xampp\htdocs\joomla15\cache\thumb_webgallery_100x100_watermark-1_global_config_site_tab_ss.jpg
			 [thumb_src] => /joomla15/cache/thumb_webgallery_100x100_watermark-1_global_config_site_tab_ss.jpg
			 [thumb_width] => 120
			 [thumb_height] => 100
		 )
		 */
	}
	
	/**
	 * Engine routine
	 * 
	 * @return 	object
	 */
	public function engine()
	{
		$document = JFactory::getDocument(); // set document for next usage
		
		$abspath = plgContentCdWebGallery::absPath() . DS . 'plugins' . DS . 'content';
		
		$engine = plgContentCdWebGallery::options('engine');
		
		$enginefolder_path = $abspath . DS . 'cdwebgallery' . DS . 'engine' . DS . $engine;
		
		$engine_folder_livepath = plgContentCdWebGallery::engineFolder();
		
		$class_file = $enginefolder_path . DS . $engine . '.php';
		
		if (!JFile::exists($class_file)) return false;
		
		// set engine class name
		$classname = $engine . 'WebGalleryEngine';

		// register class
		require_once($class_file);
		
		if (is_callable(array($classname, 'getInstance'))) {
			$params = plgContentCdWebGallery::parseIni($enginefolder_path);
			$overrides = plgContentCdWebGallery::options();
			
			$params->merge($overrides);
			
			$getInstance = call_user_func(array($classname, 'getInstance'), $params);
		} else {
			return false;
		}
		
		// check the pre-requirements
		$run_engine_preRequirements = '';
		if (is_callable(array($getInstance, 'preRequirements'))) {
			// call ENGINE::requirements() function
			$run_engine_preRequirements = call_user_func(array($getInstance, 'preRequirements'));
		}

		// stop the script if pre-requirements failed
		if ($run_engine_preRequirements) {
			JError::raiseNotice('', JText::_($run_engine_preRequirements));
			return false;
		}
		
		$css_files = array();
		$js_files = array();
		
		// call ENGINE::scriptDeclaration() function
		if (is_callable(array($getInstance, 'addScriptDeclaration'))) {
			
			$scriptDeclaration = (string) call_user_func(array($getInstance, 'addScriptDeclaration'));
			
			if ($scriptDeclaration) {
				$document->addScriptDeclaration($scriptDeclaration);
			}
		}
		
		// load all CSS styles
		if (JFolder::exists($enginefolder_path . DS . 'css')) {
			$css_files = JFolder::files($enginefolder_path . DS . 'css', '.css$', false);
			
			if ($css_files) {
				foreach($css_files as $css_file) {
					$document->addStyleSheet($engine_folder_livepath . '/css/' . $css_file, 'text/css');
				}
			}
		}
		// load all JS files
		if (JFolder::exists($enginefolder_path . DS . 'js')) {
			$js_files = JFolder::files($enginefolder_path . DS . 'js', '.js$', false);
			
			if ($js_files) {
				foreach($js_files as $js_file) {
					$document->addScript($engine_folder_livepath . '/js/' . $js_file);
				}
			}
		}
		
		// call ENGINE::importFiles() function
		static $importFiles_once = 0;
		if (!$importFiles_once and is_callable(array($getInstance, 'importFiles'))) {
			
			$files = (array) call_user_func(array($getInstance, 'importFiles'));
			
			if (isset($files['css']) and $files['css']) {
				foreach($files['css'] as $file_css) {
					$document->addStyleSheet($engine_folder_livepath . '/' . $file_css, 'text/css');
				}
			}
			
			if (isset($files['js']) and $files['js']) {
				foreach($files['js'] as $file_js) {
					$document->addScript($engine_folder_livepath . '/' . $file_js);
				}
			}
			$importFiles_once = 1;
		}
		
		return $getInstance;
	}
	
	/**
	 * Theme Live Path
	 * 
	 * @return 	string	Live Path to the theme folder.
	 */
	public function themeFolder()
	{
		$folder = JURI::root(true) . '/plugins/content/cdwebgallery/theme/' . plgContentCdWebGallery::options('theme');
		if ($folder) return $folder;
		return '';
	}
	
	/**
	 * Engine Live Path
	 * 
	 * @return 	string	Live Path to the engine folder.
	 */
	public function engineFolder()
	{
		$folder = JURI::root(true) . '/plugins/content/cdwebgallery/engine/' . plgContentCdWebGallery::options('engine');
		if ($folder) return $folder;
		return '';
	}
}

?>
