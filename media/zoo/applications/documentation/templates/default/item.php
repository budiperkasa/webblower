<?php
/**
* @package   ZOO Component
* @file      item.php
* @version   2.4.11 July 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// include assets css/js
if (strtolower(substr($GLOBALS[($this->app->joomla->isVersion('1.5') ? 'mainframe' : 'app')]->getTemplate(), 0, 3)) != 'yoo') {
	$this->app->document->addStylesheet('assets:css/reset.css');
}
$this->app->document->addStylesheet($this->template->resource.'assets/css/zoo.css');

// include syntaxhighlighter
$this->app->document->addScript($this->template->resource.'assets/js/jquery.beautyOfCode.js');

$css_class = $this->application->getGroup().'-'.$this->template->name;

?>

<div id="yoo-zoo" class="yoo-zoo <?php echo $css_class; ?> <?php echo $css_class.'-'.$this->item->alias; ?>">

	<div class="item">

		<?php echo $this->renderer->render('item.full', array('view' => $this, 'item' => $this->item)); ?>
		<?php echo $this->app->comment->renderComments($this, $this->item); ?>

	</div>

	<script type="text/javascript">
		jQuery(function($) {
			$.beautyOfCode.init({
				baseUrl: '<?php echo $this->app->path->url($this->template->resource.'/assets/js/', false, -1); ?>/',
				theme: 'Default',
				brushes: ['Vb', 'Sql', 'Scala', 'Ruby', 'Python', 'Perl', 'JavaFX', 'Java', 'Erlang', 'Css', 'Cpp', 'Xml', 'JScript', 'CSharp', 'Plain', 'Php']
			});
		});
	</script>

</div>