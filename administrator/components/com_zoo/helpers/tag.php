<?php
/**
* @package   ZOO Component
* @file      tag.php
* @version   2.4.11 July 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

/*
	Class: TagHelper
		The general helper Class for tags
*/
class TagHelper extends AppHelper {

	public function loadtags($application_id, $tag) {

		$tags = array();
		if (!empty($tag)) {
			// get tags
			$tag_objects = $this->app->table->tag->getAll($application_id, $tag, '', 'a.name asc');

			foreach($tag_objects as $tag) {
				$tags[] = $tag->name;
			}
		}

		return json_encode($tags);
	}

}
