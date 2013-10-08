<?php
/**
* @package   Warp Theme Framework
* @file      default.php
* @version   6.0.7
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright 2007 - 2011 YOOtheme GmbH
* @license   YOOtheme Proprietary Use License (http://www.yootheme.com/license)
*/

// add javascript
$warp = Warp::getInstance();
$warp['system']->document->addScript($warp['path']->url('js:search.js'));

?>

<form id="searchbox" action="<?php echo JRoute::_('index.php'); ?>" method="post" role="search">
	<input type="text" value="" name="searchword" placeholder="<?php echo JText::_('search...'); ?>" />
	<button type="reset" value="Reset"></button>
	<input type="hidden" name="task"   value="search" />
	<input type="hidden" name="option" value="com_search" />
</form>

<script type="text/javascript">
jQuery(function($) {
	$('#searchbox input[name=searchword]').search({'url': '<?php echo JRoute::_("index.php?option=com_search&tmpl=raw&type=json&ordering=&searchphrase=all"); ?>', 'param': 'searchword', 'msgResultsHeader': '<?php echo JText::_("Search Results"); ?>', 'msgMoreResults': '<?php echo JText::_("More Results"); ?>', 'msgNoResults': '<?php echo JText::_("No results found"); ?>'}).placeholder();
});
</script>