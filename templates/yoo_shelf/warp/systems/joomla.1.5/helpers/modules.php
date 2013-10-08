<?php
/**
* @package   Warp Theme Framework
* @file      modules.php
* @version   6.0.7
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

/*
	Class: ModulesWarpHelper
		Module helper class, count/render modules
*/
class ModulesWarpHelper extends WarpHelper {

    /*
		Variable: _document
			Document.
    */
	protected $_document;
	
    /*
		Variable: _renderer
			Module renderer.
    */
	protected $_renderer;

	/*
		Function: Constructor
			Class Constructor.
	*/
	public function __construct() {
		parent::__construct();

		// init vars
		$this->_document = JFactory::getDocument();
		$this->_renderer = $this->_document->loadRenderer('module');
	}

	/*
		Function: count
			Retrieve the active module count at a position

		Returns:
			Int
	*/
	public function count($position) {
		return $this->_document->countModules($position);
	}

	/*
		Function: render
			Shortcut to render a position

		Returns:
			String
	*/
	public function render($position, $args = array()) {

		// set position in arguments
		$args['position'] = $position;

		return $this['template']->render('modules', $args);
	}

	/*
		Function: load
			Retrieve a module objects of a position

		Returns:
			Array
	*/
	public function load($position) {

		// init vars
		$modules = JModuleHelper::getModules($position);

		// set params, force no style
		$params['style'] = 'none';

		// get modules content
		foreach ($modules as $module)  {
			$module->parameter = new JParameter($module->params);
			$module->menu = $module->module == 'mod_mainmenu';
			$module->content = $this->_renderer->render($module, $params);
		}

		return $modules;
	}

}